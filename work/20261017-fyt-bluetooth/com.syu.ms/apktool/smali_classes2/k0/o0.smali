.class public Lk0/o0;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static s:I = 0xa

.field public static t:I = -0x2

.field public static u:I = -0x2

.field public static v:I

.field public static w:I


# instance fields
.field public b:Lo1/g0;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:[I

.field public i:I

.field public j:I

.field public k:[[I

.field public l:B

.field public m:Ljava/lang/Runnable;

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    .line 2
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/o0;->b:Lo1/g0;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lk0/o0;->c:I

    const/4 v1, 0x2

    .line 4
    iput v1, p0, Lk0/o0;->d:I

    const/4 v2, 0x3

    .line 5
    iput v2, p0, Lk0/o0;->e:I

    const/4 v3, 0x4

    .line 6
    iput v3, p0, Lk0/o0;->f:I

    const/4 v4, 0x5

    .line 7
    iput v4, p0, Lk0/o0;->g:I

    const/16 v5, 0xc

    new-array v5, v5, [I

    .line 8
    fill-array-data v5, :array_0

    iput-object v5, p0, Lk0/o0;->h:[I

    const/16 v5, 0xff

    .line 9
    iput v5, p0, Lk0/o0;->j:I

    const/4 v5, 0x6

    new-array v5, v5, [[I

    new-array v6, v1, [I

    .line 10
    fill-array-data v6, :array_1

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-array v6, v1, [I

    fill-array-data v6, :array_2

    aput-object v6, v5, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    aput-object v0, v5, v1

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    aput-object v0, v5, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    aput-object v0, v5, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_6

    aput-object v0, v5, v4

    iput-object v5, p0, Lk0/o0;->k:[[I

    .line 11
    iput-byte v7, p0, Lk0/o0;->l:B

    .line 12
    new-instance v0, Lk0/o0$a;

    invoke-direct {v0, p0}, Lk0/o0$a;-><init>(Lk0/o0;)V

    iput-object v0, p0, Lk0/o0;->m:Ljava/lang/Runnable;

    .line 13
    iput v7, p0, Lk0/o0;->n:I

    .line 14
    new-instance v0, Lk0/o0$b;

    invoke-direct {v0, p0}, Lk0/o0$b;-><init>(Lk0/o0;)V

    iput-object v0, p0, Lk0/o0;->o:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lk0/o0$c;

    invoke-direct {v0, p0}, Lk0/o0$c;-><init>(Lk0/o0;)V

    iput-object v0, p0, Lk0/o0;->p:Ljava/lang/Runnable;

    .line 16
    new-instance v0, Lk0/o0$d;

    invoke-direct {v0, p0}, Lk0/o0$d;-><init>(Lk0/o0;)V

    iput-object v0, p0, Lk0/o0;->q:Ljava/lang/Runnable;

    .line 17
    new-instance v0, Lk0/o0$e;

    invoke-direct {v0, p0}, Lk0/o0$e;-><init>(Lk0/o0;)V

    iput-object v0, p0, Lk0/o0;->r:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x258
        0x64
        0x78
        0xc8
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
        0x3e8
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_5
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_6
    .array-data 4
        0xc
        -0x1
    .end array-data
.end method

.method public static synthetic b3(Lk0/o0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/o0;->m:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic c3(Lk0/o0;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/o0;->b:Lo1/g0;

    return-object p0
.end method

.method public static synthetic d3(Lk0/o0;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/o0;->i3(I)V

    return-void
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
    iget-object v0, p0, Lk0/o0;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x1

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->h:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    .line 7
    iget-object v0, p0, Lk0/o0;->b:Lo1/g0;

    sget v1, Lk0/o0;->s:I

    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v0

    sget v1, Lu0/b;->w:I

    invoke-virtual {p0, v0, v1}, Lk0/o0;->f3(II)V

    .line 8
    iget-object v0, p0, Lk0/o0;->b:Lo1/g0;

    sget v1, Lk0/o0;->t:I

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/o0;->j3(I)V

    .line 9
    iget-object v0, p0, Lk0/o0;->b:Lo1/g0;

    sget v1, Lk0/o0;->u:I

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/o0;->h3(I)V

    .line 10
    iget-object v0, p0, Lk0/o0;->b:Lo1/g0;

    const/4 v1, 0x4

    const/4 v4, 0x5

    invoke-virtual {v0, v1, v4}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/o0;->g3(I)V

    .line 11
    iget-object v0, p0, Lk0/o0;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 12
    sget v0, Lk0/nt;->c:I

    if-ne v0, v3, :cond_0

    .line 13
    sget-object v0, Lu0/c;->i:Lo1/y;

    iget-object v1, p0, Lk0/o0;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    :cond_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/o0;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v3, v1, v2

    const/16 v4, -0x18

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v3, v4, :cond_20

    const/16 v4, -0x17

    const/4 v9, 0x4

    if-eq v3, v4, :cond_1f

    const/16 v4, -0x10

    const/4 v10, 0x2

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x31

    const/16 v11, 0x12

    const/16 v13, 0xa

    const/16 v14, 0x10

    const/4 v15, 0x7

    if-eq v3, v4, :cond_16

    const/16 v4, 0x41

    if-eq v3, v4, :cond_15

    const/16 v4, 0x65

    const/4 v12, 0x3

    if-eq v3, v4, :cond_14

    const/16 v5, 0x75

    if-eq v3, v5, :cond_13

    const/16 v5, 0x11

    if-eq v3, v5, :cond_8

    if-eq v3, v11, :cond_6

    const/16 v2, 0x16

    const/16 v5, 0x67

    if-eq v3, v2, :cond_3

    const/16 v2, 0x17

    if-eq v3, v2, :cond_2

    if-eq v3, v5, :cond_1

    const/16 v2, 0x68

    if-eq v3, v2, :cond_0

    goto/16 :goto_b

    :cond_0
    const/16 v2, 0x74

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 2
    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_1
    const/16 v2, 0x7c

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 3
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v12

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v8, [I

    .line 4
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_2
    add-int/lit8 v2, p2, 0x2

    .line 5
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    shl-int/2addr v2, v14

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    or-int/2addr v2, v3

    const/16 v3, 0x6e

    new-array v4, v8, [I

    aput v2, v4, v7

    .line 6
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 7
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0x6

    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    or-int/2addr v2, v3

    const/16 v3, 0x6f

    new-array v4, v8, [I

    aput v2, v4, v7

    .line 8
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 9
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    shl-int/2addr v2, v14

    add-int/lit8 v3, p2, 0x8

    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x9

    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    or-int/2addr v2, v3

    const/16 v3, 0x70

    new-array v4, v8, [I

    aput v2, v4, v7

    .line 10
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xa

    .line 11
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0xb

    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    or-int/2addr v2, v3

    const/16 v3, 0x71

    new-array v4, v8, [I

    aput v2, v4, v7

    .line 12
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xc

    .line 13
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    shl-int/2addr v2, v14

    add-int/lit8 v3, p2, 0xd

    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xe

    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    or-int/2addr v2, v3

    const/16 v3, 0x72

    new-array v4, v8, [I

    aput v2, v4, v7

    .line 14
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xf

    .line 15
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0x10

    aget-byte v1, v1, v3

    and-int/2addr v1, v6

    or-int/2addr v1, v2

    const/16 v2, 0x73

    new-array v3, v8, [I

    aput v1, v3, v7

    .line 16
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_3
    add-int/lit8 v2, p2, 0x2

    .line 17
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    const/16 v3, 0x62

    new-array v9, v8, [I

    aput v2, v9, v7

    .line 18
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 19
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    or-int/2addr v2, v3

    const/16 v3, 0x63

    new-array v9, v8, [I

    aput v2, v9, v7

    .line 20
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 21
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0x6

    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    or-int/2addr v2, v3

    const/16 v3, 0x64

    new-array v9, v8, [I

    aput v2, v9, v7

    .line 22
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 23
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0x8

    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    or-int/2addr v2, v3

    new-array v3, v8, [I

    aput v2, v3, v7

    .line 24
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 25
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    shl-int/2addr v2, v14

    add-int/lit8 v3, p2, 0xa

    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xb

    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    or-int/2addr v2, v3

    const/16 v3, 0x66

    new-array v4, v8, [I

    aput v2, v4, v7

    .line 26
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xc

    .line 27
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0xd

    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    or-int/2addr v2, v3

    new-array v3, v8, [I

    aput v2, v3, v7

    .line 28
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xe

    .line 29
    aget-byte v2, v1, v2

    and-int/lit8 v3, v2, 0x3

    and-int/2addr v3, v6

    const/16 v4, 0x68

    new-array v5, v8, [I

    aput v3, v5, v7

    .line 30
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v3, v2, 0x2

    and-int/2addr v3, v12

    and-int/2addr v3, v6

    const/16 v4, 0x69

    new-array v5, v8, [I

    aput v3, v5, v7

    .line 31
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v3, v2, 0x4

    and-int/2addr v3, v12

    and-int/2addr v3, v6

    const/16 v4, 0x6a

    new-array v5, v8, [I

    aput v3, v5, v7

    .line 32
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v3, v2, 0x6

    and-int/2addr v3, v8

    and-int/2addr v3, v6

    const/16 v4, 0x6b

    new-array v5, v8, [I

    aput v3, v5, v7

    .line 33
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    shr-int/2addr v2, v15

    and-int/2addr v2, v8

    and-int/2addr v2, v6

    const/16 v3, 0x6c

    new-array v4, v8, [I

    aput v2, v4, v7

    .line 34
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xf

    .line 35
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    if-gez v1, :cond_4

    move v13, v7

    goto :goto_0

    :cond_4
    if-le v1, v13, :cond_5

    goto :goto_0

    :cond_5
    move v13, v1

    :goto_0
    const/16 v1, 0x6d

    new-array v2, v8, [I

    .line 36
    iget-object v3, v0, Lk0/o0;->h:[I

    aget v3, v3, v13

    aput v3, v2, v7

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_6
    add-int/lit8 v3, v2, 0x3

    .line 37
    aget-byte v3, v1, v3

    const-string v4, "persist.syu.reversefrontdoor"

    .line 38
    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_7

    new-array v4, v8, [I

    shr-int/lit8 v5, v3, 0x7

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 39
    invoke-static {v8, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v8, [I

    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 40
    invoke-static {v10, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_7
    new-array v4, v8, [I

    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 41
    invoke-static {v8, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v8, [I

    shr-int/lit8 v5, v3, 0x7

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 42
    invoke-static {v10, v4}, Lk0/qt;->y0(I[I)V

    :goto_1
    new-array v4, v8, [I

    shr-int/lit8 v5, v3, 0x5

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 43
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v8, [I

    shr-int/lit8 v5, v3, 0x4

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 44
    invoke-static {v9, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v8, [I

    shr-int/lit8 v5, v3, 0x3

    and-int/2addr v5, v8

    aput v5, v4, v7

    const/4 v5, 0x5

    .line 45
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v8, [I

    shr-int/lit8 v5, v3, 0x2

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 46
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x76

    new-array v5, v8, [I

    shr-int/lit8 v10, v3, 0x1

    and-int/2addr v10, v8

    aput v10, v5, v7

    .line 47
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x77

    new-array v5, v8, [I

    shr-int/2addr v3, v7

    and-int/2addr v3, v8

    aput v3, v5, v7

    .line 48
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x78

    new-array v4, v8, [I

    add-int/2addr v2, v9

    .line 49
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    aput v1, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_8
    const/16 v3, 0x79

    new-array v4, v8, [I

    add-int/2addr v2, v10

    .line 50
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    aput v2, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 51
    aget-byte v3, v1, v2

    .line 52
    sget v4, Ln0/j4;->b:I

    const/16 v5, 0x20

    if-eq v4, v5, :cond_a

    const/4 v5, 0x5

    if-eq v4, v5, :cond_a

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_a

    const/16 v4, 0xc

    if-ne v3, v4, :cond_a

    .line 53
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.syu.canbus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 54
    invoke-static {}, Lo1/u;->k()V

    goto :goto_2

    .line 55
    :cond_9
    invoke-static {}, Lo1/u;->v()I

    .line 56
    :cond_a
    :goto_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 57
    sget v3, Lk0/nt;->c:I

    if-ne v3, v10, :cond_b

    const/16 v3, 0x3fd

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 58
    aget-byte v5, v1, v5

    shr-int/2addr v5, v10

    and-int/2addr v5, v8

    aput v5, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_b
    add-int/lit8 v3, p2, 0x9

    .line 59
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x8

    aget-byte v4, v1, v4

    const/16 v5, 0x1f4

    invoke-static {v3, v4, v8, v5}, Lk0/qt;->l(IIZI)V

    .line 60
    aget-byte v2, v1, v2

    const/4 v3, 0x5

    add-int/lit8 v4, p2, 0x5

    .line 61
    aget-byte v1, v1, v4

    and-int/2addr v2, v6

    .line 62
    iput v2, v0, Lk0/o0;->j:I

    move v2, v7

    .line 63
    :goto_3
    iget-object v3, v0, Lk0/o0;->k:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_d

    .line 64
    iget v4, v0, Lk0/o0;->j:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_c

    if-eqz v4, :cond_d

    .line 65
    iput v2, v0, Lk0/o0;->i:I

    goto :goto_4

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    :goto_4
    and-int/2addr v1, v6

    if-eqz v1, :cond_11

    .line 66
    array-length v4, v3

    if-ge v2, v4, :cond_21

    .line 67
    iget v4, v0, Lk0/o0;->j:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_e

    .line 68
    iget-byte v1, v0, Lk0/o0;->l:B

    if-nez v1, :cond_21

    add-int/2addr v1, v8

    int-to-byte v1, v1

    .line 69
    iput-byte v1, v0, Lk0/o0;->l:B

    .line 70
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 71
    iget-object v1, v0, Lk0/o0;->m:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_b

    :cond_e
    if-ne v1, v8, :cond_10

    .line 72
    sget v1, Lh0/c;->E:I

    if-eq v1, v12, :cond_f

    if-eq v1, v9, :cond_f

    const/4 v2, 0x5

    if-eq v1, v2, :cond_f

    const/4 v1, 0x6

    .line 73
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 74
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_f
    const/16 v1, 0x1a

    .line 75
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 76
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 77
    :cond_10
    :goto_5
    iput v6, v0, Lk0/o0;->i:I

    goto/16 :goto_b

    .line 78
    :cond_11
    iget v1, v0, Lk0/o0;->i:I

    array-length v2, v3

    if-ge v1, v2, :cond_12

    if-eq v1, v6, :cond_12

    .line 79
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 80
    iget-object v1, v0, Lk0/o0;->m:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 81
    iput-byte v7, v0, Lk0/o0;->l:B

    .line 82
    :cond_12
    iput v6, v0, Lk0/o0;->i:I

    goto/16 :goto_b

    :cond_13
    const/16 v2, 0x7f

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 83
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v8, [I

    .line 84
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v12

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v8, [I

    .line 85
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_14
    const/16 v2, 0x7a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 86
    aget-byte v5, v1, v4

    const/4 v6, 0x6

    shr-int/2addr v5, v6

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v8, [I

    .line 87
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v12

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    .line 88
    :cond_15
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_21

    add-int/lit8 v2, p2, 0x2

    .line 89
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lk0/o0;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 90
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lk0/o0;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 91
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lk0/o0;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    const/4 v2, 0x5

    add-int/lit8 v2, p2, 0x5

    .line 92
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    invoke-virtual {v0, v1}, Lk0/o0;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_b

    :cond_16
    add-int/lit8 v2, p2, 0x2

    .line 93
    aget-byte v2, v1, v2

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 94
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v8

    aput v4, v3, v7

    const/16 v4, 0xd

    .line 95
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x3e

    new-array v4, v8, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 96
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v8

    aput v2, v3, v7

    const/16 v2, 0xb

    .line 97
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 98
    aget-byte v2, v1, v2

    new-array v3, v8, [I

    and-int/2addr v2, v14

    if-nez v2, :cond_17

    move v2, v7

    goto :goto_6

    :cond_17
    move v2, v8

    :goto_6
    aput v2, v3, v7

    const/16 v2, 0xc

    .line 99
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 100
    aget-byte v2, v1, v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v2, v7

    move v3, v2

    move v4, v3

    move v5, v4

    goto :goto_8

    :pswitch_1
    move v5, v7

    move v2, v8

    move v3, v2

    goto :goto_7

    :pswitch_2
    move v2, v7

    move v3, v2

    move v4, v3

    move v5, v8

    goto :goto_8

    :pswitch_3
    move v4, v7

    move v5, v4

    move v2, v8

    move v3, v2

    goto :goto_8

    :pswitch_4
    move v2, v7

    move v4, v2

    move v5, v4

    move v3, v8

    goto :goto_8

    :pswitch_5
    move v2, v7

    move v5, v2

    move v3, v8

    :goto_7
    move v4, v3

    goto :goto_8

    :pswitch_6
    move v3, v7

    move v5, v3

    move v2, v8

    move v4, v2

    goto :goto_8

    :pswitch_7
    move v2, v7

    move v3, v2

    move v5, v3

    move v4, v8

    goto :goto_8

    :pswitch_8
    move v3, v7

    move v4, v3

    move v5, v4

    move v2, v8

    :goto_8
    new-array v9, v8, [I

    aput v2, v9, v7

    .line 101
    invoke-static {v11, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v9, v8, [I

    aput v3, v9, v7

    .line 102
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v8, [I

    aput v4, v3, v7

    .line 103
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    aput v5, v2, v7

    .line 104
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 105
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    if-le v2, v15, :cond_18

    goto :goto_9

    :cond_18
    move v15, v2

    :goto_9
    const/16 v2, 0x15

    new-array v3, v8, [I

    aput v15, v3, v7

    .line 106
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 107
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    add-int/lit8 v4, p2, 0x9

    .line 108
    aget-byte v5, v1, v4

    and-int/2addr v5, v6

    const-string v9, "persist.fyt.reversetemp"

    .line 109
    invoke-static {v9, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 110
    aget-byte v3, v1, v4

    and-int/2addr v3, v6

    .line 111
    aget-byte v1, v1, v2

    and-int/lit16 v5, v1, 0xff

    :cond_19
    const/16 v1, 0xfe

    const/16 v2, 0x1b

    if-ne v3, v1, :cond_1a

    new-array v1, v8, [I

    const/4 v3, -0x2

    aput v3, v1, v7

    .line 112
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_1a
    if-ne v3, v6, :cond_1b

    new-array v1, v8, [I

    const/4 v3, -0x3

    aput v3, v1, v7

    .line 113
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_1b
    new-array v1, v8, [I

    and-int/2addr v3, v6

    aput v3, v1, v7

    .line 114
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    :goto_a
    const/16 v1, 0xfe

    const/16 v2, 0x1c

    if-ne v5, v1, :cond_1c

    new-array v1, v8, [I

    const/4 v3, -0x2

    aput v3, v1, v7

    .line 115
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_1c
    if-ne v5, v6, :cond_1d

    new-array v1, v8, [I

    const/4 v3, -0x3

    aput v3, v1, v7

    .line 116
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_1d
    new-array v1, v8, [I

    and-int/lit16 v3, v5, 0xff

    aput v3, v1, v7

    .line 117
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    .line 118
    :cond_1e
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_b

    :cond_1f
    const/16 v2, 0x3f5

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 119
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    sub-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 120
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_20
    const/16 v2, 0x82

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 121
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 122
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 123
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v8, [I

    const/4 v4, 0x5

    add-int/lit8 v4, p2, 0x5

    .line 124
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_21
    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/o0;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/o0;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->i:Lo1/y;

    iget-object v1, p0, Lk0/o0;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/o0;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x88

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
    .locals 10

    const/16 p3, 0x3ed

    const/4 p4, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p3, :cond_9

    const/16 p3, 0x6c

    const/16 v2, 0x6a

    const/4 v3, -0x1

    const/16 v4, 0x7a

    const/16 v5, 0xa

    const/16 v6, 0xe3

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    new-array p1, v7, [I

    aput v6, p1, v1

    aput v9, p1, v0

    const/16 p3, 0x9a

    aput p3, p1, v9

    aput v0, p1, p4

    .line 1
    aget p2, p2, v1

    aput p2, p1, v8

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_7

    .line 2
    :pswitch_1
    invoke-virtual {p0, p2, v0}, Lk0/o0;->e3([II)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 3
    aget p1, p2, v1

    invoke-virtual {p0, p1}, Lk0/o0;->i3(I)V

    goto/16 :goto_7

    :pswitch_2
    if-eqz p2, :cond_c

    .line 4
    array-length p1, p2

    if-le p1, v0, :cond_c

    new-array p1, v7, [I

    aput v6, p1, v1

    aput v9, p1, v0

    const/16 p3, 0xf2

    aput p3, p1, v9

    .line 5
    aget p3, p2, v1

    aput p3, p1, p4

    aget p2, p2, v0

    aput p2, p1, v8

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_7

    :pswitch_3
    new-array p1, v7, [I

    aput v6, p1, v1

    aput v9, p1, v0

    const/16 p3, 0x4b

    aput p3, p1, v9

    aput v8, p1, p4

    .line 6
    aget p2, p2, v1

    aput p2, p1, v8

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_7

    .line 7
    :pswitch_4
    invoke-virtual {p0, p2, v0}, Lk0/o0;->e3([II)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 8
    aget p1, p2, v1

    if-ne p1, v3, :cond_0

    .line 9
    sget p1, Lk0/o0;->t:I

    add-int/2addr p1, v0

    sput p1, Lk0/o0;->t:I

    goto :goto_0

    .line 10
    :cond_0
    sget p1, Lk0/o0;->t:I

    sub-int/2addr p1, v0

    sput p1, Lk0/o0;->t:I

    .line 11
    :goto_0
    sget p1, Lk0/o0;->t:I

    if-lt p1, v5, :cond_1

    .line 12
    sput v5, Lk0/o0;->t:I

    goto :goto_1

    :cond_1
    if-gtz p1, :cond_2

    .line 13
    sput v1, Lk0/o0;->t:I

    .line 14
    :cond_2
    :goto_1
    sget p1, Lk0/o0;->t:I

    invoke-virtual {p0, p1}, Lk0/o0;->j3(I)V

    goto/16 :goto_7

    .line 15
    :pswitch_5
    invoke-virtual {p0, p2, v0}, Lk0/o0;->e3([II)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 16
    aget p1, p2, v1

    if-ne p1, v3, :cond_3

    .line 17
    sget p1, Lk0/o0;->u:I

    add-int/2addr p1, v0

    sput p1, Lk0/o0;->u:I

    goto :goto_2

    .line 18
    :cond_3
    sget p1, Lk0/o0;->u:I

    sub-int/2addr p1, v0

    sput p1, Lk0/o0;->u:I

    .line 19
    :goto_2
    sget p1, Lk0/o0;->u:I

    if-lt p1, v5, :cond_4

    .line 20
    sput v5, Lk0/o0;->u:I

    goto :goto_3

    :cond_4
    if-gtz p1, :cond_5

    .line 21
    sput v1, Lk0/o0;->u:I

    .line 22
    :cond_5
    :goto_3
    sget p1, Lk0/o0;->u:I

    invoke-virtual {p0, p1}, Lk0/o0;->h3(I)V

    goto/16 :goto_7

    .line 23
    :pswitch_6
    invoke-virtual {p0, p2, v0}, Lk0/o0;->e3([II)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 24
    aget p1, p2, v1

    if-ne p1, v3, :cond_6

    .line 25
    sget p1, Lk0/o0;->s:I

    add-int/2addr p1, v0

    sput p1, Lk0/o0;->s:I

    goto :goto_4

    .line 26
    :cond_6
    sget p1, Lk0/o0;->s:I

    sub-int/2addr p1, v0

    sput p1, Lk0/o0;->s:I

    .line 27
    :goto_4
    sget p1, Lk0/o0;->s:I

    if-lt p1, v5, :cond_7

    .line 28
    sput v5, Lk0/o0;->s:I

    goto :goto_5

    :cond_7
    if-gtz p1, :cond_8

    .line 29
    sput v1, Lk0/o0;->s:I

    .line 30
    :cond_8
    :goto_5
    sget p1, Lk0/o0;->s:I

    sget p2, Lu0/b;->w:I

    invoke-virtual {p0, p1, p2}, Lk0/o0;->f3(II)V

    goto/16 :goto_7

    :pswitch_7
    new-array p1, v7, [I

    aput v6, p1, v1

    aput v9, p1, v0

    const/16 p3, 0x6e

    aput p3, p1, v9

    .line 31
    aget p3, p2, v1

    shr-int/lit8 p3, p3, 0x8

    and-int/lit16 p3, p3, 0xff

    aput p3, p1, p4

    aget p2, p2, v1

    and-int/lit16 p2, p2, 0xff

    aput p2, p1, v8

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_7

    :pswitch_8
    new-array p1, v7, [I

    aput v6, p1, v1

    aput v9, p1, v0

    const/16 p3, 0x1b

    aput p3, p1, v9

    .line 32
    aget p3, p2, v1

    shr-int/lit8 p3, p3, 0x8

    and-int/lit16 p3, p3, 0xff

    aput p3, p1, p4

    aget p2, p2, v1

    and-int/lit16 p2, p2, 0xff

    aput p2, p1, v8

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_7

    :pswitch_9
    new-array p1, v7, [I

    aput v6, p1, v1

    aput v9, p1, v0

    aput v4, p1, v9

    aput p4, p1, p4

    .line 33
    aget p2, p2, v1

    aput p2, p1, v8

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_7

    :pswitch_a
    new-array p1, v7, [I

    aput v6, p1, v1

    aput v9, p1, v0

    aput v4, p1, v9

    aput v9, p1, p4

    .line 34
    aget p2, p2, v1

    aput p2, p1, v8

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_7

    :pswitch_b
    new-array p1, v7, [I

    aput v6, p1, v1

    aput v9, p1, v0

    aput v4, p1, v9

    aput v0, p1, p4

    .line 35
    aget p2, p2, v1

    aput p2, p1, v8

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_7

    :pswitch_c
    new-array p1, v7, [I

    aput v6, p1, v1

    aput v9, p1, v0

    const/16 p3, 0x6d

    aput p3, p1, v9

    aput v0, p1, p4

    .line 36
    aget p2, p2, v1

    aput p2, p1, v8

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_7

    :pswitch_d
    new-array p1, v7, [I

    aput v6, p1, v1

    aput v9, p1, v0

    aput p3, p1, v9

    aput v9, p1, p4

    .line 37
    aget p2, p2, v1

    aput p2, p1, v8

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_7

    :pswitch_e
    new-array p1, v7, [I

    aput v6, p1, v1

    aput v9, p1, v0

    aput p3, p1, v9

    aput v0, p1, p4

    .line 38
    aget p2, p2, v1

    aput p2, p1, v8

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_7

    :pswitch_f
    new-array p1, v7, [I

    aput v6, p1, v1

    aput v9, p1, v0

    aput v2, p1, v9

    aput v8, p1, p4

    .line 39
    aget p2, p2, v1

    aput p2, p1, v8

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_7

    :pswitch_10
    new-array p1, v7, [I

    aput v6, p1, v1

    aput v9, p1, v0

    aput v2, p1, v9

    aput p4, p1, p4

    .line 40
    aget p2, p2, v1

    aput p2, p1, v8

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_7

    :cond_9
    if-eqz p2, :cond_c

    .line 41
    array-length p1, p2

    if-lez p1, :cond_c

    .line 42
    aget p1, p2, v1

    add-int/2addr p1, v0

    aput p1, p2, v1

    .line 43
    aget p1, p2, v1

    if-ge p1, v0, :cond_a

    .line 44
    aput v0, p2, v1

    goto :goto_6

    .line 45
    :cond_a
    aget p1, p2, v1

    if-le p1, p4, :cond_b

    .line 46
    aput p4, p2, v1

    .line 47
    :cond_b
    :goto_6
    aget p1, p2, v1

    add-int/2addr p1, p4

    invoke-virtual {p0, p1}, Lk0/o0;->g3(I)V

    :cond_c
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a3(I)I
    .locals 3

    const/16 v0, 0xf

    const/4 v1, 0x3

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method

.method public final e3([II)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    array-length p1, p1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f3(II)V
    .locals 2

    .line 1
    sput p1, Lk0/o0;->s:I

    const/16 v0, 0xa

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const/16 p2, 0xf

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    sub-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0xe

    rsub-int p1, p2, 0xff

    const/16 p2, 0xf2

    .line 2
    invoke-virtual {p0, p2, v1, p1}, Lk0/o0;->k3(III)V

    .line 3
    iget-object p1, p0, Lk0/o0;->b:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/o0;->s:I

    if-eq p1, p2, :cond_1

    .line 4
    iget-object p1, p0, Lk0/o0;->b:Lo1/g0;

    invoke-virtual {p1, v1, p2}, Lo1/g0;->g(II)V

    :cond_1
    return-void
.end method

.method public final g3(I)V
    .locals 4

    .line 1
    sput p1, Lk0/o0;->w:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x2

    aput v3, v0, v1

    const/16 v1, -0xe

    aput v1, v0, v3

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 p1, -0x1

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    iget-object p1, p0, Lk0/o0;->b:Lo1/g0;

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/o0;->w:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/o0;->b:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final h3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/o0;->u:I

    const/16 v0, 0xf2

    const/4 v1, 0x3

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lk0/o0;->k3(III)V

    .line 3
    iget-object p1, p0, Lk0/o0;->b:Lo1/g0;

    const/4 v0, -0x2

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/o0;->u:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/o0;->b:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final i3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/o0;->v:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0x87

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    sget p1, Lk0/o0;->v:I

    const/16 v0, 0xf2

    const/16 v2, 0x10

    invoke-virtual {p0, v0, v2, p1}, Lk0/o0;->k3(III)V

    .line 4
    iget-object p1, p0, Lk0/o0;->b:Lo1/g0;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/o0;->v:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/o0;->b:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final j3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/o0;->t:I

    const/16 v0, 0xf2

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lk0/o0;->k3(III)V

    .line 3
    iget-object p1, p0, Lk0/o0;->b:Lo1/g0;

    const/4 v0, -0x2

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/o0;->t:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/o0;->b:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final k3(III)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    int-to-byte p1, p1

    aput p1, v0, v2

    int-to-byte p1, p2

    const/4 p2, 0x3

    aput p1, v0, p2

    int-to-byte p1, p3

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
