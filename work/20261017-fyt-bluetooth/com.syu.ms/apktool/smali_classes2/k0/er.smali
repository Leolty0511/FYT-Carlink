.class public Lk0/er;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/er;->c:I

    const/16 v1, 0x8

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v6, 0x3

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v7, 0x4

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v8, 0x5

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v9, 0x6

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v10, 0x7

    aput-object v4, v2, v10

    iput-object v2, p0, Lk0/er;->d:[[I

    .line 4
    iput v0, p0, Lk0/er;->f:I

    const/16 v2, 0xe

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_8

    aput-object v4, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_9

    aput-object v0, v2, v5

    new-array v0, v3, [I

    fill-array-data v0, :array_a

    aput-object v0, v2, v3

    new-array v0, v3, [I

    fill-array-data v0, :array_b

    aput-object v0, v2, v6

    new-array v0, v3, [I

    fill-array-data v0, :array_c

    aput-object v0, v2, v7

    new-array v0, v3, [I

    fill-array-data v0, :array_d

    aput-object v0, v2, v8

    new-array v0, v3, [I

    fill-array-data v0, :array_e

    aput-object v0, v2, v9

    new-array v0, v3, [I

    fill-array-data v0, :array_f

    aput-object v0, v2, v10

    new-array v0, v3, [I

    fill-array-data v0, :array_10

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_11

    const/16 v1, 0x9

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_12

    const/16 v1, 0xa

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_13

    const/16 v1, 0xb

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_14

    const/16 v1, 0xc

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_15

    const/16 v1, 0xd

    aput-object v0, v2, v1

    iput-object v2, p0, Lk0/er;->g:[[I

    .line 6
    new-instance v0, Lk0/er$a;

    invoke-direct {v0, p0}, Lk0/er$a;-><init>(Lk0/er;)V

    iput-object v0, p0, Lk0/er;->h:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/er$b;

    invoke-direct {v0, p0}, Lk0/er$b;-><init>(Lk0/er;)V

    iput-object v0, p0, Lk0/er;->i:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/er$c;

    invoke-direct {v0, p0}, Lk0/er$c;-><init>(Lk0/er;)V

    iput-object v0, p0, Lk0/er;->j:Ljava/lang/Runnable;

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
        0x1
        0x3
    .end array-data

    :array_9
    .array-data 4
        0x2
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x3
        0x2
    .end array-data

    :array_b
    .array-data 4
        0x4
        0x36
    .end array-data

    :array_c
    .array-data 4
        0x5
        0xc
    .end array-data

    :array_d
    .array-data 4
        0x6
        0x8
    .end array-data

    :array_e
    .array-data 4
        0x7
        0x7
    .end array-data

    :array_f
    .array-data 4
        0x8
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x9
        0x9
    .end array-data

    :array_11
    .array-data 4
        0xa
        0x6
    .end array-data

    :array_12
    .array-data 4
        0xb
        0x37
    .end array-data

    :array_13
    .array-data 4
        0xc
        0x12
    .end array-data

    :array_14
    .array-data 4
        0xd
        0x1
    .end array-data

    :array_15
    .array-data 4
        0xe
        0x18
    .end array-data
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

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->j:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    iput v2, v0, Lk0/mt;->i:I

    .line 8
    sget v2, Lk0/nt;->a:I

    const v3, 0xf01c8

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iput v1, v0, Lk0/mt;->i:I

    .line 10
    :goto_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/er;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/er;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/er;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/er;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/er;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/er;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/er;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    iget-object v0, p0, Lk0/er;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x28

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x29

    const v8, 0x5601c7

    const/16 v9, 0xff

    if-eq v0, v1, :cond_18

    const/16 v1, 0x40

    const/16 v10, 0xc

    if-eq v0, v1, :cond_17

    const/16 v1, 0x7d

    const/16 v11, 0xb

    if-eq v0, v1, :cond_15

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_14

    const/16 p3, 0x12

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    new-array v0, v7, [I

    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v8, p1, v1

    shr-int/lit8 v8, v8, 0x7

    and-int/2addr v8, v7

    aput v8, v0, v6

    const/16 v8, 0xa

    invoke-static {v8, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v7, [I

    .line 3
    aget-byte v8, p1, v1

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v7

    aput v8, v0, v6

    invoke-static {v11, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v7, [I

    .line 4
    aget-byte v8, p1, v1

    shr-int/2addr v8, v2

    and-int/2addr v8, v7

    aput v8, v0, v6

    invoke-static {v10, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xd

    new-array v8, v7, [I

    .line 5
    aget-byte v10, p1, v1

    shr-int/2addr v10, v4

    and-int/2addr v10, v7

    aput v10, v8, v6

    invoke-static {v0, v8}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x3e

    new-array v8, v7, [I

    .line 6
    aget-byte v10, p1, v1

    shr-int/2addr v10, v5

    and-int/2addr v10, v7

    aput v10, v8, v6

    invoke-static {v0, v8}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x10

    new-array v8, v7, [I

    .line 7
    aget-byte v10, p1, v1

    shr-int/2addr v10, v7

    and-int/2addr v10, v7

    aput v10, v8, v6

    invoke-static {v0, v8}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x41

    new-array v8, v7, [I

    .line 8
    aget-byte v1, p1, v1

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    aput v1, v8, v6

    invoke-static {v0, v8}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v0, p2, 0x3

    .line 9
    aget-byte v0, p1, v0

    and-int/2addr v0, v9

    if-eq v0, v7, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    move v0, v6

    move v1, v0

    :goto_0
    move v3, v1

    goto :goto_1

    :cond_0
    move v1, v6

    move v3, v1

    move v0, v7

    goto :goto_1

    :cond_1
    move v1, v6

    move v0, v7

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v6

    move v1, v0

    move v3, v7

    goto :goto_1

    :cond_3
    move v0, v6

    move v1, v7

    goto :goto_0

    :cond_4
    move v0, v6

    move v3, v0

    move v1, v7

    :goto_1
    new-array v4, v7, [I

    aput v0, v4, v6

    .line 10
    invoke-static {p3, v4}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v0, v7, [I

    aput v1, v0, v6

    .line 11
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v7, [I

    aput v3, v0, v6

    .line 12
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v7, [I

    add-int/lit8 v1, p2, 0x4

    .line 13
    aget-byte v1, p1, v1

    and-int/2addr v1, v9

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/2addr p2, v2

    .line 14
    aget-byte p1, p1, p2

    and-int/2addr p1, v9

    const/16 p2, 0x1b

    new-array p3, v7, [I

    aput p1, p3, v6

    .line 15
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 16
    aget-byte v0, p1, p3

    and-int/2addr v0, v9

    add-int/lit8 v1, p2, 0x3

    .line 17
    aget-byte v4, p1, v1

    and-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x4

    .line 18
    aget-byte v8, p1, v5

    and-int/2addr v8, v9

    add-int/2addr p2, v2

    .line 19
    aget-byte v2, p1, p2

    and-int/2addr v2, v9

    if-ne v0, v9, :cond_5

    if-ne v4, v9, :cond_5

    if-ne v8, v9, :cond_5

    if-ne v2, v9, :cond_5

    .line 20
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_2

    .line 21
    :cond_5
    sget v6, Ll0/c0;->g:I

    if-ne v6, v0, :cond_6

    sget v6, Ll0/c0;->h:I

    if-ne v6, v4, :cond_6

    sget v6, Ll0/c0;->i:I

    if-ne v6, v8, :cond_6

    sget v6, Ll0/c0;->j:I

    if-eq v6, v2, :cond_7

    .line 22
    :cond_6
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_7

    .line 23
    invoke-static {v7}, Lu0/d;->C2(I)V

    .line 24
    sput v3, Ll0/c0;->k:I

    .line 25
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 26
    :cond_7
    :goto_2
    sput v0, Ll0/c0;->g:I

    .line 27
    sput v4, Ll0/c0;->h:I

    .line 28
    sput v8, Ll0/c0;->i:I

    .line 29
    sput v2, Ll0/c0;->j:I

    .line 30
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 31
    aget-byte p3, p1, v1

    and-int/2addr p3, v9

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 32
    aget-byte p3, p1, v5

    and-int/2addr p3, v9

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 33
    aget-byte p1, p1, p2

    and-int/2addr p1, v9

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 34
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 35
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 36
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v2

    .line 37
    aget-byte p1, p1, p2

    and-int/2addr p1, v9

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :pswitch_3
    add-int/lit8 v0, p2, 0x2

    .line 38
    aget-byte v0, p1, v0

    add-int/2addr p2, v4

    .line 39
    aget-byte p1, p1, p2

    and-int/lit16 p2, v0, 0xff

    .line 40
    iput p2, p0, Lk0/er;->f:I

    move p2, v6

    .line 41
    :goto_3
    iget-object v0, p0, Lk0/er;->g:[[I

    array-length v1, v0

    if-ge p2, v1, :cond_9

    .line 42
    iget v1, p0, Lk0/er;->f:I

    aget-object v5, v0, p2

    aget v5, v5, v6

    if-ne v1, v5, :cond_8

    if-eqz v1, :cond_9

    .line 43
    iput p2, p0, Lk0/er;->e:I

    goto :goto_4

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 44
    :cond_9
    :goto_4
    iget v1, p0, Lk0/er;->f:I

    if-eq v1, v2, :cond_c

    and-int/2addr p1, v9

    if-ne p1, v7, :cond_a

    .line 45
    array-length p1, v0

    if-ge p2, p1, :cond_1d

    .line 46
    aget-object p1, v0, p2

    aget p1, p1, v7

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_a
    if-nez p1, :cond_1d

    .line 47
    iget p1, p0, Lk0/er;->e:I

    array-length p2, v0

    if-ge p1, p2, :cond_b

    if-eq p1, v9, :cond_b

    .line 48
    aget-object p1, v0, p1

    aget p1, p1, v7

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 49
    :cond_b
    iput v9, p0, Lk0/er;->e:I

    goto/16 :goto_9

    :cond_c
    and-int/2addr p1, v9

    if-ne p1, v7, :cond_1d

    .line 50
    sget p1, Lk0/nt;->a:I

    if-eq p1, v8, :cond_d

    .line 51
    invoke-static {v10, v6}, Ll0/b0;->l0(II)V

    .line 52
    invoke-static {v10, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 53
    :cond_d
    sget p1, Lh0/c;->E:I

    if-eq p1, v4, :cond_f

    if-eq p1, v3, :cond_e

    if-eq p1, v2, :cond_f

    .line 54
    invoke-static {p3, v6}, Ll0/b0;->l0(II)V

    .line 55
    invoke-static {p3, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 56
    :cond_e
    invoke-static {p3, v6}, Ll0/b0;->l0(II)V

    .line 57
    invoke-static {p3, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_f
    const/16 p1, 0x1a

    .line 58
    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    .line 59
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :pswitch_4
    add-int/lit8 p3, p2, 0x2

    .line 60
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    .line 61
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 62
    iput p2, p0, Lk0/er;->c:I

    move p2, v6

    .line 63
    :goto_5
    iget-object p3, p0, Lk0/er;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_11

    .line 64
    iget v0, p0, Lk0/er;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v6

    if-ne v0, v1, :cond_10

    if-eqz v0, :cond_11

    .line 65
    iput p2, p0, Lk0/er;->b:I

    goto :goto_6

    :cond_10
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_11
    :goto_6
    and-int/2addr p1, v9

    if-ne p1, v7, :cond_12

    .line 66
    array-length p1, p3

    if-ge p2, p1, :cond_1d

    .line 67
    aget-object p1, p3, p2

    aget p1, p1, v7

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_12
    if-nez p1, :cond_1d

    .line 68
    iget p1, p0, Lk0/er;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_13

    if-eq p1, v9, :cond_13

    .line 69
    aget-object p1, p3, p1

    aget p1, p1, v7

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 70
    :cond_13
    iput v9, p0, Lk0/er;->b:I

    goto/16 :goto_9

    .line 71
    :cond_14
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v5

    sub-int/2addr p3, v5

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_15
    add-int/lit8 p3, p2, 0x2

    .line 72
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    if-eq p3, v7, :cond_16

    goto/16 :goto_9

    :cond_16
    add-int/2addr p2, v4

    .line 73
    aget-byte p3, p1, p2

    shr-int/2addr p3, v4

    and-int/2addr p3, v7

    aget-byte v0, p1, p2

    shr-int/2addr v0, v3

    and-int/2addr v0, v7

    invoke-static {p3, v0, v6}, Ll0/c0;->a(III)V

    .line 74
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v1, v5, [I

    aput v11, v1, v6

    aget-byte p1, p1, p2

    and-int/2addr p1, v9

    aput p1, v1, v7

    const/4 p1, 0x0

    invoke-static {p3, v0, v1, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_17
    const/16 p3, 0x78

    new-array v0, v7, [I

    add-int/lit8 v1, p2, 0x2

    .line 75
    aget-byte v8, p1, v1

    shr-int/2addr v8, v2

    and-int/2addr v8, v7

    aput v8, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x62

    new-array v0, v7, [I

    .line 76
    aget-byte v8, p1, v1

    shr-int/2addr v8, v3

    and-int/2addr v8, v7

    aput v8, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v7, [I

    .line 77
    aget-byte v8, p1, v1

    shr-int/2addr v8, v5

    and-int/2addr v8, v4

    aput v8, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v7, [I

    .line 78
    aget-byte v1, p1, v1

    shr-int/2addr v1, v6

    and-int/2addr v1, v4

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v7, [I

    add-int/lit8 v1, p2, 0x3

    .line 79
    aget-byte v1, p1, v1

    and-int/2addr v1, v9

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v7, [I

    add-int/lit8 v1, p2, 0x4

    .line 80
    aget-byte v1, p1, v1

    and-int/2addr v1, v9

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x79

    new-array v0, v7, [I

    add-int/lit8 v1, p2, 0x5

    .line 81
    aget-byte v8, p1, v1

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v7

    aput v8, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7a

    new-array v0, v7, [I

    .line 82
    aget-byte v8, p1, v1

    shr-int/lit8 v2, v8, 0x5

    and-int/2addr v2, v7

    aput v2, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v7, [I

    .line 83
    aget-byte v2, p1, v1

    shr-int/2addr v2, v3

    and-int/2addr v2, v7

    aput v2, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x68

    new-array v0, v7, [I

    .line 84
    aget-byte v2, p1, v1

    shr-int/2addr v2, v4

    and-int/2addr v2, v7

    aput v2, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v7, [I

    .line 85
    aget-byte v2, p1, v1

    shr-int/2addr v2, v5

    and-int/2addr v2, v7

    aput v2, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v7, [I

    .line 86
    aget-byte v1, p1, v1

    shr-int/2addr v1, v6

    and-int/2addr v1, v4

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6b

    new-array v0, v7, [I

    add-int/lit8 v1, p2, 0x6

    .line 87
    aget-byte v2, p1, v1

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v7

    aput v2, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6c

    new-array v0, v7, [I

    .line 88
    aget-byte v2, p1, v1

    shr-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v7

    aput v2, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6d

    new-array v0, v7, [I

    .line 89
    aget-byte v2, p1, v1

    shr-int/2addr v2, v3

    and-int/2addr v2, v4

    aput v2, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6e

    new-array v0, v7, [I

    .line 90
    aget-byte v2, p1, v1

    shr-int/2addr v2, v4

    and-int/2addr v2, v7

    aput v2, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6f

    new-array v0, v7, [I

    .line 91
    aget-byte v1, p1, v1

    shr-int/2addr v1, v6

    and-int/lit8 v1, v1, 0x7

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x77

    new-array v0, v7, [I

    add-int/lit8 v1, p2, 0x7

    .line 92
    aget-byte v2, p1, v1

    shr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0xf

    aput v2, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7b

    new-array v0, v7, [I

    .line 93
    aget-byte v2, p1, v1

    shr-int/2addr v2, v4

    and-int/2addr v2, v7

    aput v2, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7c

    new-array v0, v7, [I

    .line 94
    aget-byte v2, p1, v1

    shr-int/2addr v2, v5

    and-int/2addr v2, v7

    aput v2, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x70

    new-array v0, v7, [I

    .line 95
    aget-byte v2, p1, v1

    shr-int/2addr v2, v7

    and-int/2addr v2, v7

    aput v2, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x71

    new-array v0, v7, [I

    .line 96
    aget-byte v1, p1, v1

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x72

    new-array v0, v7, [I

    add-int/lit8 v1, p2, 0x8

    .line 97
    aget-byte v1, p1, v1

    and-int/2addr v1, v9

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x73

    new-array v0, v7, [I

    add-int/lit8 v1, p2, 0x9

    .line 98
    aget-byte v1, p1, v1

    and-int/2addr v1, v9

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x74

    new-array v0, v7, [I

    add-int/lit8 v1, p2, 0xa

    .line 99
    aget-byte v1, p1, v1

    and-int/2addr v1, v9

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x75

    new-array v0, v7, [I

    add-int/lit8 v1, p2, 0xb

    .line 100
    aget-byte v1, p1, v1

    and-int/2addr v1, v9

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x76

    new-array v0, v7, [I

    add-int/2addr p2, v10

    .line 101
    aget-byte p1, p1, p2

    and-int/2addr p1, v9

    aput p1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    .line 102
    :cond_18
    sget p3, Lk0/nt;->a:I

    const v0, 0x5501c7

    if-eq p3, v0, :cond_1a

    if-eq p3, v8, :cond_1a

    const v0, 0xf01c8

    if-ne p3, v0, :cond_19

    goto :goto_7

    :cond_19
    add-int/lit8 p3, p2, 0x3

    .line 103
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    add-int/2addr p2, v5

    aget-byte p1, p1, p2

    and-int/2addr p1, v9

    const/16 p2, 0x15c2

    invoke-static {p3, p1, v6, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_9

    :cond_1a
    :goto_7
    add-int/lit8 p3, p2, 0x3

    .line 104
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    add-int/2addr p2, v5

    aget-byte p1, p1, p2

    and-int/2addr p1, v9

    const/16 p2, 0x2315

    invoke-static {p3, p1, v6, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_9

    :cond_1b
    const-string p3, "persist.syu.reversefrontdoor"

    .line 105
    invoke-static {p3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_1c

    new-array p3, v7, [I

    add-int/lit8 v0, p2, 0x2

    .line 106
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v7

    aput v1, p3, v6

    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v7, [I

    .line 107
    aget-byte v0, p1, v0

    shr-int/lit8 v0, v0, 0x7

    and-int/2addr v0, v7

    aput v0, p3, v6

    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1c
    new-array p3, v7, [I

    add-int/lit8 v0, p2, 0x2

    .line 108
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v7

    aput v1, p3, v6

    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v7, [I

    .line 109
    aget-byte v0, p1, v0

    shr-int/lit8 v0, v0, 0x6

    and-int/2addr v0, v7

    aput v0, p3, v6

    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    :goto_8
    new-array p3, v7, [I

    add-int/2addr p2, v5

    .line 110
    aget-byte v0, p1, p2

    shr-int/2addr v0, v3

    and-int/2addr v0, v7

    aput v0, p3, v6

    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v7, [I

    .line 111
    aget-byte v0, p1, p2

    shr-int/2addr v0, v2

    and-int/2addr v0, v7

    aput v0, p3, v6

    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v7, [I

    .line 112
    aget-byte p1, p1, p2

    shr-int/2addr p1, v4

    and-int/2addr p1, v7

    aput p1, p3, v6

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    :cond_1d
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_3
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
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/er;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/er;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/er;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/er;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/er;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/er;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/er;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/er;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x7d

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

    const/16 p3, 0xe3

    const/4 p4, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    const/16 v5, -0x37

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, -0x58

    aput p3, p1, v4

    aput v3, p1, v3

    .line 1
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v0, [I

    aput p3, p1, v2

    const/16 p3, -0x70

    aput p3, p1, v4

    aput v4, p1, v3

    .line 2
    aget p2, p2, v2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x9

    new-array p1, p1, [I

    aput p3, p1, v2

    aput v5, p1, v4

    const/4 p3, 0x6

    aput p3, p1, v3

    .line 3
    aget v2, p2, v2

    aput v2, p1, v1

    aget v2, p2, v4

    aput v2, p1, v0

    aget v2, p2, v3

    aput v2, p1, p4

    aget v1, p2, v1

    aput v1, p1, p3

    const/4 p3, 0x7

    aget v0, p2, v0

    aput v0, p1, p3

    const/16 p3, 0x8

    aget p2, p2, p4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, p4, [I

    aput p3, p1, v2

    aput v5, p1, v4

    aput v3, p1, v3

    .line 4
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, -0x38

    aput p3, p1, v4

    aput v3, p1, v3

    .line 5
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
