.class public Lk0/rr;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:I

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/rr;->c:I

    const/16 v1, 0xd

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

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v4, 0xb

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/rr;->d:[[I

    .line 4
    new-instance v1, Lk0/rr$a;

    invoke-direct {v1, p0}, Lk0/rr$a;-><init>(Lk0/rr;)V

    iput-object v1, p0, Lk0/rr;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v1, Lk0/rr$b;

    invoke-direct {v1, p0}, Lk0/rr$b;-><init>(Lk0/rr;)V

    iput-object v1, p0, Lk0/rr;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v1, Lk0/rr$c;

    invoke-direct {v1, p0}, Lk0/rr$c;-><init>(Lk0/rr;)V

    iput-object v1, p0, Lk0/rr;->g:Ljava/lang/Runnable;

    .line 7
    iput v0, p0, Lk0/rr;->h:I

    .line 8
    iput v0, p0, Lk0/rr;->i:I

    .line 9
    new-instance v0, Lk0/rr$d;

    invoke-direct {v0, p0}, Lk0/rr$d;-><init>(Lk0/rr;)V

    iput-object v0, p0, Lk0/rr;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/rr$e;

    invoke-direct {v0, p0}, Lk0/rr$e;-><init>(Lk0/rr;)V

    iput-object v0, p0, Lk0/rr;->k:Ljava/lang/Runnable;

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
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_7
    .array-data 4
        0xf
        0x23
    .end array-data

    :array_8
    .array-data 4
        0x10
        0x20
    .end array-data

    :array_9
    .array-data 4
        0x11
        0x21
    .end array-data

    :array_a
    .array-data 4
        0x12
        0x1d
    .end array-data

    :array_b
    .array-data 4
        0x18
        0xd
    .end array-data

    :array_c
    .array-data 4
        0x5a
        0xc
    .end array-data
.end method

.method public static a3()V
    .locals 7

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    sget v2, Lu0/b;->D:I

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    if-eq v2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    aput v4, v1, v2

    const/4 v2, 0x2

    aput v2, v1, v2

    const/4 v2, 0x3

    .line 2
    sget v5, Lu0/b;->r3:I

    shr-int/lit8 v6, v5, 0x0

    and-int/lit16 v6, v6, 0xff

    aput v6, v1, v2

    const/4 v2, 0x4

    shr-int/2addr v5, v4

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v2

    const/4 v2, 0x5

    .line 3
    sget v5, Lu0/b;->s3:I

    shr-int/lit8 v6, v5, 0x0

    and-int/lit16 v6, v6, 0xff

    aput v6, v1, v2

    const/4 v2, 0x6

    shr-int/2addr v5, v4

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v2

    const/4 v2, 0x7

    .line 4
    sget v5, Lu0/b;->t3:I

    div-int/lit16 v6, v5, 0xe10

    aput v6, v1, v2

    .line 5
    rem-int/lit16 v2, v5, 0xe10

    div-int/lit8 v2, v2, 0x3c

    aput v2, v1, v4

    const/16 v2, 0x9

    .line 6
    rem-int/lit8 v5, v5, 0x3c

    aput v5, v1, v2

    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 7
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v2}, Lz/k;->s([I)V

    :goto_1
    return-void
.end method

.method public static b3()V
    .locals 11

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x7

    new-array v2, v0, [I

    const/16 v3, 0xc0

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x5

    aput v3, v2, v1

    const/4 v5, 0x2

    aput v1, v2, v5

    .line 2
    sget v6, Lw0/d;->j:I

    and-int/lit16 v6, v6, 0xff

    .line 3
    sget v7, Lw0/d;->i:I

    .line 4
    sget v8, Lw0/d;->h:I

    const/high16 v9, 0x10000

    const/4 v10, 0x3

    if-ne v8, v9, :cond_1

    aput v4, v2, v10

    goto :goto_0

    :cond_1
    const v9, 0x10001

    if-ne v8, v9, :cond_2

    aput v1, v2, v10

    goto :goto_0

    :cond_2
    const v9, 0x10002

    if-ne v8, v9, :cond_3

    aput v5, v2, v10

    goto :goto_0

    :cond_3
    const/16 v5, 0x10

    if-nez v8, :cond_4

    aput v5, v2, v10

    goto :goto_0

    :cond_4
    if-ne v8, v1, :cond_5

    aput v5, v2, v10

    :cond_5
    :goto_0
    const/4 v1, 0x4

    and-int/lit16 v5, v7, 0xff

    aput v5, v2, v1

    const/16 v1, 0x8

    shr-int/lit8 v5, v7, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v2, v3

    .line 5
    rem-int/lit8 v3, v6, 0x6

    const/4 v5, 0x6

    if-nez v3, :cond_6

    if-eqz v6, :cond_6

    aput v5, v2, v5

    goto :goto_1

    :cond_6
    aput v3, v2, v5

    :goto_1
    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v4

    :goto_2
    if-ge v4, v0, :cond_7

    add-int/lit8 v3, v4, 0x1

    .line 6
    aget v4, v2, v4

    aput v4, v1, v3

    move v4, v3

    goto :goto_2

    .line 7
    :cond_7
    invoke-static {v1}, Lz/k;->s([I)V

    :goto_3
    return-void
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

    .line 5
    iput v1, v0, Lk0/mt;->i:I

    .line 6
    iput v1, v0, Lk0/mt;->l:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/rr;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/rr;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/rr;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/rr;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/rr;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/rr;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    iget-object v2, p0, Lk0/rr;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/rr;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/rr;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 17

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

    if-eq v2, v4, :cond_14

    const/16 v8, 0x21

    const/16 v9, 0xf

    const/4 v10, 0x4

    const/4 v11, 0x5

    if-eq v2, v8, :cond_9

    const/16 v8, 0x24

    const/4 v12, 0x2

    if-eq v2, v8, :cond_7

    const/16 v3, 0x30

    if-eq v2, v3, :cond_6

    const/16 v3, 0x50

    if-eq v2, v3, :cond_4

    const/16 v3, 0x67

    if-eq v2, v3, :cond_3

    const/16 v3, 0x6b

    if-eq v2, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    const/16 v2, 0x1d

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x2

    .line 2
    aget-byte v13, v1, v8

    shr-int/2addr v13, v6

    and-int/2addr v13, v5

    aput v13, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v7, [I

    .line 3
    aget-byte v13, v1, v8

    shr-int/2addr v13, v12

    and-int/2addr v13, v5

    aput v13, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1f

    new-array v3, v7, [I

    .line 4
    aget-byte v13, v1, v8

    shr-int/lit8 v10, v13, 0x4

    and-int/2addr v10, v5

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 5
    aget-byte v3, v1, v8

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v5

    aput v3, v2, v6

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 6
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 7
    aget-byte v8, v1, v4

    shr-int/lit8 v8, v8, 0x7

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2a

    new-array v3, v7, [I

    .line 8
    aget-byte v8, v1, v4

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v7, [I

    .line 9
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 10
    aget-byte v3, v1, v2

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v5

    const/16 v4, 0x28

    if-nez v3, :cond_1

    new-array v1, v7, [I

    aput v11, v1, v6

    .line 11
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 12
    :cond_1
    aget-byte v3, v1, v2

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v5

    if-ne v3, v7, :cond_2

    .line 13
    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x3f

    sub-int/2addr v11, v1

    new-array v1, v7, [I

    aput v11, v1, v6

    .line 14
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 15
    :cond_2
    aget-byte v3, v1, v2

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v5

    if-ne v3, v12, :cond_19

    .line 16
    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x3f

    add-int/2addr v1, v11

    new-array v2, v7, [I

    aput v1, v2, v6

    .line 17
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_3
    add-int/lit8 v2, p2, 0x3

    .line 18
    aget-byte v3, v1, v2

    shr-int/2addr v3, v7

    and-int/2addr v3, v7

    .line 19
    aget-byte v1, v1, v2

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    .line 20
    invoke-static {v3, v1, v6}, Ll0/c0;->N1(III)V

    goto/16 :goto_7

    :cond_4
    add-int/lit8 v2, p2, 0x2

    .line 21
    aget-byte v1, v1, v2

    if-ne v1, v7, :cond_5

    .line 22
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto/16 :goto_7

    .line 23
    :cond_5
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto/16 :goto_7

    .line 24
    :cond_6
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_7
    add-int/lit8 v2, p2, 0x2

    .line 25
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    const-string v2, "persist.syu.reversefrontdoor"

    .line 26
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_8

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 27
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 28
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_8
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 29
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 30
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 31
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 32
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 33
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_9
    add-int/lit8 v2, p2, 0x2

    .line 34
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x3

    .line 35
    aget-byte v4, v1, v4

    and-int/2addr v4, v3

    add-int/lit8 v5, p2, 0x4

    .line 36
    aget-byte v8, v1, v5

    and-int/2addr v8, v3

    add-int/lit8 v12, p2, 0x5

    .line 37
    aget-byte v13, v1, v12

    and-int/2addr v13, v3

    new-array v14, v7, [I

    shr-int/lit8 v15, v2, 0x7

    and-int/2addr v15, v7

    aput v15, v14, v6

    const/16 v15, 0xa

    .line 38
    invoke-static {v15, v14}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0xb

    new-array v15, v7, [I

    shr-int/lit8 v16, v2, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v6

    .line 39
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0xc

    new-array v15, v7, [I

    shr-int/lit8 v16, v2, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v6

    .line 40
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0x10

    new-array v15, v7, [I

    shr-int/lit8 v16, v2, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v6

    .line 41
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0xd

    new-array v15, v7, [I

    shr-int/lit8 v16, v2, 0x3

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v6

    .line 42
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0xe

    new-array v15, v7, [I

    shr-int/lit8 v16, v2, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v6

    .line 43
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    new-array v14, v7, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v7

    aput v2, v14, v6

    .line 44
    invoke-static {v9, v14}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v14, v4, 0x7

    and-int/2addr v14, v7

    aput v14, v2, v6

    const/16 v14, 0x12

    .line 45
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v15, v7, [I

    shr-int/lit8 v16, v4, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v6

    .line 46
    invoke-static {v2, v15}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v15, v7, [I

    shr-int/lit8 v16, v4, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v6

    .line 47
    invoke-static {v2, v15}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v15, v7, [I

    and-int/2addr v4, v9

    aput v4, v15, v6

    .line 48
    invoke-static {v2, v15}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 49
    aget-byte v9, v1, v4

    shr-int/lit8 v9, v9, 0x6

    and-int/2addr v9, v7

    aput v9, v2, v6

    const/16 v9, 0x25

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 50
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 51
    aget-byte v2, v1, v12

    and-int/lit16 v8, v2, 0xff

    .line 52
    aget-byte v2, v1, v5

    and-int/lit16 v13, v2, 0xff

    :cond_a
    const/4 v2, -0x3

    const/4 v5, -0x2

    const/16 v12, 0x7f

    const/16 v15, 0x1b

    if-eqz v8, :cond_c

    if-eq v8, v12, :cond_b

    new-array v14, v7, [I

    aput v8, v14, v6

    .line 53
    invoke-static {v15, v14}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_b
    new-array v8, v7, [I

    aput v2, v8, v6

    .line 54
    invoke-static {v15, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_c
    new-array v8, v7, [I

    aput v5, v8, v6

    .line 55
    invoke-static {v15, v8}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v8, 0x1c

    if-eqz v13, :cond_e

    if-eq v13, v12, :cond_d

    new-array v2, v7, [I

    aput v13, v2, v6

    .line 56
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_d
    new-array v5, v7, [I

    aput v2, v5, v6

    .line 57
    invoke-static {v8, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_e
    new-array v2, v7, [I

    aput v5, v2, v6

    .line 58
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v2, 0x35

    new-array v5, v7, [I

    .line 59
    aget-byte v8, v1, v4

    shr-int/lit8 v8, v8, 0x7

    and-int/2addr v8, v7

    aput v8, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1a

    new-array v5, v7, [I

    .line 60
    aget-byte v8, v1, v4

    shr-int/2addr v8, v11

    and-int/2addr v8, v7

    aput v8, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v5, v7, [I

    .line 61
    aget-byte v4, v1, v4

    shr-int/2addr v4, v10

    and-int/2addr v4, v7

    aput v4, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 62
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    if-nez v1, :cond_f

    .line 63
    invoke-static {v6}, Lu0/d;->A3(I)V

    goto/16 :goto_7

    :cond_f
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_10

    move v6, v7

    .line 64
    :cond_10
    sget-object v2, Lk0/nt;->g:[I

    aget v2, v2, v9

    if-ne v2, v7, :cond_12

    if-eqz v6, :cond_11

    rsub-int v1, v1, 0x100

    const/16 v2, 0x12

    mul-int/2addr v1, v2

    rsub-int v1, v1, 0x528

    goto :goto_3

    :cond_11
    const/16 v2, 0x12

    and-int/2addr v1, v3

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x528

    :goto_3
    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_12
    if-eqz v6, :cond_13

    rsub-int v1, v1, 0x100

    const/16 v2, 0xa

    mul-int/2addr v1, v2

    rsub-int v1, v1, 0x3e8

    goto :goto_4

    :cond_13
    const/16 v2, 0xa

    and-int/2addr v1, v3

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x3e8

    .line 65
    :goto_4
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto :goto_7

    :cond_14
    add-int/lit8 v2, p2, 0x2

    .line 66
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 67
    aget-byte v1, v1, v4

    and-int/2addr v2, v3

    .line 68
    iput v2, v0, Lk0/rr;->c:I

    move v2, v6

    .line 69
    :goto_5
    iget-object v4, v0, Lk0/rr;->d:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_16

    .line 70
    iget v5, v0, Lk0/rr;->c:I

    aget-object v8, v4, v2

    aget v8, v8, v6

    if-ne v5, v8, :cond_15

    if-eqz v5, :cond_16

    .line 71
    iput v2, v0, Lk0/rr;->b:I

    goto :goto_6

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_16
    :goto_6
    and-int/2addr v1, v3

    if-ne v1, v7, :cond_17

    .line 72
    array-length v1, v4

    if-ge v2, v1, :cond_19

    .line 73
    aget-object v1, v4, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_17
    if-nez v1, :cond_19

    .line 74
    iget v1, v0, Lk0/rr;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_18

    if-eq v1, v3, :cond_18

    .line 75
    aget-object v1, v4, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 76
    :cond_18
    iput v3, v0, Lk0/rr;->b:I

    :cond_19
    :goto_7
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/rr;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/rr;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/rr;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/rr;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/rr;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/rr;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/rr;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/rr;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    iget-object v1, p0, Lk0/rr;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x62

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

    const/16 p3, 0xc6

    const/16 p4, 0xe3

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v5, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    .line 1
    array-length p1, p2

    if-lez p1, :cond_3

    new-array p1, v2, [I

    aput p4, p1, v4

    aput p3, p1, v3

    aput v5, p1, v5

    const/16 p3, 0xac

    aput p3, p1, v1

    .line 2
    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 3
    array-length p1, p2

    if-lt p1, v2, :cond_3

    const/16 p1, 0x8

    new-array p1, p1, [I

    aput p4, p1, v4

    const/16 p3, 0xcc

    aput p3, p1, v3

    aput v2, p1, v5

    .line 4
    aget p3, p2, v4

    aput p3, p1, v1

    aget p3, p2, v3

    aput p3, p1, v0

    aget p3, p2, v5

    aput p3, p1, v2

    const/4 p3, 0x6

    aget p4, p2, v1

    aput p4, p1, p3

    const/4 p3, 0x7

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 5
    array-length p1, p2

    if-lez p1, :cond_3

    new-array p1, v2, [I

    aput p4, p1, v4

    aput p3, p1, v3

    aput v5, p1, v5

    const/16 p3, 0xa7

    aput p3, p1, v1

    .line 6
    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public c3()V
    .locals 5

    const/4 v0, 0x4

    .line 1
    iput v0, p0, Lk0/rr;->h:I

    .line 2
    sget v1, Ly0/f;->i:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    sget v1, Ly0/f;->C0:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x1e

    if-lt v1, v3, :cond_1

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1
    new-array v0, v0, [I

    const/4 v3, 0x0

    const/16 v4, 0xe3

    aput v4, v0, v3

    const/16 v3, -0x3e

    aput v3, v0, v2

    const/4 v3, 0x2

    aput v2, v0, v3

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 4
    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    :goto_0
    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x3e
        0x1
        0x1e
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x3e
        0x1
        0x0
    .end array-data
.end method
