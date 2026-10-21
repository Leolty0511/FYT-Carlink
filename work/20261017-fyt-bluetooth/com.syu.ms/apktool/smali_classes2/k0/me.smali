.class public Lk0/me;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:Z

.field public j:Lo1/o;

.field public k:Lo1/o;

.field public l:Lo1/o;

.field public m:Lo1/o;

.field public n:Ljava/lang/Runnable;

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/me;->c:I

    const/16 v1, 0x17

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

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v4, 0xc

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v4, 0xd

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v4, 0xe

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v4, 0xf

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v4, 0x10

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v4, 0x11

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v4, 0x12

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v4, 0x13

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v4, 0x14

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v4, 0x15

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_16

    const/16 v3, 0x16

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/me;->d:[[I

    .line 4
    new-instance v1, Lk0/me$c;

    invoke-direct {v1, p0}, Lk0/me$c;-><init>(Lk0/me;)V

    iput-object v1, p0, Lk0/me;->e:Ljava/lang/Runnable;

    const-string v1, ""

    .line 5
    iput-object v1, p0, Lk0/me;->f:Ljava/lang/String;

    .line 6
    new-instance v1, Lk0/me$d;

    invoke-direct {v1, p0}, Lk0/me$d;-><init>(Lk0/me;)V

    iput-object v1, p0, Lk0/me;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lk0/me$e;

    invoke-direct {v1, p0}, Lk0/me$e;-><init>(Lk0/me;)V

    iput-object v1, p0, Lk0/me;->h:Ljava/lang/Runnable;

    .line 8
    iput-boolean v0, p0, Lk0/me;->i:Z

    .line 9
    new-instance v0, Lk0/me$j;

    invoke-direct {v0, p0}, Lk0/me$j;-><init>(Lk0/me;)V

    iput-object v0, p0, Lk0/me;->n:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/me$k;

    invoke-direct {v0, p0}, Lk0/me$k;-><init>(Lk0/me;)V

    iput-object v0, p0, Lk0/me;->o:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/me$a;

    invoke-direct {v0, p0}, Lk0/me$a;-><init>(Lk0/me;)V

    iput-object v0, p0, Lk0/me;->p:Ljava/lang/Runnable;

    return-void

    nop

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
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0xb
        0x22
    .end array-data

    :array_a
    .array-data 4
        0xc
        0x23
    .end array-data

    :array_b
    .array-data 4
        0xd
        0x20
    .end array-data

    :array_c
    .array-data 4
        0xe
        0x21
    .end array-data

    :array_d
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_e
    .array-data 4
        0x17
        0x9
    .end array-data

    :array_f
    .array-data 4
        0x18
        0x19
    .end array-data

    :array_10
    .array-data 4
        0x19
        0x0
    .end array-data

    :array_11
    .array-data 4
        0x20
        0x6
    .end array-data

    :array_12
    .array-data 4
        0x21
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x22
        0x36
    .end array-data

    :array_14
    .array-data 4
        0x23
        0x18
    .end array-data

    :array_15
    .array-data 4
        0x24
        0x37
    .end array-data

    :array_16
    .array-data 4
        0x25
        0x1
    .end array-data
.end method

.method public static a3()V
    .locals 17

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x10

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x20

    if-ge v4, v0, :cond_1

    .line 2
    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0xc4

    aput v4, v2, v3

    const/4 v4, 0x1

    const/16 v6, 0xe

    aput v6, v2, v4

    const/4 v7, 0x3

    aput v3, v2, v7

    .line 3
    sget v7, Lu0/b;->D:I

    const/4 v8, 0x5

    const/4 v9, 0x4

    if-eq v7, v4, :cond_d

    const/16 v10, 0x3e

    if-eq v7, v1, :cond_b

    const/16 v11, 0xb

    const/4 v12, 0x6

    const/16 v13, 0xc

    const/16 v14, 0x9

    const/16 v15, 0x8

    const/16 v16, 0xa

    if-eq v7, v9, :cond_8

    if-eq v7, v12, :cond_5

    if-eq v7, v15, :cond_2

    if-eq v7, v14, :cond_2

    goto/16 :goto_7

    :cond_2
    aput v14, v2, v1

    .line 4
    sget v1, Lu0/b;->s3:I

    if-nez v1, :cond_3

    goto/16 :goto_7

    .line 5
    :cond_3
    sget-object v1, Lu0/b;->i3:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 6
    array-length v4, v1

    if-le v4, v10, :cond_4

    goto :goto_1

    :cond_4
    array-length v10, v1

    :goto_1
    move v4, v3

    :goto_2
    if-ge v4, v10, :cond_10

    add-int/lit8 v5, v4, 0x4

    .line 7
    aget-byte v6, v1, v4

    aput v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    aput v13, v2, v1

    .line 8
    sget v1, Ld1/d;->c:I

    if-ne v1, v4, :cond_10

    .line 9
    sget v1, Ld1/d;->e:I

    div-int/lit8 v5, v1, 0xa

    if-lez v5, :cond_6

    .line 10
    div-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v2, v9

    .line 11
    :cond_6
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    aput v1, v2, v8

    const/16 v1, 0x2d

    aput v1, v2, v12

    .line 12
    sget v1, Ld1/d;->d:I

    div-int/lit8 v1, v1, 0x64

    .line 13
    div-int/lit16 v5, v1, 0x2710

    if-lez v5, :cond_7

    const/4 v7, 0x7

    add-int/lit8 v5, v5, 0x30

    aput v5, v2, v7

    .line 14
    :cond_7
    rem-int/lit16 v5, v1, 0x2710

    div-int/lit16 v5, v5, 0x3e8

    add-int/lit8 v5, v5, 0x30

    aput v5, v2, v15

    .line 15
    rem-int/lit16 v5, v1, 0x3e8

    div-int/lit8 v5, v5, 0x64

    add-int/lit8 v5, v5, 0x30

    aput v5, v2, v14

    const/16 v5, 0x2e

    aput v5, v2, v16

    .line 16
    rem-int/lit8 v5, v1, 0x64

    div-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v2, v11

    .line 17
    rem-int/lit8 v1, v1, 0xa

    div-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x30

    aput v1, v2, v13

    const/16 v1, 0xd

    const/16 v4, 0x4d

    aput v4, v2, v1

    const/16 v1, 0x68

    aput v1, v2, v6

    const/16 v1, 0xf

    const/16 v4, 0x7a

    aput v4, v2, v1

    goto/16 :goto_7

    :cond_8
    aput v13, v2, v1

    .line 18
    sget v1, Lo0/e;->C:I

    if-nez v1, :cond_9

    goto/16 :goto_7

    .line 19
    :cond_9
    sget v1, Lo0/e;->B:I

    rem-int/lit16 v1, v1, 0x2710

    .line 20
    div-int/lit16 v4, v1, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v2, v9

    .line 21
    rem-int/lit8 v4, v1, 0x64

    div-int/lit8 v4, v4, 0xa

    rem-int/lit16 v6, v1, 0x3e8

    if-nez v4, :cond_a

    goto :goto_3

    :cond_a
    div-int/lit8 v6, v6, 0xa

    :goto_3
    add-int/lit8 v6, v6, 0x30

    aput v6, v2, v8

    add-int/lit8 v4, v4, 0x30

    aput v4, v2, v12

    const/4 v4, 0x7

    .line 22
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    aput v1, v2, v4

    .line 23
    sget v1, Lo0/e;->r:I

    div-int/lit8 v4, v1, 0x3c

    .line 24
    rem-int/lit8 v4, v4, 0x3c

    aput v5, v2, v15

    .line 25
    div-int/lit8 v6, v4, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v2, v14

    .line 26
    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v2, v16

    aput v5, v2, v11

    .line 27
    rem-int/lit8 v1, v1, 0x3c

    .line 28
    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v2, v13

    const/16 v4, 0xd

    .line 29
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    aput v1, v2, v4

    goto :goto_7

    :cond_b
    aput v8, v2, v1

    .line 30
    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_10

    .line 31
    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 32
    sget-object v4, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v10, :cond_c

    goto :goto_4

    :cond_c
    sget-object v4, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    :goto_4
    move v4, v3

    :goto_5
    if-ge v4, v10, :cond_10

    add-int/lit8 v5, v4, 0x4

    .line 33
    aget-char v6, v1, v4

    int-to-byte v6, v6

    aput v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 34
    :cond_d
    sget v5, Lw0/d;->h:I

    const/high16 v6, 0x10000

    sub-int v7, v5, v6

    if-eqz v7, :cond_f

    sub-int v7, v5, v6

    if-eq v4, v7, :cond_f

    sub-int/2addr v5, v6

    if-ne v1, v5, :cond_e

    goto :goto_6

    :cond_e
    aput v9, v2, v1

    .line 35
    sget v1, Lw0/d;->i:I

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v9

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v8

    goto :goto_7

    :cond_f
    :goto_6
    aput v4, v2, v1

    .line 36
    sget v1, Lw0/d;->i:I

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v9

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v8

    :cond_10
    :goto_7
    const/16 v1, 0x11

    new-array v1, v1, [I

    const/16 v4, 0xe3

    aput v4, v1, v3

    :goto_8
    if-ge v3, v0, :cond_11

    add-int/lit8 v4, v3, 0x1

    .line 37
    aget v3, v2, v3

    int-to-byte v3, v3

    aput v3, v1, v4

    move v3, v4

    goto :goto_8

    .line 38
    :cond_11
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

.method public static synthetic b3(Lk0/me;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/me;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c3(Lk0/me;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/me;->f:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic d3(Lk0/me;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/me;->i3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e3(Lk0/me;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/me;->j3()V

    return-void
.end method

.method public static synthetic f3(Lk0/me;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/me;->g3(II)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x1

    iput v1, v0, Lk0/mt;->e:I

    .line 2
    iput v1, v0, Lk0/mt;->f:I

    .line 3
    iput v1, v0, Lk0/mt;->g:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->o:I

    .line 5
    iput v2, v0, Lk0/mt;->i:I

    .line 6
    sget-object v0, Le/c;->y:Lo1/o;

    iput-object v0, p0, Lk0/me;->j:Lo1/o;

    .line 7
    sget-object v0, Le/c;->z:Lo1/o;

    iput-object v0, p0, Lk0/me;->k:Lo1/o;

    .line 8
    sget-object v0, Le/c;->w:Lo1/o;

    iput-object v0, p0, Lk0/me;->l:Lo1/o;

    .line 9
    sget-object v0, Le/c;->x:Lo1/o;

    iput-object v0, p0, Lk0/me;->m:Lo1/o;

    .line 10
    new-instance v0, Lk0/me$f;

    invoke-direct {v0, p0}, Lk0/me$f;-><init>(Lk0/me;)V

    sput-object v0, Le/c;->w:Lo1/o;

    .line 11
    new-instance v0, Lk0/me$g;

    invoke-direct {v0, p0}, Lk0/me$g;-><init>(Lk0/me;)V

    sput-object v0, Le/c;->z:Lo1/o;

    .line 12
    new-instance v0, Lk0/me$h;

    invoke-direct {v0, p0}, Lk0/me$h;-><init>(Lk0/me;)V

    sput-object v0, Le/c;->y:Lo1/o;

    .line 13
    new-instance v0, Lk0/me$i;

    invoke-direct {v0, p0}, Lk0/me$i;-><init>(Lk0/me;)V

    sput-object v0, Le/c;->x:Lo1/o;

    .line 14
    sget-object v0, Le/e;->b:Lo1/y;

    iget-object v3, p0, Lk0/me;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget v0, Lk0/nt;->a:I

    const-string v3, "com.syu.canbus"

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 16
    :sswitch_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 17
    iput v1, v0, Lk0/mt;->i:I

    .line 18
    iget-object v0, p0, Lk0/me;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 19
    :sswitch_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 20
    iput v2, v0, Lk0/mt;->h:I

    .line 21
    iget-object v0, p0, Lk0/me;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 22
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lk0/me;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 23
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v2, p0, Lk0/me;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 24
    iget-object v2, p0, Lk0/me;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 25
    :sswitch_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 26
    iput v2, v0, Lk0/mt;->h:I

    .line 27
    iget-object v0, p0, Lk0/me;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 28
    :sswitch_3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 29
    iput v1, v0, Lk0/mt;->h:I

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1a6 -> :sswitch_3
        0x101a6 -> :sswitch_3
        0x201a6 -> :sswitch_2
        0x301a6 -> :sswitch_1
        0x401a6 -> :sswitch_2
        0x501a6 -> :sswitch_3
        0x601a6 -> :sswitch_0
        0x701a6 -> :sswitch_0
    .end sparse-switch
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x28

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v3, :cond_16

    const/16 v3, 0x29

    if-eq v2, v3, :cond_15

    const/16 v3, 0x40

    const/16 v10, 0x64

    const/16 v11, 0x7f

    const/16 v12, 0xff

    if-eq v2, v3, :cond_14

    const/16 v3, 0x41

    if-eq v2, v3, :cond_13

    const/16 v13, 0x50

    const/16 v14, 0x8

    if-eq v2, v13, :cond_11

    const/16 v13, 0x7d

    if-eq v2, v13, :cond_c

    if-eq v2, v11, :cond_b

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v10, p2, 0x3

    .line 3
    aget-byte v10, v1, v10

    add-int/lit8 v11, p2, 0x4

    .line 4
    aget-byte v11, v1, v11

    add-int/lit8 v12, p2, 0x5

    .line 5
    aget-byte v12, v1, v12

    add-int/lit8 v13, p2, 0x6

    .line 6
    aget-byte v1, v1, v13

    const/16 v13, 0xa

    new-array v14, v9, [I

    shr-int/lit8 v15, v2, 0x7

    and-int/2addr v15, v9

    aput v15, v14, v8

    .line 7
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0xb

    new-array v14, v9, [I

    shr-int/lit8 v15, v2, 0x6

    and-int/2addr v15, v9

    aput v15, v14, v8

    .line 8
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0xc

    new-array v14, v9, [I

    shr-int/lit8 v15, v2, 0x5

    and-int/2addr v15, v9

    aput v15, v14, v8

    .line 9
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0xd

    new-array v14, v9, [I

    shr-int/lit8 v15, v2, 0x3

    and-int/2addr v15, v9

    aput v15, v14, v8

    .line 10
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0x10

    new-array v14, v9, [I

    shr-int/lit8 v15, v2, 0x1

    and-int/2addr v15, v9

    aput v15, v14, v8

    .line 11
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    new-array v13, v9, [I

    and-int/2addr v2, v9

    aput v2, v13, v8

    .line 12
    invoke-static {v3, v13}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v2, v10, 0xf

    if-eq v2, v9, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_0

    move v3, v8

    move v4, v3

    :goto_0
    move v5, v4

    goto :goto_1

    :cond_0
    move v4, v8

    move v5, v4

    move v3, v9

    goto :goto_1

    :cond_1
    move v4, v8

    move v3, v9

    move v5, v3

    goto :goto_1

    :cond_2
    move v3, v8

    move v4, v3

    move v5, v9

    goto :goto_1

    :cond_3
    move v3, v8

    move v4, v9

    goto :goto_0

    :cond_4
    move v3, v8

    move v5, v3

    move v4, v9

    :goto_1
    const/16 v6, 0x4d

    new-array v7, v9, [I

    aput v2, v7, v8

    .line 13
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v6, v9, [I

    aput v3, v6, v8

    .line 14
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v9, [I

    aput v4, v3, v8

    .line 15
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v9, [I

    aput v5, v3, v8

    .line 16
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v9, [I

    and-int/lit8 v4, v11, 0xf

    aput v4, v3, v8

    .line 17
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1b

    new-array v3, v9, [I

    and-int/lit8 v4, v12, 0xf

    aput v4, v3, v8

    .line 18
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v2, v1, 0x1f

    const/16 v3, 0x1c

    if-eqz v2, :cond_6

    const/16 v4, 0x1e

    if-eq v2, v4, :cond_5

    if-lez v1, :cond_18

    if-ge v1, v4, :cond_18

    new-array v2, v9, [I

    add-int/lit8 v1, v1, 0x23

    aput v1, v2, v8

    .line 19
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_5
    new-array v1, v9, [I

    const/4 v2, -0x3

    aput v2, v1, v8

    .line 20
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_6
    new-array v1, v9, [I

    const/4 v2, -0x2

    aput v2, v1, v8

    .line 21
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 22
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 23
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 24
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 25
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_5

    .line 26
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_18

    add-int/lit8 v2, p2, 0x2

    .line 27
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 28
    aget-byte v1, v1, v3

    and-int/2addr v2, v12

    .line 29
    iput v2, v0, Lk0/me;->c:I

    move v2, v8

    .line 30
    :goto_2
    iget-object v3, v0, Lk0/me;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_8

    .line 31
    iget v4, v0, Lk0/me;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v8

    if-ne v4, v5, :cond_7

    if-eqz v4, :cond_8

    .line 32
    iput v2, v0, Lk0/me;->b:I

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    and-int/2addr v1, v12

    if-ne v1, v9, :cond_9

    .line 33
    array-length v1, v3

    if-ge v2, v1, :cond_18

    .line 34
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_5

    :cond_9
    if-nez v1, :cond_18

    .line 35
    iget v1, v0, Lk0/me;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_a

    if-eq v1, v12, :cond_a

    .line 36
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 37
    :cond_a
    iput v12, v0, Lk0/me;->b:I

    goto/16 :goto_5

    .line 38
    :cond_b
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_c
    add-int/lit8 v2, p2, 0x2

    .line 39
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    if-eq v2, v9, :cond_f

    if-eq v2, v7, :cond_e

    if-eq v2, v14, :cond_d

    goto/16 :goto_5

    :cond_d
    add-int/lit8 v2, p2, 0x3

    .line 40
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 41
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 42
    invoke-static {v2, v1, v9, v3}, Lk0/qt;->i(IIZI)V

    .line 43
    iput-boolean v9, v0, Lk0/me;->i:Z

    goto/16 :goto_5

    :cond_e
    add-int/lit8 v2, p2, 0x4

    .line 44
    aget-byte v2, v1, v2

    shl-int/2addr v2, v14

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v12

    or-int/2addr v1, v2

    div-int/2addr v1, v10

    const/16 v2, 0x407

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 45
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 46
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v6, [I

    aput v9, v4, v8

    aput v1, v4, v9

    const/4 v1, 0x0

    invoke-static {v2, v3, v4, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_f
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 47
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_10

    add-int/lit8 v2, p2, 0x3

    .line 48
    aget-byte v3, v1, v2

    shr-int/2addr v3, v7

    and-int/2addr v3, v9

    aget-byte v1, v1, v2

    shr-int/2addr v1, v5

    and-int/2addr v1, v9

    invoke-static {v3, v1, v8}, Ll0/c0;->b(III)V

    goto/16 :goto_5

    :cond_10
    add-int/lit8 v2, p2, 0x3

    .line 49
    aget-byte v3, v1, v2

    shr-int/2addr v3, v7

    and-int/2addr v3, v9

    aget-byte v1, v1, v2

    shr-int/2addr v1, v5

    and-int/2addr v1, v9

    invoke-static {v3, v1, v8}, Ll0/c0;->a(III)V

    goto/16 :goto_5

    :cond_11
    add-int/lit8 v2, p2, 0x2

    .line 50
    aget-byte v3, v1, v2

    and-int/2addr v3, v12

    add-int/lit8 v4, p2, 0x3

    .line 51
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    shl-int/2addr v4, v14

    or-int/2addr v3, v4

    const v4, 0xffff

    and-int/2addr v3, v4

    const/16 v4, 0x3f5

    new-array v5, v9, [I

    aput v3, v5, v8

    .line 52
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    .line 53
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 54
    sget v3, Lk0/nt;->a:I

    const v4, 0x101a6

    if-ne v3, v4, :cond_18

    .line 55
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_12

    .line 56
    invoke-static {v9}, Lk0/qt;->a(I)V

    goto/16 :goto_5

    .line 57
    :cond_12
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto/16 :goto_5

    :cond_13
    const/16 v2, 0x67

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 58
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v9, [I

    .line 59
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 60
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_14
    const/16 v2, 0x63

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 61
    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v9

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 62
    aget-byte v3, v1, v4

    and-int/2addr v3, v11

    aput v3, v2, v8

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 63
    aget-byte v4, v1, v4

    shr-int/lit8 v4, v4, 0x7

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 64
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    .line 65
    :cond_15
    iget-boolean v2, v0, Lk0/me;->i:Z

    if-nez v2, :cond_18

    add-int/lit8 v2, p2, 0x3

    .line 66
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0x1e40

    const/16 v4, 0x16bc

    invoke-static {v2, v1, v3, v8, v4}, Lk0/qt;->m(IIIZI)V

    goto :goto_5

    :cond_16
    add-int/lit8 v2, p2, 0x2

    .line 67
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 68
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_17

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 69
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 70
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_17
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 71
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 72
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 73
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 74
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v9

    aput v1, v2, v8

    .line 75
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :cond_18
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/me;->j:Lo1/o;

    sput-object v0, Le/c;->y:Lo1/o;

    .line 2
    iget-object v0, p0, Lk0/me;->k:Lo1/o;

    sput-object v0, Le/c;->z:Lo1/o;

    .line 3
    iget-object v0, p0, Lk0/me;->l:Lo1/o;

    sput-object v0, Le/c;->w:Lo1/o;

    .line 4
    iget-object v0, p0, Lk0/me;->m:Lo1/o;

    sput-object v0, Le/c;->x:Lo1/o;

    .line 5
    sget-object v0, Le/e;->b:Lo1/y;

    iget-object v1, p0, Lk0/me;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/me;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/me;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    iget-object v1, p0, Lk0/me;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/me;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/me;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6a

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

    const/16 p3, 0x8a

    const/4 p4, 0x5

    const/16 v0, 0xe3

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/16 p3, 0x3eb

    if-eq p1, p3, :cond_1

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/me;->h3(I)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0, v5}, Lk0/me;->h3(I)V

    goto :goto_0

    :cond_2
    new-array p1, p4, [I

    aput v0, p1, v4

    aput p3, p1, v5

    aput v3, p1, v3

    .line 3
    aget p3, p2, v4

    aput p3, p1, v2

    aget p2, p2, v5

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, v1, [I

    aput v0, p1, v4

    const/16 p3, 0x90

    aput p3, p1, v5

    aput v5, p1, v3

    .line 4
    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p1, p4, [I

    aput v0, p1, v4

    const/16 p3, 0xc8

    aput p3, p1, v5

    aput v3, p1, v3

    .line 5
    aget p3, p2, v4

    aput p3, p1, v2

    aget p2, p2, v5

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    new-array p1, p4, [I

    aput v0, p1, v4

    const/16 p3, 0x80

    aput p3, p1, v5

    aput v3, p1, v3

    .line 6
    aget p3, p2, v4

    aput p3, p1, v2

    aget p2, p2, v5

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_6
    new-array p1, p4, [I

    aput v0, p1, v4

    aput p3, p1, v5

    aput v3, p1, v3

    .line 7
    aget p3, p2, v4

    aput p3, p1, v2

    aget p2, p2, v5

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

.method public final g3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, -0x1d

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8a

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 v1, 0x4

    aput p2, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    .line 2
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p2

    new-instance v0, Lk0/me$b;

    invoke-direct {v0, p0, p1}, Lk0/me$b;-><init>(Lk0/me;I)V

    const-wide/16 v1, 0x64

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final h3(I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, -0x1d

    aput v2, v0, v1

    const/16 v1, 0x8b

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final i3(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    new-array v2, v1, [B

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_2

    const/16 v4, 0x20

    .line 3
    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_3

    .line 4
    aget-byte v4, p1, v3

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/16 p1, 0x1e

    new-array p1, p1, [I

    const/16 v3, -0x1d

    aput v3, p1, v1

    const/16 v3, -0x3c

    const/4 v4, 0x1

    aput v3, p1, v4

    const/4 v3, 0x2

    const/16 v4, 0x12

    aput v4, p1, v3

    const/4 v3, 0x3

    const/4 v4, 0x5

    aput v4, p1, v3

    const/4 v3, 0x4

    aput v1, p1, v3

    :goto_3
    if-ge v1, v0, :cond_4

    add-int/lit8 v3, v1, 0x5

    .line 5
    aget-byte v4, v2, v1

    aput v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 6
    :cond_4
    invoke-static {p1}, Lz/k;->s([I)V

    return-void
.end method

.method public final j3()V
    .locals 9

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v0, v6, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    const/4 v7, 0x6

    new-array v7, v7, [I

    const/16 v8, -0x1d

    aput v8, v7, v4

    const/16 v4, -0x3b

    aput v4, v7, v5

    aput v6, v7, v1

    int-to-byte v0, v0

    aput v0, v7, v6

    .line 2
    sget v0, Lh0/c;->P:I

    div-int/lit16 v0, v0, 0x3e8

    .line 3
    div-int/lit8 v1, v0, 0x3c

    aput v1, v7, v3

    int-to-byte v0, v0

    .line 4
    rem-int/lit8 v0, v0, 0x3c

    aput v0, v7, v2

    .line 5
    invoke-static {v7}, Lz/k;->s([I)V

    return-void
.end method
