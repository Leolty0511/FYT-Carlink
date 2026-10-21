.class public Lk0/b5;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static l:[I

.field public static m:[I

.field public static n:[I

.field public static o:[I

.field public static p:[I

.field public static q:[I

.field public static r:[I

.field public static s:[I

.field public static t:[I

.field public static u:[I

.field public static v:[I

.field public static w:I


# instance fields
.field public final b:[I

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:Lo1/g0;

.field public final h:I

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x13

    new-array v1, v0, [I

    .line 1
    sput-object v1, Lk0/b5;->l:[I

    new-array v1, v0, [I

    .line 2
    sput-object v1, Lk0/b5;->m:[I

    new-array v1, v0, [I

    .line 3
    sput-object v1, Lk0/b5;->n:[I

    new-array v1, v0, [I

    .line 4
    sput-object v1, Lk0/b5;->o:[I

    new-array v1, v0, [I

    .line 5
    sput-object v1, Lk0/b5;->p:[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 6
    sput-object v1, Lk0/b5;->q:[I

    new-array v1, v0, [I

    .line 7
    sput-object v1, Lk0/b5;->r:[I

    new-array v1, v0, [I

    .line 8
    sput-object v1, Lk0/b5;->s:[I

    new-array v1, v0, [I

    .line 9
    sput-object v1, Lk0/b5;->t:[I

    new-array v1, v0, [I

    .line 10
    sput-object v1, Lk0/b5;->u:[I

    new-array v0, v0, [I

    .line 11
    sput-object v0, Lk0/b5;->v:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xc

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    iput-object v1, p0, Lk0/b5;->b:[I

    const/16 v1, 0xff

    .line 3
    iput v1, p0, Lk0/b5;->e:I

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 4
    fill-array-data v2, :array_1

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v4, 0x4

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/4 v4, 0x7

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v4, 0x8

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v4, 0x9

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v4, 0xa

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_c

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/b5;->f:[[I

    .line 5
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/b5;->g:Lo1/g0;

    .line 6
    iput v3, p0, Lk0/b5;->h:I

    .line 7
    new-instance v0, Lk0/b5$a;

    invoke-direct {v0, p0}, Lk0/b5$a;-><init>(Lk0/b5;)V

    iput-object v0, p0, Lk0/b5;->i:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/b5$b;

    invoke-direct {v0, p0}, Lk0/b5$b;-><init>(Lk0/b5;)V

    iput-object v0, p0, Lk0/b5;->j:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/b5$c;

    invoke-direct {v0, p0}, Lk0/b5$c;-><init>(Lk0/b5;)V

    iput-object v0, p0, Lk0/b5;->k:Ljava/lang/Runnable;

    return-void

    nop

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
        0x3
        -0x1
    .end array-data

    :array_4
    .array-data 4
        0x4
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_7
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_8
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_9
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_a
    .array-data 4
        0xa
        0x5
    .end array-data

    :array_b
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_c
    .array-data 4
        0xc
        -0x1
    .end array-data
.end method

.method public static a3(I)I
    .locals 3

    const/16 v0, 0xf

    const/4 v1, 0x3

    if-eqz p0, :cond_4

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    const/16 v0, 0x9

    :cond_4
    :goto_0
    return v0
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
    iput v1, v0, Lk0/mt;->h:I

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    iget-object v0, p0, Lk0/b5;->g:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 7
    iget-object v0, p0, Lk0/b5;->g:Lo1/g0;

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/b5;->b3(I)V

    .line 8
    sget v0, Lk0/nt;->a:I

    const v2, 0x300a6

    if-ne v0, v2, :cond_0

    .line 9
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/b5;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/b5;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lk0/b5;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 12
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/b5;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 15
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v2, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v2, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x80

    const/16 v5, 0x11

    const/16 v6, 0xf

    const/16 v7, 0x12

    const/16 v11, 0xa

    const/16 v12, 0x10

    const/16 v14, 0x8

    const/4 v15, 0x7

    const/4 v10, 0x4

    const/4 v4, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_25

    const/16 v3, -0x18

    const/16 v13, 0xff

    if-eq v2, v3, :cond_24

    const/16 v3, -0x10

    if-eq v2, v3, :cond_23

    const/16 v3, 0x31

    if-eq v2, v3, :cond_11

    const/16 v3, 0x41

    if-eq v2, v3, :cond_10

    if-eq v2, v5, :cond_6

    if-eq v2, v7, :cond_4

    const/16 v3, 0x16

    if-eq v2, v3, :cond_1

    const/16 v3, 0x17

    if-eq v2, v3, :cond_0

    goto/16 :goto_c

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    shl-int/2addr v2, v12

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    shl-int/2addr v3, v14

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    or-int/2addr v2, v3

    const/16 v3, 0x6e

    new-array v4, v8, [I

    aput v2, v4, v9

    .line 3
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 4
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    shl-int/2addr v2, v14

    add-int/lit8 v3, p2, 0x6

    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    or-int/2addr v2, v3

    const/16 v3, 0x6f

    new-array v4, v8, [I

    aput v2, v4, v9

    .line 5
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 6
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    shl-int/2addr v2, v12

    add-int/lit8 v3, p2, 0x8

    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    shl-int/2addr v3, v14

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x9

    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    or-int/2addr v2, v3

    const/16 v3, 0x70

    new-array v4, v8, [I

    aput v2, v4, v9

    .line 7
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xa

    .line 8
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    shl-int/2addr v2, v14

    add-int/lit8 v3, p2, 0xb

    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    or-int/2addr v2, v3

    const/16 v3, 0x71

    new-array v4, v8, [I

    aput v2, v4, v9

    .line 9
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xc

    .line 10
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    shl-int/2addr v2, v12

    add-int/lit8 v3, p2, 0xd

    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    shl-int/2addr v3, v14

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xe

    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    or-int/2addr v2, v3

    const/16 v3, 0x72

    new-array v4, v8, [I

    aput v2, v4, v9

    .line 11
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xf

    .line 12
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    shl-int/2addr v2, v14

    add-int/lit8 v3, p2, 0x10

    aget-byte v1, v1, v3

    and-int/2addr v1, v13

    or-int/2addr v1, v2

    const/16 v2, 0x73

    new-array v3, v8, [I

    aput v1, v3, v9

    .line 13
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 14
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    const/16 v3, 0x62

    new-array v5, v8, [I

    aput v2, v5, v9

    .line 15
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 16
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    shl-int/2addr v2, v14

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    or-int/2addr v2, v3

    const/16 v3, 0x63

    new-array v5, v8, [I

    aput v2, v5, v9

    .line 17
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 18
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    shl-int/2addr v2, v14

    add-int/lit8 v3, p2, 0x6

    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    or-int/2addr v2, v3

    const/16 v3, 0x64

    new-array v5, v8, [I

    aput v2, v5, v9

    .line 19
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 20
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    shl-int/2addr v2, v14

    add-int/lit8 v3, p2, 0x8

    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    or-int/2addr v2, v3

    const/16 v3, 0x65

    new-array v5, v8, [I

    aput v2, v5, v9

    .line 21
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 22
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    shl-int/2addr v2, v12

    add-int/lit8 v3, p2, 0xa

    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    shl-int/2addr v3, v14

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xb

    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    or-int/2addr v2, v3

    const/16 v3, 0x66

    new-array v5, v8, [I

    aput v2, v5, v9

    .line 23
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xc

    .line 24
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    shl-int/2addr v2, v14

    add-int/lit8 v3, p2, 0xd

    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    or-int/2addr v2, v3

    const/16 v3, 0x67

    new-array v5, v8, [I

    aput v2, v5, v9

    .line 25
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xe

    .line 26
    aget-byte v2, v1, v2

    and-int/lit8 v3, v2, 0x3

    and-int/2addr v3, v13

    const/16 v5, 0x68

    new-array v7, v8, [I

    aput v3, v7, v9

    .line 27
    invoke-static {v5, v7}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v3, v2, 0x2

    and-int/2addr v3, v4

    and-int/2addr v3, v13

    const/16 v5, 0x69

    new-array v7, v8, [I

    aput v3, v7, v9

    .line 28
    invoke-static {v5, v7}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v3, v2, 0x4

    and-int/2addr v3, v4

    and-int/2addr v3, v13

    const/16 v4, 0x6a

    new-array v5, v8, [I

    aput v3, v5, v9

    .line 29
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v3, v2, 0x6

    and-int/2addr v3, v8

    and-int/2addr v3, v13

    const/16 v4, 0x6b

    new-array v5, v8, [I

    aput v3, v5, v9

    .line 30
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    shr-int/2addr v2, v15

    and-int/2addr v2, v8

    and-int/2addr v2, v13

    const/16 v3, 0x6c

    new-array v4, v8, [I

    aput v2, v4, v9

    .line 31
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xf

    .line 32
    aget-byte v1, v1, v2

    and-int/2addr v1, v13

    if-gez v1, :cond_2

    move v11, v9

    goto :goto_0

    :cond_2
    if-le v1, v11, :cond_3

    goto :goto_0

    :cond_3
    move v11, v1

    :goto_0
    const/16 v1, 0x6d

    new-array v2, v8, [I

    .line 33
    iget-object v3, v0, Lk0/b5;->b:[I

    aget v3, v3, v11

    aput v3, v2, v9

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_4
    add-int/lit8 v2, p2, 0x4

    .line 34
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 35
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v9

    .line 36
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v9

    const/4 v3, 0x2

    .line 37
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v9

    .line 38
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v9

    const/4 v3, 0x2

    .line 39
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v9

    .line 40
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v9

    .line 41
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v8

    aput v3, v2, v9

    const/4 v3, 0x5

    .line 42
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    const/4 v3, 0x2

    shr-int/2addr v1, v3

    and-int/2addr v1, v8

    aput v1, v2, v9

    .line 43
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_6
    add-int/lit8 v2, p2, 0x4

    .line 44
    aget-byte v3, v1, v2

    add-int/lit8 v5, p2, 0x5

    .line 45
    aget-byte v6, v1, v5

    const/16 v7, 0xc

    if-ne v3, v7, :cond_8

    if-ne v6, v8, :cond_8

    .line 46
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.syu.canbus"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 47
    invoke-static {}, Lo1/u;->k()V

    goto :goto_2

    .line 48
    :cond_7
    invoke-static {}, Lo1/u;->v()I

    .line 49
    :cond_8
    :goto_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 50
    aget-byte v2, v1, v2

    .line 51
    aget-byte v3, v1, v5

    and-int/2addr v2, v13

    .line 52
    iput v2, v0, Lk0/b5;->d:I

    move v2, v9

    .line 53
    :goto_3
    iget-object v5, v0, Lk0/b5;->f:[[I

    array-length v6, v5

    if-ge v2, v6, :cond_a

    .line 54
    iget v6, v0, Lk0/b5;->d:I

    aget-object v7, v5, v2

    aget v7, v7, v9

    if-ne v6, v7, :cond_9

    if-eqz v6, :cond_a

    .line 55
    iput v2, v0, Lk0/b5;->c:I

    goto :goto_4

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    and-int/2addr v3, v13

    if-eqz v3, :cond_d

    .line 56
    array-length v3, v5

    if-ge v2, v3, :cond_f

    .line 57
    sget v3, Lh0/c;->E:I

    if-eq v3, v10, :cond_b

    if-eq v3, v4, :cond_b

    const/4 v4, 0x5

    if-ne v3, v4, :cond_c

    :cond_b
    aget-object v3, v5, v2

    aget v3, v3, v9

    const/4 v4, 0x6

    if-ne v3, v4, :cond_c

    const/16 v2, 0x1a

    .line 58
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    goto :goto_5

    .line 59
    :cond_c
    aget-object v2, v5, v2

    aget v2, v2, v8

    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    goto :goto_5

    .line 60
    :cond_d
    iget v2, v0, Lk0/b5;->c:I

    array-length v3, v5

    if-ge v2, v3, :cond_e

    if-eq v2, v13, :cond_e

    .line 61
    aget-object v2, v5, v2

    aget v2, v2, v8

    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    .line 62
    :cond_e
    iput v13, v0, Lk0/b5;->c:I

    :cond_f
    :goto_5
    add-int/lit8 v2, p2, 0x9

    .line 63
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    const/16 v3, 0x1388

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_c

    .line 64
    :cond_10
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_27

    add-int/lit8 v2, p2, 0x2

    .line 65
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Lk0/b5;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 66
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Lk0/b5;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 67
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Lk0/b5;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 68
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Lk0/b5;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 69
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Lk0/b5;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 70
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Lk0/b5;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 71
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Lk0/b5;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    const/16 v2, 0x9

    add-int/lit8 v2, p2, 0x9

    .line 72
    aget-byte v1, v1, v2

    and-int/2addr v1, v13

    invoke-static {v1}, Lk0/b5;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_c

    :cond_11
    add-int/lit8 v2, p2, 0x2

    .line 73
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 74
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 75
    aget-byte v5, v1, v5

    new-array v6, v8, [I

    shr-int/lit8 v17, v2, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v6, v9

    .line 76
    invoke-static {v11, v6}, Lk0/qt;->y0(I[I)V

    new-array v6, v8, [I

    shr-int/lit8 v17, v2, 0x3

    and-int/lit8 v17, v17, 0x1

    aput v17, v6, v9

    const/16 v14, 0xd

    .line 77
    invoke-static {v14, v6}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x3e

    new-array v14, v8, [I

    shr-int/lit8 v16, v2, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v9

    .line 78
    invoke-static {v6, v14}, Lk0/qt;->y0(I[I)V

    new-array v6, v8, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v8

    aput v2, v6, v9

    const/16 v2, 0xb

    .line 79
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v3, v10

    and-int/2addr v3, v8

    if-nez v3, :cond_12

    move v3, v9

    goto :goto_6

    :cond_12
    move v3, v8

    :goto_6
    aput v3, v2, v9

    const/16 v3, 0xc

    .line 80
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v5, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v9

    .line 81
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v8, [I

    shr-int/2addr v5, v10

    and-int/2addr v5, v8

    aput v5, v3, v9

    .line 82
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 83
    aget-byte v2, v1, v2

    if-eq v2, v4, :cond_18

    if-eq v2, v10, :cond_17

    const/4 v3, 0x5

    if-eq v2, v3, :cond_16

    const/4 v3, 0x6

    if-eq v2, v3, :cond_15

    if-eq v2, v15, :cond_14

    if-eq v2, v11, :cond_13

    move v2, v9

    :goto_7
    move v3, v2

    move v4, v3

    goto :goto_8

    :cond_13
    move v2, v8

    goto :goto_7

    :cond_14
    move v2, v8

    move v3, v2

    move v4, v9

    goto :goto_8

    :cond_15
    move v3, v8

    move v2, v9

    move v4, v2

    goto :goto_8

    :cond_16
    move v3, v8

    move v4, v3

    move v2, v9

    goto :goto_8

    :cond_17
    move v2, v8

    move v4, v2

    move v3, v9

    goto :goto_8

    :cond_18
    move v4, v8

    move v2, v9

    move v3, v2

    :goto_8
    new-array v5, v8, [I

    aput v2, v5, v9

    .line 84
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    aput v3, v2, v9

    const/16 v3, 0x13

    .line 85
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v8, [I

    aput v4, v3, v9

    .line 86
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 87
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    if-le v2, v15, :cond_19

    goto :goto_9

    :cond_19
    move v15, v2

    :goto_9
    const/16 v2, 0x15

    new-array v3, v8, [I

    aput v15, v3, v9

    .line 88
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 89
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, -0x2

    if-eqz v2, :cond_1e

    add-int/lit8 v2, p2, 0x9

    .line 90
    aget-byte v4, v1, v2

    if-eq v4, v3, :cond_1b

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1a

    const/16 v4, 0x1b

    new-array v5, v8, [I

    .line 91
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    const/4 v6, 0x5

    mul-int/2addr v2, v6

    aput v2, v5, v9

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_1a
    const/16 v2, 0x1b

    new-array v4, v8, [I

    const/4 v5, -0x3

    aput v5, v4, v9

    .line 92
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_1b
    const/16 v2, 0x1b

    new-array v4, v8, [I

    aput v3, v4, v9

    .line 93
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_a
    const/16 v2, 0x8

    add-int/lit8 v2, p2, 0x8

    .line 94
    aget-byte v4, v1, v2

    if-eq v4, v3, :cond_1d

    const/4 v3, -0x1

    if-eq v4, v3, :cond_1c

    const/16 v3, 0x1c

    new-array v4, v8, [I

    .line 95
    aget-byte v1, v1, v2

    and-int/2addr v1, v13

    const/4 v2, 0x5

    mul-int/2addr v1, v2

    aput v1, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_1c
    const/16 v1, 0x1c

    new-array v2, v8, [I

    const/4 v3, -0x3

    aput v3, v2, v9

    .line 96
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_1d
    const/16 v1, 0x1c

    new-array v2, v8, [I

    aput v3, v2, v9

    .line 97
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_1e
    add-int/lit8 v2, p2, 0x8

    .line 98
    aget-byte v4, v1, v2

    if-eq v4, v3, :cond_20

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1f

    const/16 v4, 0x1b

    new-array v5, v8, [I

    .line 99
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    const/4 v6, 0x5

    mul-int/2addr v2, v6

    aput v2, v5, v9

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_1f
    const/16 v2, 0x1b

    new-array v4, v8, [I

    const/4 v5, -0x3

    aput v5, v4, v9

    .line 100
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_20
    const/16 v2, 0x1b

    new-array v4, v8, [I

    aput v3, v4, v9

    .line 101
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_b
    const/16 v2, 0x9

    add-int/lit8 v2, p2, 0x9

    .line 102
    aget-byte v4, v1, v2

    if-eq v4, v3, :cond_22

    const/4 v3, -0x1

    if-eq v4, v3, :cond_21

    const/16 v3, 0x1c

    new-array v4, v8, [I

    .line 103
    aget-byte v1, v1, v2

    and-int/2addr v1, v13

    const/4 v2, 0x5

    mul-int/2addr v1, v2

    aput v1, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_21
    const/16 v1, 0x1c

    new-array v2, v8, [I

    const/4 v3, -0x3

    aput v3, v2, v9

    .line 104
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_22
    const/16 v1, 0x1c

    new-array v2, v8, [I

    aput v3, v2, v9

    .line 105
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    .line 106
    :cond_23
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_24
    const/16 v2, 0x3f5

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 107
    aget-byte v1, v1, v4

    and-int/2addr v1, v13

    sub-int/2addr v1, v8

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    .line 108
    :cond_25
    sget v2, Lu0/b;->D:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_26

    const/16 v2, 0x76

    new-array v3, v8, [I

    add-int/lit8 v13, p2, 0x2

    .line 109
    aget-byte v13, v1, v13

    shr-int/2addr v13, v4

    and-int/2addr v13, v8

    aput v13, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_26
    add-int/lit8 v2, p2, 0x2

    .line 110
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 111
    aget-byte v3, v1, v3

    add-int/lit8 v13, p2, 0x4

    .line 112
    aget-byte v13, v1, v13

    add-int/lit8 v14, p2, 0x5

    .line 113
    aget-byte v14, v1, v14

    add-int/lit8 v18, p2, 0x6

    .line 114
    aget-byte v18, v1, v18

    add-int/lit8 v19, p2, 0x7

    .line 115
    aget-byte v19, v1, v19

    add-int/lit8 v20, p2, 0x8

    .line 116
    aget-byte v20, v1, v20

    add-int/lit8 v21, p2, 0x9

    .line 117
    aget-byte v21, v1, v21

    add-int/lit8 v22, p2, 0xa

    .line 118
    aget-byte v22, v1, v22

    add-int/lit8 v23, p2, 0xb

    .line 119
    aget-byte v23, v1, v23

    add-int/lit8 v24, p2, 0xc

    .line 120
    aget-byte v24, v1, v24

    add-int/lit8 v25, p2, 0xd

    .line 121
    aget-byte v25, v1, v25

    add-int/lit8 v26, p2, 0xe

    .line 122
    aget-byte v26, v1, v26

    add-int/lit8 v27, p2, 0xf

    .line 123
    aget-byte v27, v1, v27

    add-int/lit8 v28, p2, 0x10

    .line 124
    aget-byte v28, v1, v28

    add-int/lit8 v29, p2, 0x11

    .line 125
    aget-byte v29, v1, v29

    add-int/lit8 v30, p2, 0x12

    .line 126
    aget-byte v30, v1, v30

    add-int/lit8 v31, p2, 0x13

    .line 127
    aget-byte v31, v1, v31

    add-int/lit8 v32, p2, 0x14

    .line 128
    aget-byte v32, v1, v32

    add-int/lit8 v33, p2, 0x15

    .line 129
    aget-byte v33, v1, v33

    add-int/lit8 v34, p2, 0x16

    .line 130
    aget-byte v34, v1, v34

    add-int/lit8 v35, p2, 0x17

    .line 131
    aget-byte v1, v1, v35

    const/16 v7, 0x76

    new-array v5, v8, [I

    shr-int/2addr v2, v4

    and-int/2addr v2, v8

    aput v2, v5, v9

    .line 132
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v5, v8, [I

    shr-int/lit8 v7, v3, 0x3

    and-int/2addr v7, v8

    aput v7, v5, v9

    .line 133
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v5, v8, [I

    shr-int/lit8 v7, v19, 0x3

    and-int/2addr v7, v8

    aput v7, v5, v9

    .line 134
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v5, v8, [I

    shr-int/lit8 v7, v19, 0x2

    and-int/2addr v7, v8

    aput v7, v5, v9

    .line 135
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v5, v8, [I

    shr-int/lit8 v7, v20, 0x4

    and-int/2addr v7, v8

    aput v7, v5, v9

    .line 136
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v5, v8, [I

    shr-int/lit8 v7, v20, 0x6

    and-int/2addr v7, v8

    aput v7, v5, v9

    .line 137
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v5, v8, [I

    shr-int/lit8 v7, v20, 0x7

    and-int/2addr v7, v8

    aput v7, v5, v9

    .line 138
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v5, v8, [I

    shr-int/lit8 v7, v21, 0x7

    and-int/2addr v7, v8

    aput v7, v5, v9

    .line 139
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v5, v8, [I

    shr-int/lit8 v7, v23, 0x3

    and-int/2addr v7, v8

    aput v7, v5, v9

    .line 140
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v5, v8, [I

    shr-int/lit8 v7, v34, 0x3

    and-int/2addr v7, v8

    aput v7, v5, v9

    .line 141
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v5, v8, [I

    shr-int/lit8 v7, v3, 0x7

    and-int/2addr v7, v8

    aput v7, v5, v9

    .line 142
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v5, v8, [I

    shr-int/lit8 v7, v13, 0x7

    and-int/2addr v7, v8

    aput v7, v5, v9

    .line 143
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v5, v8, [I

    shr-int/lit8 v7, v14, 0x3

    and-int/2addr v7, v8

    aput v7, v5, v9

    .line 144
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v5, v8, [I

    shr-int/lit8 v7, v19, 0x7

    and-int/2addr v7, v8

    aput v7, v5, v9

    .line 145
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v5, v8, [I

    shr-int/lit8 v7, v19, 0x1

    and-int/2addr v7, v8

    aput v7, v5, v9

    .line 146
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v5, v8, [I

    shr-int/lit8 v7, v20, 0x5

    and-int/2addr v7, v8

    aput v7, v5, v9

    .line 147
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v5, v8, [I

    shr-int/lit8 v7, v26, 0x3

    and-int/2addr v7, v8

    aput v7, v5, v9

    .line 148
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v5, v8, [I

    shr-int/lit8 v7, v31, 0x3

    and-int/2addr v7, v8

    aput v7, v5, v9

    .line 149
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v5, v8, [I

    shr-int/lit8 v7, v29, 0x7

    and-int/2addr v7, v8

    aput v7, v5, v9

    .line 150
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v2, [I

    shr-int/lit8 v2, v3, 0x5

    and-int/2addr v2, v8

    aput v2, v5, v9

    aput v2, v5, v8

    const/4 v7, 0x2

    aput v2, v5, v7

    aput v2, v5, v4

    aput v9, v5, v10

    const/4 v2, 0x5

    aput v9, v5, v2

    const/4 v2, 0x6

    aput v9, v5, v2

    aput v9, v5, v15

    shr-int/lit8 v2, v3, 0x2

    and-int/2addr v2, v8

    const/16 v7, 0x8

    aput v2, v5, v7

    const/16 v7, 0x9

    aput v2, v5, v7

    aput v2, v5, v11

    const/16 v7, 0xb

    aput v2, v5, v7

    shr-int/lit8 v2, v3, 0x6

    and-int/2addr v2, v8

    const/16 v7, 0xc

    aput v2, v5, v7

    const/16 v2, 0xd

    aput v9, v5, v2

    shr-int/lit8 v2, v3, 0x1

    and-int/2addr v2, v8

    const/16 v7, 0xe

    aput v2, v5, v7

    shr-int/lit8 v36, v3, 0x4

    and-int/lit8 v36, v36, 0x1

    aput v36, v5, v6

    aput v2, v5, v12

    and-int/lit8 v2, v3, 0x1

    const/16 v3, 0x11

    aput v2, v5, v3

    const/16 v3, 0x12

    aput v2, v5, v3

    const/16 v2, 0x88

    .line 151
    sget-object v3, Lk0/b5;->l:[I

    invoke-static {v2, v5, v3}, Lk0/qt;->C0(I[I[I)Z

    .line 152
    sput-object v5, Lk0/b5;->l:[I

    const/16 v2, 0x13

    new-array v3, v2, [I

    shr-int/lit8 v2, v13, 0x6

    and-int/2addr v2, v8

    aput v2, v3, v9

    aput v2, v3, v8

    const/4 v5, 0x2

    aput v2, v3, v5

    aput v2, v3, v4

    shr-int/lit8 v2, v13, 0x2

    and-int/2addr v2, v8

    aput v2, v3, v10

    shr-int/lit8 v2, v13, 0x4

    and-int/2addr v2, v8

    const/4 v5, 0x5

    aput v2, v3, v5

    shr-int/lit8 v2, v14, 0x4

    and-int/2addr v2, v8

    const/4 v5, 0x6

    aput v2, v3, v5

    shr-int/lit8 v2, v14, 0x6

    and-int/2addr v2, v8

    aput v2, v3, v15

    shr-int/lit8 v2, v14, 0x7

    and-int/2addr v2, v8

    const/16 v5, 0x8

    aput v2, v3, v5

    shr-int/lit8 v2, v14, 0x5

    and-int/2addr v2, v8

    const/16 v5, 0x9

    aput v2, v3, v5

    aput v2, v3, v11

    const/16 v5, 0xb

    aput v2, v3, v5

    shr-int/lit8 v2, v13, 0x3

    and-int/2addr v2, v8

    const/16 v5, 0xc

    aput v2, v3, v5

    and-int/lit8 v2, v13, 0x1

    const/16 v5, 0xd

    aput v2, v3, v5

    shr-int/lit8 v2, v13, 0x1

    and-int/2addr v2, v8

    aput v2, v3, v7

    const/4 v5, 0x5

    shr-int/2addr v13, v5

    and-int/lit8 v5, v13, 0x1

    aput v5, v3, v6

    aput v2, v3, v12

    const/16 v2, 0x11

    aput v9, v3, v2

    const/16 v2, 0x12

    aput v9, v3, v2

    const/16 v2, 0x89

    .line 153
    sget-object v5, Lk0/b5;->m:[I

    invoke-static {v2, v3, v5}, Lk0/qt;->C0(I[I[I)Z

    .line 154
    sput-object v3, Lk0/b5;->m:[I

    const/16 v2, 0x13

    new-array v3, v2, [I

    shr-int/lit8 v2, v14, 0x2

    and-int/2addr v2, v8

    aput v2, v3, v9

    aput v2, v3, v8

    shr-int/lit8 v2, v14, 0x1

    and-int/2addr v2, v8

    const/4 v5, 0x2

    aput v2, v3, v5

    aput v2, v3, v4

    aput v9, v3, v10

    const/4 v2, 0x5

    aput v9, v3, v2

    const/4 v2, 0x6

    aput v9, v3, v2

    aput v9, v3, v15

    shr-int/lit8 v2, v19, 0x6

    and-int/2addr v2, v8

    const/16 v5, 0x8

    aput v2, v3, v5

    const/16 v5, 0x9

    aput v2, v3, v5

    shr-int/lit8 v2, v19, 0x5

    and-int/2addr v2, v8

    aput v2, v3, v11

    const/16 v5, 0xb

    aput v2, v3, v5

    shr-int/lit8 v2, v18, 0x3

    and-int/2addr v2, v8

    const/16 v5, 0xc

    aput v2, v3, v5

    and-int/lit8 v2, v14, 0x1

    const/16 v5, 0xd

    aput v2, v3, v5

    shr-int/lit8 v2, v18, 0x1

    and-int/2addr v2, v8

    aput v2, v3, v7

    and-int/lit8 v5, v18, 0x1

    aput v5, v3, v6

    aput v2, v3, v12

    const/4 v2, 0x2

    shr-int/lit8 v5, v18, 0x2

    and-int/lit8 v2, v5, 0x1

    const/16 v5, 0x11

    aput v2, v3, v5

    const/16 v5, 0x12

    aput v2, v3, v5

    const/16 v2, 0x8a

    .line 155
    sget-object v5, Lk0/b5;->n:[I

    invoke-static {v2, v3, v5}, Lk0/qt;->C0(I[I[I)Z

    .line 156
    sput-object v3, Lk0/b5;->n:[I

    const/16 v2, 0x13

    new-array v3, v2, [I

    shr-int/lit8 v2, v19, 0x4

    and-int/2addr v2, v8

    aput v2, v3, v9

    aput v2, v3, v8

    const/4 v5, 0x2

    aput v2, v3, v5

    aput v2, v3, v4

    aput v9, v3, v10

    const/4 v5, 0x5

    aput v9, v3, v5

    const/4 v5, 0x6

    aput v9, v3, v5

    aput v9, v3, v15

    const/16 v5, 0x8

    aput v9, v3, v5

    const/16 v5, 0x9

    aput v9, v3, v5

    aput v9, v3, v11

    const/16 v5, 0xb

    aput v9, v3, v5

    const/16 v5, 0xc

    aput v2, v3, v5

    const/16 v5, 0xd

    aput v2, v3, v5

    and-int/lit8 v2, v19, 0x1

    aput v2, v3, v7

    aput v2, v3, v6

    aput v2, v3, v12

    const/16 v2, 0x11

    aput v9, v3, v2

    const/16 v2, 0x12

    aput v9, v3, v2

    const/16 v2, 0x8b

    .line 157
    sget-object v5, Lk0/b5;->o:[I

    invoke-static {v2, v3, v5}, Lk0/qt;->C0(I[I[I)Z

    .line 158
    sput-object v3, Lk0/b5;->o:[I

    const/16 v2, 0x13

    new-array v3, v2, [I

    shr-int/lit8 v2, v20, 0x2

    and-int/2addr v2, v8

    aput v2, v3, v9

    aput v2, v3, v8

    shr-int/lit8 v2, v20, 0x1

    and-int/2addr v2, v8

    const/4 v5, 0x2

    aput v2, v3, v5

    aput v2, v3, v4

    aput v9, v3, v10

    const/4 v2, 0x5

    aput v9, v3, v2

    const/4 v2, 0x6

    aput v9, v3, v2

    aput v9, v3, v15

    shr-int/lit8 v2, v21, 0x6

    and-int/2addr v2, v8

    const/16 v5, 0x8

    aput v2, v3, v5

    const/16 v5, 0x9

    aput v2, v3, v5

    shr-int/lit8 v2, v21, 0x4

    and-int/2addr v2, v8

    aput v2, v3, v11

    const/16 v5, 0xb

    aput v2, v3, v5

    shr-int/lit8 v2, v20, 0x3

    and-int/2addr v2, v8

    const/16 v5, 0xc

    aput v2, v3, v5

    and-int/lit8 v2, v20, 0x1

    const/16 v5, 0xd

    aput v2, v3, v5

    shr-int/lit8 v2, v21, 0x5

    and-int/2addr v2, v8

    aput v2, v3, v7

    aput v2, v3, v6

    aput v2, v3, v12

    const/16 v2, 0x11

    aput v9, v3, v2

    const/16 v2, 0x12

    aput v9, v3, v2

    const/16 v2, 0x8c

    .line 159
    sget-object v5, Lk0/b5;->p:[I

    invoke-static {v2, v3, v5}, Lk0/qt;->C0(I[I[I)Z

    .line 160
    sput-object v3, Lk0/b5;->p:[I

    new-array v2, v10, [I

    shr-int/lit8 v3, v21, 0x3

    and-int/2addr v3, v8

    aput v3, v2, v9

    shr-int/lit8 v3, v21, 0x2

    and-int/2addr v3, v8

    aput v3, v2, v8

    shr-int/lit8 v3, v21, 0x1

    and-int/2addr v3, v8

    const/4 v5, 0x2

    aput v3, v2, v5

    and-int/lit8 v3, v21, 0x1

    aput v3, v2, v4

    const/16 v3, 0x8d

    .line 161
    sget-object v5, Lk0/b5;->q:[I

    invoke-static {v3, v2, v5}, Lk0/qt;->C0(I[I[I)Z

    .line 162
    sput-object v2, Lk0/b5;->q:[I

    const/16 v2, 0x13

    new-array v3, v2, [I

    shr-int/lit8 v2, v22, 0x7

    and-int/2addr v2, v8

    aput v2, v3, v9

    shr-int/lit8 v2, v22, 0x6

    and-int/2addr v2, v8

    aput v2, v3, v8

    shr-int/lit8 v2, v22, 0x5

    and-int/2addr v2, v8

    const/4 v5, 0x2

    aput v2, v3, v5

    shr-int/lit8 v2, v22, 0x4

    and-int/2addr v2, v8

    aput v2, v3, v4

    shr-int/lit8 v2, v22, 0x2

    and-int/2addr v2, v8

    aput v2, v3, v10

    and-int/lit8 v2, v22, 0x1

    const/4 v5, 0x5

    aput v2, v3, v5

    and-int/lit8 v2, v23, 0x1

    const/4 v5, 0x6

    aput v2, v3, v5

    shr-int/lit8 v2, v23, 0x2

    and-int/2addr v2, v8

    aput v2, v3, v15

    shr-int/lit8 v2, v24, 0x7

    and-int/2addr v2, v8

    const/16 v5, 0x8

    aput v2, v3, v5

    shr-int/lit8 v2, v24, 0x6

    and-int/2addr v2, v8

    const/16 v5, 0x9

    aput v2, v3, v5

    shr-int/lit8 v2, v24, 0x5

    and-int/2addr v2, v8

    aput v2, v3, v11

    shr-int/lit8 v2, v24, 0x4

    and-int/2addr v2, v8

    const/16 v5, 0xb

    aput v2, v3, v5

    shr-int/lit8 v2, v22, 0x3

    and-int/2addr v2, v8

    const/16 v5, 0xc

    aput v2, v3, v5

    shr-int/lit8 v2, v23, 0x4

    and-int/2addr v2, v8

    const/16 v5, 0xd

    aput v2, v3, v5

    shr-int/lit8 v2, v22, 0x1

    and-int/2addr v2, v8

    aput v2, v3, v7

    shr-int/lit8 v2, v23, 0x6

    and-int/2addr v2, v8

    aput v2, v3, v6

    shr-int/lit8 v2, v23, 0x1

    and-int/2addr v2, v8

    aput v2, v3, v12

    shr-int/lit8 v2, v23, 0x7

    and-int/2addr v2, v8

    const/16 v5, 0x11

    aput v2, v3, v5

    const/4 v2, 0x5

    shr-int/lit8 v5, v23, 0x5

    and-int/lit8 v2, v5, 0x1

    const/16 v5, 0x12

    aput v2, v3, v5

    const/16 v2, 0x8e

    .line 163
    sget-object v5, Lk0/b5;->r:[I

    invoke-static {v2, v3, v5}, Lk0/qt;->C0(I[I[I)Z

    .line 164
    sput-object v3, Lk0/b5;->r:[I

    const/16 v2, 0x13

    new-array v3, v2, [I

    shr-int/lit8 v2, v24, 0x3

    and-int/2addr v2, v8

    aput v2, v3, v9

    shr-int/lit8 v2, v24, 0x2

    and-int/2addr v2, v8

    aput v2, v3, v8

    shr-int/lit8 v2, v24, 0x1

    and-int/2addr v2, v8

    const/4 v5, 0x2

    aput v2, v3, v5

    and-int/lit8 v2, v24, 0x1

    aput v2, v3, v4

    shr-int/lit8 v2, v25, 0x2

    and-int/2addr v2, v8

    aput v2, v3, v10

    and-int/lit8 v2, v25, 0x1

    const/4 v5, 0x5

    aput v2, v3, v5

    and-int/lit8 v2, v26, 0x1

    const/4 v5, 0x6

    aput v2, v3, v5

    shr-int/lit8 v2, v26, 0x2

    and-int/2addr v2, v8

    aput v2, v3, v15

    shr-int/lit8 v2, v27, 0x7

    and-int/2addr v2, v8

    const/16 v5, 0x8

    aput v2, v3, v5

    shr-int/lit8 v2, v27, 0x6

    and-int/2addr v2, v8

    const/16 v5, 0x9

    aput v2, v3, v5

    shr-int/lit8 v2, v27, 0x5

    and-int/2addr v2, v8

    aput v2, v3, v11

    shr-int/lit8 v2, v27, 0x4

    and-int/2addr v2, v8

    const/16 v5, 0xb

    aput v2, v3, v5

    shr-int/lit8 v2, v25, 0x3

    and-int/2addr v2, v8

    const/16 v5, 0xc

    aput v2, v3, v5

    shr-int/lit8 v2, v26, 0x4

    and-int/2addr v2, v8

    const/16 v5, 0xd

    aput v2, v3, v5

    shr-int/lit8 v2, v25, 0x1

    and-int/2addr v2, v8

    aput v2, v3, v7

    shr-int/lit8 v2, v26, 0x6

    and-int/2addr v2, v8

    aput v2, v3, v6

    shr-int/lit8 v2, v26, 0x1

    and-int/2addr v2, v8

    aput v2, v3, v12

    shr-int/lit8 v2, v26, 0x7

    and-int/2addr v2, v8

    const/16 v5, 0x11

    aput v2, v3, v5

    const/4 v2, 0x5

    shr-int/lit8 v5, v26, 0x5

    and-int/lit8 v2, v5, 0x1

    const/16 v5, 0x12

    aput v2, v3, v5

    const/16 v2, 0x8f

    .line 165
    sget-object v5, Lk0/b5;->s:[I

    invoke-static {v2, v3, v5}, Lk0/qt;->C0(I[I[I)Z

    .line 166
    sput-object v3, Lk0/b5;->s:[I

    const/16 v2, 0x13

    new-array v3, v2, [I

    shr-int/lit8 v2, v27, 0x3

    and-int/2addr v2, v8

    aput v2, v3, v9

    shr-int/lit8 v2, v27, 0x2

    and-int/2addr v2, v8

    aput v2, v3, v8

    shr-int/lit8 v2, v27, 0x1

    and-int/2addr v2, v8

    const/4 v5, 0x2

    aput v2, v3, v5

    and-int/lit8 v2, v27, 0x1

    aput v2, v3, v4

    shr-int/lit8 v2, v28, 0x6

    and-int/2addr v2, v8

    aput v2, v3, v10

    shr-int/lit8 v2, v28, 0x4

    and-int/2addr v2, v8

    const/4 v5, 0x5

    aput v2, v3, v5

    shr-int/lit8 v2, v29, 0x4

    and-int/2addr v2, v8

    const/4 v5, 0x6

    aput v2, v3, v5

    shr-int/lit8 v2, v29, 0x6

    and-int/2addr v2, v8

    aput v2, v3, v15

    shr-int/lit8 v2, v29, 0x3

    and-int/2addr v2, v8

    const/16 v5, 0x8

    aput v2, v3, v5

    shr-int/lit8 v2, v29, 0x2

    and-int/2addr v2, v8

    const/16 v5, 0x9

    aput v2, v3, v5

    shr-int/lit8 v2, v29, 0x1

    and-int/2addr v2, v8

    aput v2, v3, v11

    and-int/lit8 v2, v29, 0x1

    const/16 v5, 0xb

    aput v2, v3, v5

    shr-int/lit8 v2, v28, 0x7

    and-int/2addr v2, v8

    const/16 v5, 0xc

    aput v2, v3, v5

    and-int/lit8 v2, v28, 0x1

    const/16 v5, 0xd

    aput v2, v3, v5

    shr-int/lit8 v2, v28, 0x5

    and-int/2addr v2, v8

    aput v2, v3, v7

    shr-int/lit8 v2, v28, 0x2

    and-int/2addr v2, v8

    aput v2, v3, v6

    const/4 v2, 0x5

    shr-int/lit8 v5, v29, 0x5

    and-int/lit8 v2, v5, 0x1

    aput v2, v3, v12

    shr-int/lit8 v2, v28, 0x3

    and-int/2addr v2, v8

    const/16 v5, 0x11

    aput v2, v3, v5

    shr-int/lit8 v2, v28, 0x1

    and-int/2addr v2, v8

    const/16 v5, 0x12

    aput v2, v3, v5

    const/16 v2, 0x90

    .line 167
    sget-object v5, Lk0/b5;->t:[I

    invoke-static {v2, v3, v5}, Lk0/qt;->C0(I[I[I)Z

    .line 168
    sput-object v3, Lk0/b5;->t:[I

    const/16 v2, 0x13

    new-array v3, v2, [I

    shr-int/lit8 v2, v30, 0x7

    and-int/2addr v2, v8

    aput v2, v3, v9

    shr-int/lit8 v2, v30, 0x6

    and-int/2addr v2, v8

    aput v2, v3, v8

    shr-int/lit8 v2, v30, 0x5

    and-int/2addr v2, v8

    const/4 v5, 0x2

    aput v2, v3, v5

    shr-int/lit8 v2, v30, 0x4

    and-int/2addr v2, v8

    aput v2, v3, v4

    shr-int/lit8 v2, v30, 0x2

    and-int/2addr v2, v8

    aput v2, v3, v10

    and-int/lit8 v2, v30, 0x1

    const/4 v5, 0x5

    aput v2, v3, v5

    and-int/lit8 v2, v31, 0x1

    const/4 v5, 0x6

    aput v2, v3, v5

    shr-int/lit8 v2, v31, 0x2

    and-int/2addr v2, v8

    aput v2, v3, v15

    shr-int/lit8 v2, v32, 0x3

    and-int/2addr v2, v8

    const/16 v5, 0x8

    aput v2, v3, v5

    shr-int/lit8 v2, v32, 0x2

    and-int/2addr v2, v8

    const/16 v5, 0x9

    aput v2, v3, v5

    shr-int/lit8 v2, v32, 0x1

    and-int/2addr v2, v8

    aput v2, v3, v11

    and-int/lit8 v2, v32, 0x1

    const/16 v5, 0xb

    aput v2, v3, v5

    shr-int/lit8 v2, v30, 0x3

    and-int/2addr v2, v8

    const/16 v5, 0xc

    aput v2, v3, v5

    shr-int/lit8 v2, v31, 0x4

    and-int/2addr v2, v8

    const/16 v5, 0xd

    aput v2, v3, v5

    shr-int/lit8 v2, v30, 0x1

    and-int/2addr v2, v8

    aput v2, v3, v7

    shr-int/lit8 v2, v31, 0x6

    and-int/2addr v2, v8

    aput v2, v3, v6

    shr-int/lit8 v2, v31, 0x1

    and-int/2addr v2, v8

    aput v2, v3, v12

    shr-int/lit8 v2, v31, 0x7

    and-int/2addr v2, v8

    const/16 v5, 0x11

    aput v2, v3, v5

    const/4 v2, 0x5

    shr-int/lit8 v5, v31, 0x5

    and-int/lit8 v2, v5, 0x1

    const/16 v5, 0x12

    aput v2, v3, v5

    const/16 v2, 0x91

    .line 169
    sget-object v5, Lk0/b5;->u:[I

    invoke-static {v2, v3, v5}, Lk0/qt;->C0(I[I[I)Z

    .line 170
    sput-object v3, Lk0/b5;->u:[I

    const/16 v2, 0x13

    new-array v2, v2, [I

    shr-int/lit8 v3, v33, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v9

    shr-int/lit8 v3, v33, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v8

    shr-int/lit8 v3, v33, 0x5

    and-int/2addr v3, v8

    const/4 v5, 0x2

    aput v3, v2, v5

    shr-int/lit8 v3, v33, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v4

    shr-int/lit8 v3, v33, 0x2

    and-int/2addr v3, v8

    aput v3, v2, v10

    and-int/lit8 v3, v33, 0x1

    const/4 v4, 0x5

    aput v3, v2, v4

    and-int/lit8 v3, v34, 0x1

    const/4 v4, 0x6

    aput v3, v2, v4

    shr-int/lit8 v3, v34, 0x2

    and-int/2addr v3, v8

    aput v3, v2, v15

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    const/16 v4, 0x8

    aput v3, v2, v4

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    const/16 v4, 0x9

    aput v3, v2, v4

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v11

    shr-int/2addr v1, v10

    and-int/2addr v1, v8

    const/16 v3, 0xb

    aput v1, v2, v3

    shr-int/lit8 v1, v33, 0x3

    and-int/2addr v1, v8

    const/16 v3, 0xc

    aput v1, v2, v3

    shr-int/lit8 v1, v34, 0x4

    and-int/2addr v1, v8

    const/16 v3, 0xd

    aput v1, v2, v3

    shr-int/lit8 v1, v33, 0x1

    and-int/2addr v1, v8

    aput v1, v2, v7

    shr-int/lit8 v1, v34, 0x6

    and-int/2addr v1, v8

    aput v1, v2, v6

    shr-int/lit8 v1, v34, 0x1

    and-int/2addr v1, v8

    aput v1, v2, v12

    shr-int/lit8 v1, v34, 0x7

    and-int/2addr v1, v8

    const/16 v3, 0x11

    aput v1, v2, v3

    const/4 v1, 0x5

    shr-int/lit8 v1, v34, 0x5

    and-int/2addr v1, v8

    const/16 v3, 0x12

    aput v1, v2, v3

    const/16 v1, 0x92

    .line 171
    sget-object v3, Lk0/b5;->v:[I

    invoke-static {v1, v2, v3}, Lk0/qt;->C0(I[I[I)Z

    .line 172
    sput-object v2, Lk0/b5;->v:[I

    :cond_27
    :goto_c
    return-void
.end method

.method public W2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/b5;->g:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/b5;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/b5;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v1, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v1, Lw0/e;->a:Lo1/y;

    sget-object v2, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v1, Lw0/e;->e:Lo1/y;

    sget-object v2, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v1, p0, Lk0/b5;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/b5;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x95

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
    .locals 1

    const/16 p3, 0x65

    const/4 p4, 0x3

    const/4 v0, 0x0

    if-eq p1, p3, :cond_3

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_4

    .line 1
    array-length p1, p2

    if-lez p1, :cond_4

    .line 2
    aget p1, p2, v0

    const/4 p3, 0x1

    add-int/2addr p1, p3

    aput p1, p2, v0

    .line 3
    aget p1, p2, v0

    if-ge p1, p3, :cond_1

    .line 4
    aput p3, p2, v0

    goto :goto_0

    .line 5
    :cond_1
    aget p1, p2, v0

    if-le p1, p4, :cond_2

    .line 6
    aput p4, p2, v0

    .line 7
    :cond_2
    :goto_0
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Lk0/b5;->b3(I)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 8
    array-length p1, p2

    if-lez p1, :cond_4

    .line 9
    aget p1, p2, v0

    if-ne p1, p4, :cond_4

    const/4 p1, 0x5

    new-array p1, p1, [I

    .line 10
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_4
    :goto_1
    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        -0xe
        0x6
        -0x1
    .end array-data
.end method

.method public final b3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/b5;->w:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x2

    aput v3, v0, v1

    const/16 v4, -0xe

    aput v4, v0, v3

    int-to-byte p1, p1

    const/4 v3, 0x3

    aput p1, v0, v3

    const/4 p1, 0x4

    const/4 v3, -0x1

    aput v3, v0, p1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    iget-object p1, p0, Lk0/b5;->g:Lo1/g0;

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/b5;->w:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/b5;->g:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
