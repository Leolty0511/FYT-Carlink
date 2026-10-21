.class public Lk0/c;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:B

.field public k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/c;->b:I

    .line 3
    iput v0, p0, Lk0/c;->d:I

    .line 4
    iput v0, p0, Lk0/c;->f:I

    const/16 v1, 0x18

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 5
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

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v4, 0x16

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_17

    const/16 v3, 0x17

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/c;->g:[[I

    .line 6
    new-instance v1, Lk0/c$a;

    invoke-direct {v1, p0}, Lk0/c$a;-><init>(Lk0/c;)V

    iput-object v1, p0, Lk0/c;->h:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lk0/c$b;

    invoke-direct {v1, p0}, Lk0/c$b;-><init>(Lk0/c;)V

    iput-object v1, p0, Lk0/c;->i:Ljava/lang/Runnable;

    .line 8
    iput-byte v0, p0, Lk0/c;->j:B

    .line 9
    new-instance v0, Lk0/c$c;

    invoke-direct {v0, p0}, Lk0/c$c;-><init>(Lk0/c;)V

    iput-object v0, p0, Lk0/c;->k:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xd
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x4
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x3
    .end array-data

    :array_9
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_b
    .array-data 4
        0x11
        0x1b
    .end array-data

    :array_c
    .array-data 4
        0x12
        0x1c
    .end array-data

    :array_d
    .array-data 4
        0x13
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x16
        0x5
    .end array-data

    :array_f
    .array-data 4
        0x17
        0x1c
    .end array-data

    :array_10
    .array-data 4
        0x18
        0x1b
    .end array-data

    :array_11
    .array-data 4
        0x19
        0x3
    .end array-data

    :array_12
    .array-data 4
        0x1a
        0x4
    .end array-data

    :array_13
    .array-data 4
        0x24
        0x1d
    .end array-data

    :array_14
    .array-data 4
        0x25
        0x6
    .end array-data

    :array_15
    .array-data 4
        0x26
        0x2
    .end array-data

    :array_16
    .array-data 4
        0x27
        0x19
    .end array-data

    :array_17
    .array-data 4
        0x28
        0x2
    .end array-data
.end method

.method public static a3()V
    .locals 8

    const/16 v0, 0xd

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_0

    .line 1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0xb

    aput v3, v1, v2

    const/16 v5, 0xa4

    const/4 v6, 0x1

    aput v5, v1, v6

    const/4 v5, 0x2

    const/16 v6, 0xf

    aput v6, v1, v5

    .line 2
    sget v5, Lo0/e;->h:I

    const/16 v6, 0x40

    const/4 v7, 0x3

    if-eqz v5, :cond_1

    aput v6, v1, v7

    goto :goto_1

    :cond_1
    aput v2, v1, v7

    :goto_1
    const/4 v5, 0x4

    aput v6, v1, v5

    const/4 v5, 0x5

    .line 3
    sget v6, Lu0/b;->r3:I

    and-int/lit16 v6, v6, 0xff

    aput v6, v1, v5

    const/4 v5, 0x6

    aput v2, v1, v5

    const/4 v5, 0x7

    .line 4
    sget v6, Lu0/b;->t3:I

    div-int/lit8 v7, v6, 0x3c

    aput v7, v1, v5

    const/16 v5, 0x8

    .line 5
    rem-int/lit8 v6, v6, 0x3c

    aput v6, v1, v5

    const/16 v5, 0x9

    aput v4, v1, v5

    const/16 v5, 0xa

    aput v4, v1, v5

    .line 6
    sget v4, Lu0/b;->r3:I

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    const/16 v3, 0xc

    aput v2, v1, v3

    const/16 v3, 0xe

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_2
    if-ge v2, v0, :cond_2

    add-int/lit8 v4, v2, 0x1

    .line 7
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_2

    .line 8
    :cond_2
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

.method public static b3()V
    .locals 10

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const/16 v4, 0x20

    .line 1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x6

    aput v3, v1, v2

    const/16 v4, 0xa2

    const/4 v5, 0x1

    aput v4, v1, v5

    .line 2
    sget v4, Lw0/d;->h:I

    const/high16 v6, 0x10000

    sub-int v7, v4, v6

    const/4 v8, 0x4

    const/4 v9, 0x2

    if-nez v7, :cond_1

    aput v5, v1, v9

    goto :goto_2

    :cond_1
    sub-int v7, v4, v6

    if-eq v5, v7, :cond_3

    sub-int/2addr v4, v6

    if-ne v9, v4, :cond_2

    goto :goto_1

    :cond_2
    aput v8, v1, v9

    goto :goto_2

    :cond_3
    :goto_1
    aput v9, v1, v9

    :goto_2
    const/4 v4, 0x3

    .line 3
    sget v5, Lw0/d;->i:I

    and-int/lit16 v6, v5, 0xff

    aput v6, v1, v4

    shr-int/lit8 v4, v5, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v8

    .line 4
    sget v4, Lw0/d;->j:I

    and-int/lit16 v5, v4, 0xff

    rem-int/2addr v5, v3

    const/4 v6, 0x5

    if-nez v5, :cond_4

    and-int/lit16 v5, v4, 0xff

    if-eqz v5, :cond_4

    aput v3, v1, v6

    goto :goto_3

    :cond_4
    and-int/lit16 v4, v4, 0xff

    .line 5
    rem-int/2addr v4, v3

    aput v4, v1, v6

    :goto_3
    aput v2, v1, v3

    const/4 v3, 0x7

    aput v2, v1, v3

    const/16 v3, 0x9

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_4
    if-ge v2, v0, :cond_5

    add-int/lit8 v4, v2, 0x1

    .line 6
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_4

    .line 7
    :cond_5
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

.method public static c3()I
    .locals 2

    .line 1
    sget v0, Lu0/b;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x80

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d3()V
    .locals 2

    .line 1
    invoke-static {}, Lk0/c;->g3()V

    .line 2
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lk0/c;->a3()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lk0/c;->b3()V

    :goto_0
    return-void
.end method

.method public static e3()I
    .locals 8

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x5

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2
    :pswitch_1
    sget v0, Lo0/e;->H:I

    if-ne v0, v4, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :cond_0
    if-ne v0, v3, :cond_1

    const/16 v1, 0xe

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_3

    const/16 v1, 0xd

    goto :goto_1

    :pswitch_2
    const/16 v1, 0xa

    goto :goto_1

    .line 3
    :pswitch_3
    sget v0, Lw0/d;->h:I

    const/high16 v6, 0x10000

    sub-int v7, v0, v6

    if-nez v7, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    sub-int v7, v0, v6

    if-ne v4, v7, :cond_4

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    sub-int v6, v0, v6

    if-ne v3, v6, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_6

    const/4 v1, 0x4

    goto :goto_1

    :cond_6
    sub-int/2addr v0, v2

    if-ne v4, v0, :cond_7

    :pswitch_4
    move v1, v5

    goto :goto_1

    :cond_7
    :goto_0
    move v1, v2

    .line 4
    :goto_1
    sget v0, Lu0/b;->o:I

    if-ne v0, v4, :cond_8

    goto :goto_2

    :cond_8
    move v5, v1

    :goto_2
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static f3()V
    .locals 7

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_0

    .line 1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    aput v3, v1, v2

    const/16 v5, 0xa1

    const/4 v6, 0x1

    aput v5, v1, v6

    .line 2
    invoke-static {}, Lk0/c;->c3()I

    move-result v5

    const/4 v6, 0x2

    or-int/2addr v4, v5

    aput v4, v1, v6

    .line 3
    invoke-static {}, Lk0/c;->e3()I

    move-result v4

    aput v4, v1, v3

    .line 4
    sget v3, Ly0/f;->C0:I

    const/4 v4, 0x4

    aput v3, v1, v4

    const/16 v5, 0x1e

    if-le v3, v5, :cond_1

    aput v5, v1, v4

    :cond_1
    const/4 v3, 0x6

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_1
    if-ge v2, v0, :cond_2

    add-int/lit8 v4, v2, 0x1

    .line 5
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

.method public static g3()V
    .locals 6

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const/16 v4, 0x20

    .line 1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    aput v3, v1, v2

    const/16 v4, 0xa1

    const/4 v5, 0x1

    aput v4, v1, v5

    .line 2
    invoke-static {}, Lk0/c;->c3()I

    move-result v4

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x40

    aput v4, v1, v5

    .line 3
    invoke-static {}, Lk0/c;->e3()I

    move-result v4

    aput v4, v1, v3

    .line 4
    sget v3, Ly0/f;->C0:I

    const/4 v4, 0x4

    aput v3, v1, v4

    const/16 v5, 0x1e

    if-le v3, v5, :cond_1

    aput v5, v1, v4

    :cond_1
    const/4 v3, 0x6

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_1
    if-ge v2, v0, :cond_2

    add-int/lit8 v4, v2, 0x1

    .line 5
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

.method public static synthetic h3(Lk0/c;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/c;->k:Ljava/lang/Runnable;

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
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk0/c;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/c;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/c;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/c;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/c;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v2, "com.syu.canbus"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 8
    iput v2, v0, Lk0/mt;->e:I

    .line 9
    iput v2, v0, Lk0/mt;->f:I

    .line 10
    iput v1, v0, Lk0/mt;->g:I

    .line 11
    iput v2, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 8

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x10

    const/4 v2, 0x2

    if-eq v0, v1, :cond_18

    const/16 p3, 0x11

    const/4 v1, 0x5

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/4 v5, 0x1

    if-eq v0, p3, :cond_13

    const/16 p3, 0x21

    const/4 v6, 0x3

    if-eq v0, p3, :cond_e

    const/16 p3, 0x31

    if-eq v0, p3, :cond_b

    const/16 p3, 0x41

    if-eq v0, p3, :cond_2

    const/16 p3, 0x13

    const v7, 0xff00

    if-eq v0, p3, :cond_1

    const/16 p3, 0x14

    if-eq v0, p3, :cond_0

    goto/16 :goto_e

    :cond_0
    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x2

    .line 2
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v7

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    or-int/2addr v0, v2

    aput v0, p3, v3

    const/4 v0, 0x4

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x4

    .line 3
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v7

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    or-int/2addr v0, v2

    aput v0, p3, v3

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x6

    .line 4
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v7

    add-int/lit8 v1, p2, 0x7

    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    or-int/2addr v0, v1

    aput v0, p3, v3

    const/4 v0, 0x6

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 p2, p2, 0xa

    .line 5
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    aput p1, p3, v3

    const/4 p1, 0x7

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_1
    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x2

    .line 6
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v7

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    or-int/2addr v0, v1

    aput v0, p3, v3

    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x4

    .line 7
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v7

    add-int/lit8 v1, p2, 0x5

    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    or-int/2addr v0, v1

    aput v0, p3, v3

    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x6

    .line 8
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v7

    add-int/lit8 v1, p2, 0x7

    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    or-int/2addr v0, v1

    aput v0, p3, v3

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 p2, p2, 0xa

    .line 9
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    aput p1, p3, v3

    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 10
    :cond_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_19

    add-int/lit8 p3, p2, 0x2

    .line 11
    aget-byte v0, p1, p3

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x8

    sub-int/2addr v0, v5

    const/16 v1, 0xf

    const/16 v2, 0x9

    if-le v0, v2, :cond_3

    move p3, v1

    goto :goto_0

    :cond_3
    aget-byte p3, p1, p3

    mul-int/lit8 p3, p3, 0xa

    div-int/lit8 p3, p3, 0x8

    sub-int/2addr p3, v5

    .line 12
    :goto_0
    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 13
    aget-byte v0, p1, p3

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x8

    sub-int/2addr v0, v5

    if-le v0, v2, :cond_4

    move p3, v1

    goto :goto_1

    :cond_4
    aget-byte p3, p1, p3

    mul-int/lit8 p3, p3, 0xa

    div-int/lit8 p3, p3, 0x8

    sub-int/2addr p3, v5

    .line 14
    :goto_1
    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 15
    aget-byte v0, p1, p3

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x8

    sub-int/2addr v0, v5

    if-le v0, v2, :cond_5

    move p3, v1

    goto :goto_2

    :cond_5
    aget-byte p3, p1, p3

    mul-int/lit8 p3, p3, 0xa

    div-int/lit8 p3, p3, 0x8

    sub-int/2addr p3, v5

    .line 16
    :goto_2
    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 17
    aget-byte v0, p1, p3

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x8

    sub-int/2addr v0, v5

    if-le v0, v2, :cond_6

    move p3, v1

    goto :goto_3

    :cond_6
    aget-byte p3, p1, p3

    mul-int/lit8 p3, p3, 0xa

    div-int/lit8 p3, p3, 0x8

    sub-int/2addr p3, v5

    .line 18
    :goto_3
    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 19
    aget-byte v0, p1, p3

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x8

    sub-int/2addr v0, v5

    if-le v0, v2, :cond_7

    move p3, v1

    goto :goto_4

    :cond_7
    aget-byte p3, p1, p3

    mul-int/lit8 p3, p3, 0xa

    div-int/lit8 p3, p3, 0x8

    sub-int/2addr p3, v5

    .line 20
    :goto_4
    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0x7

    .line 21
    aget-byte v0, p1, p3

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x8

    sub-int/2addr v0, v5

    if-le v0, v2, :cond_8

    move p3, v1

    goto :goto_5

    :cond_8
    aget-byte p3, p1, p3

    mul-int/lit8 p3, p3, 0xa

    div-int/lit8 p3, p3, 0x8

    sub-int/2addr p3, v5

    .line 22
    :goto_5
    invoke-static {p3}, Lu0/d;->E2(I)V

    add-int/lit8 p3, p2, 0x8

    .line 23
    aget-byte v0, p1, p3

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x8

    sub-int/2addr v0, v5

    if-le v0, v2, :cond_9

    move p3, v1

    goto :goto_6

    :cond_9
    aget-byte p3, p1, p3

    mul-int/lit8 p3, p3, 0xa

    div-int/lit8 p3, p3, 0x8

    sub-int/2addr p3, v5

    .line 24
    :goto_6
    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/2addr p2, v2

    .line 25
    aget-byte p3, p1, p2

    mul-int/lit8 p3, p3, 0xa

    div-int/lit8 p3, p3, 0x8

    sub-int/2addr p3, v5

    if-le p3, v2, :cond_a

    goto :goto_7

    :cond_a
    aget-byte p1, p1, p2

    mul-int/lit8 p1, p1, 0xa

    div-int/lit8 p1, p1, 0x8

    add-int/lit8 v1, p1, -0x1

    .line 26
    :goto_7
    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_e

    .line 27
    :cond_b
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_19

    add-int/lit8 p2, p2, 0xd

    .line 28
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    int-to-double p2, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p2, v2

    double-to-int p2, p2

    .line 29
    rem-int/lit8 p3, p1, 0x2

    const/16 v0, 0x28

    if-ge p1, v0, :cond_d

    if-lez p3, :cond_c

    sub-int/2addr v0, p2

    sub-int/2addr v0, v5

    goto :goto_8

    :cond_c
    sub-int/2addr v0, p2

    :goto_8
    mul-int/lit8 v0, v0, 0xa

    rsub-int p1, v0, 0x3e8

    mul-int/2addr p3, v1

    sub-int/2addr p1, p3

    goto :goto_9

    :cond_d
    sub-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0xa

    add-int/lit16 p2, p2, 0x3e8

    mul-int/2addr p3, v1

    add-int p1, p2, p3

    :goto_9
    const/16 p2, 0x258

    if-le p1, p2, :cond_19

    .line 30
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto/16 :goto_e

    .line 31
    :cond_e
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_19

    add-int/lit8 p3, p2, 0x2

    .line 32
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    iput p3, p0, Lk0/c;->f:I

    add-int/2addr p2, v6

    .line 33
    aget-byte p1, p1, p2

    move p2, v3

    .line 34
    :goto_a
    iget-object p3, p0, Lk0/c;->g:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_10

    .line 35
    iget v0, p0, Lk0/c;->f:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_f

    if-eqz v0, :cond_10

    .line 36
    iput p2, p0, Lk0/c;->e:I

    goto :goto_b

    :cond_f
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_10
    :goto_b
    and-int/2addr p1, v4

    if-eqz p1, :cond_11

    .line 37
    array-length p1, p3

    if-ge p2, p1, :cond_19

    .line 38
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    .line 39
    :cond_11
    iget p1, p0, Lk0/c;->e:I

    array-length p2, p3

    if-ge p1, p2, :cond_12

    if-eq p1, v4, :cond_12

    .line 40
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 41
    :cond_12
    iput v4, p0, Lk0/c;->e:I

    goto :goto_e

    .line 42
    :cond_13
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_19

    add-int/lit8 p3, p2, 0x4

    .line 43
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 44
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 45
    iput p2, p0, Lk0/c;->d:I

    move p2, v3

    .line 46
    :goto_c
    iget-object p3, p0, Lk0/c;->g:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_15

    .line 47
    iget v0, p0, Lk0/c;->d:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_14

    if-eqz v0, :cond_15

    .line 48
    iput p2, p0, Lk0/c;->c:I

    goto :goto_d

    :cond_14
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_15
    :goto_d
    and-int/2addr p1, v4

    if-ne p1, v5, :cond_16

    .line 49
    array-length p1, p3

    if-ge p2, p1, :cond_19

    .line 50
    iget-byte p1, p0, Lk0/c;->j:B

    if-nez p1, :cond_19

    add-int/2addr p1, v5

    int-to-byte p1, p1

    .line 51
    iput-byte p1, p0, Lk0/c;->j:B

    .line 52
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 53
    iget-object p1, p0, Lk0/c;->k:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_e

    :cond_16
    if-nez p1, :cond_19

    .line 54
    iget p1, p0, Lk0/c;->c:I

    array-length p2, p3

    if-ge p1, p2, :cond_17

    if-eq p1, v4, :cond_17

    .line 55
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 56
    iget-object p1, p0, Lk0/c;->k:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 57
    iput-byte v3, p0, Lk0/c;->j:B

    .line 58
    :cond_17
    iput v4, p0, Lk0/c;->c:I

    goto :goto_e

    .line 59
    :cond_18
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_19
    :goto_e
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/c;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/c;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/c;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/c;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/c;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x8

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
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x27

    .line 1
    invoke-virtual {p0, p1}, Lk0/c;->i3(I)V

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x26

    .line 2
    invoke-virtual {p0, p1}, Lk0/c;->i3(I)V

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x25

    .line 3
    invoke-virtual {p0, p1}, Lk0/c;->i3(I)V

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x24

    .line 4
    invoke-virtual {p0, p1}, Lk0/c;->i3(I)V

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x1a

    .line 5
    invoke-virtual {p0, p1}, Lk0/c;->i3(I)V

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x19

    .line 6
    invoke-virtual {p0, p1}, Lk0/c;->i3(I)V

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x18

    .line 7
    invoke-virtual {p0, p1}, Lk0/c;->i3(I)V

    goto :goto_0

    :pswitch_7
    const/16 p1, 0x17

    .line 8
    invoke-virtual {p0, p1}, Lk0/c;->i3(I)V

    goto :goto_0

    :pswitch_8
    const/16 p1, 0x16

    .line 9
    invoke-virtual {p0, p1}, Lk0/c;->i3(I)V

    goto :goto_0

    :pswitch_9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lk0/c;->i3(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final i3(I)V
    .locals 9

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x2

    aput v5, v1, v4

    const/16 v6, 0x21

    aput v6, v1, v5

    const/4 v7, 0x3

    aput p1, v1, v7

    const/4 v8, 0x4

    aput v4, v1, v8

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v0, [I

    aput v3, v0, v2

    aput v5, v0, v4

    aput v6, v0, v5

    aput p1, v0, v7

    aput v2, v0, v8

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
