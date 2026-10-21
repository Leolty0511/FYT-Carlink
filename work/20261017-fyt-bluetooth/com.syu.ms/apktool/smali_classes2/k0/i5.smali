.class public Lk0/i5;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/i5;->c:I

    const/16 v1, 0x8

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

    const/4 v2, 0x7

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/i5;->d:[[I

    .line 4
    new-instance v0, Lk0/i5$a;

    invoke-direct {v0, p0}, Lk0/i5$a;-><init>(Lk0/i5;)V

    iput-object v0, p0, Lk0/i5;->e:Ljava/lang/Runnable;

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
        0xa
        0x1a
    .end array-data

    :array_7
    .array-data 4
        0xb
        0x9
    .end array-data
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

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Ly0/g;->d:Lo1/y;

    sget-object v1, Ll0/c0;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Ly0/g;->e:Lo1/y;

    sget-object v1, Ll0/c0;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Ll0/c0;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Ll0/c0;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->a:Lo1/y;

    sget-object v1, Ll0/c0;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lu0/c;->t:Lo1/y;

    sget-object v1, Ll0/c0;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->s:Lo1/y;

    sget-object v1, Ll0/c0;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    :cond_0
    iget-object v0, p0, Lk0/i5;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 9

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x25

    const/4 v2, 0x1

    if-eq v0, v1, :cond_d

    const/16 v1, 0x26

    const/4 v3, 0x0

    if-eq v0, v1, :cond_c

    const/16 v1, 0x30

    if-eq v0, v1, :cond_b

    const/16 p3, 0xff

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 2
    :pswitch_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    add-int/lit8 v0, p2, 0x2

    .line 3
    aget-byte v0, p1, v0

    and-int/2addr v0, p3

    invoke-static {v0}, Ll0/c0;->O0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->D2(I)V

    add-int/lit8 v0, p2, 0x3

    .line 4
    aget-byte v0, p1, v0

    and-int/2addr v0, p3

    invoke-static {v0}, Ll0/c0;->O0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->E2(I)V

    add-int/lit8 v0, p2, 0x4

    .line 5
    aget-byte v0, p1, v0

    and-int/2addr v0, p3

    invoke-static {v0}, Ll0/c0;->O0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->F2(I)V

    add-int/lit8 p2, p2, 0x5

    .line 6
    aget-byte p1, p1, p2

    and-int/2addr p1, p3

    invoke-static {p1}, Ll0/c0;->O0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_4

    .line 7
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    add-int/lit8 v0, p2, 0x2

    .line 8
    aget-byte v0, p1, v0

    and-int/2addr v0, p3

    invoke-static {v0}, Ll0/c0;->O0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->R2(I)V

    add-int/lit8 v0, p2, 0x3

    .line 9
    aget-byte v0, p1, v0

    and-int/2addr v0, p3

    invoke-static {v0}, Ll0/c0;->O0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    add-int/lit8 v0, p2, 0x4

    .line 10
    aget-byte v0, p1, v0

    and-int/2addr v0, p3

    invoke-static {v0}, Ll0/c0;->O0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->T2(I)V

    add-int/lit8 p2, p2, 0x5

    .line 11
    aget-byte p1, p1, p2

    and-int/2addr p1, p3

    invoke-static {p1}, Ll0/c0;->O0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_4

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 12
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 13
    aget-byte v0, p1, v0

    const/16 v1, 0xa

    new-array v4, v2, [I

    shr-int/lit8 v5, p3, 0x7

    and-int/2addr v5, v2

    aput v5, v4, v3

    .line 14
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb

    new-array v4, v2, [I

    shr-int/lit8 v5, p3, 0x6

    and-int/2addr v5, v2

    aput v5, v4, v3

    .line 15
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v4, v2, [I

    shr-int/lit8 v5, p3, 0x5

    and-int/2addr v5, v2

    aput v5, v4, v3

    .line 16
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v4, v2, [I

    shr-int/lit8 v5, p3, 0x3

    and-int/2addr v5, v2

    aput v5, v4, v3

    .line 17
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x3e

    new-array v4, v2, [I

    shr-int/lit8 v5, p3, 0x2

    and-int/2addr v5, v2

    aput v5, v4, v3

    .line 18
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    new-array v1, v2, [I

    shr-int/2addr p3, v2

    and-int/2addr p3, v2

    aput p3, v1, v3

    const/16 p3, 0xf

    .line 19
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x12

    new-array v4, v2, [I

    shr-int/lit8 v5, v0, 0x7

    and-int/2addr v5, v2

    aput v5, v4, v3

    .line 20
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v4, v2, [I

    shr-int/lit8 v5, v0, 0x6

    and-int/2addr v5, v2

    aput v5, v4, v3

    .line 21
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v4, v2, [I

    shr-int/lit8 v5, v0, 0x5

    and-int/2addr v5, v2

    aput v5, v4, v3

    .line 22
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x15

    new-array v4, v2, [I

    and-int/2addr v0, p3

    aput v0, v4, v3

    .line 23
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v0, p2, 0x4

    .line 24
    aget-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x5

    .line 25
    aget-byte v4, p1, p2

    const-string v5, "persist.fyt.reversetemp"

    .line 26
    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 27
    aget-byte v1, p1, p2

    .line 28
    aget-byte v4, p1, v0

    :cond_0
    const/4 p1, -0x1

    const/4 p2, -0x3

    const/4 v0, -0x2

    const/16 v5, 0x1f

    const/16 v6, 0x39

    if-eq v1, v5, :cond_3

    if-eq v1, v6, :cond_2

    if-le v1, p3, :cond_1

    if-ge v1, v6, :cond_1

    add-int/lit8 v1, v1, -0x20

    mul-int/lit8 v1, v1, 0x5

    add-int/lit16 v1, v1, 0xa0

    goto :goto_0

    :cond_1
    move v1, p1

    goto :goto_0

    :cond_2
    move v1, p2

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    const/16 v7, 0x1b

    new-array v8, v2, [I

    aput v1, v8, v3

    .line 29
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    if-eq v4, v5, :cond_5

    if-eq v4, v6, :cond_4

    if-le v4, p3, :cond_6

    if-ge v4, v6, :cond_6

    add-int/lit8 v4, v4, -0x20

    mul-int/lit8 v4, v4, 0x5

    add-int/lit16 p1, v4, 0xa0

    goto :goto_1

    :cond_4
    move p1, p2

    goto :goto_1

    :cond_5
    move p1, v0

    :cond_6
    :goto_1
    const/16 p2, 0x1c

    new-array p3, v2, [I

    aput p1, p3, v3

    .line 30
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    .line 31
    :pswitch_3
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    add-int/lit8 v0, p2, 0x2

    .line 32
    aget-byte v0, p1, v0

    add-int/lit8 p2, p2, 0x3

    .line 33
    aget-byte p1, p1, p2

    and-int/lit16 p2, v0, 0xff

    .line 34
    iput p2, p0, Lk0/i5;->c:I

    move p2, v3

    .line 35
    :goto_2
    iget-object v0, p0, Lk0/i5;->d:[[I

    array-length v1, v0

    if-ge p2, v1, :cond_8

    .line 36
    iget v1, p0, Lk0/i5;->c:I

    aget-object v4, v0, p2

    aget v4, v4, v3

    if-ne v1, v4, :cond_7

    if-eqz v1, :cond_8

    .line 37
    iput p2, p0, Lk0/i5;->b:I

    goto :goto_3

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    and-int/2addr p1, p3

    if-eqz p1, :cond_9

    .line 38
    array-length p1, v0

    if-ge p2, p1, :cond_e

    .line 39
    aget-object p1, v0, p2

    aget p1, p1, v2

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_4

    .line 40
    :cond_9
    iget p1, p0, Lk0/i5;->b:I

    array-length p2, v0

    if-ge p1, p2, :cond_a

    if-eq p1, p3, :cond_a

    .line 41
    aget-object p1, v0, p1

    aget p1, p1, v2

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    .line 42
    :cond_a
    iput p3, p0, Lk0/i5;->b:I

    goto :goto_4

    .line 43
    :cond_b
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    add-int/lit8 p3, p2, 0x2

    .line 44
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    const/16 p2, 0x4ec

    invoke-static {p3, p1, v3, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_4

    .line 45
    :cond_d
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_e

    add-int/lit8 p2, p2, 0x2

    .line 46
    aget-byte p1, p1, p2

    shr-int/2addr p1, v2

    and-int/2addr p1, v2

    .line 47
    invoke-static {p1}, Lu0/d;->C2(I)V

    :cond_e
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ly0/g;->d:Lo1/y;

    sget-object v1, Ll0/c0;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->e:Lo1/y;

    sget-object v1, Ll0/c0;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Ll0/c0;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Ll0/c0;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    sget-object v1, Ll0/c0;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->t:Lo1/y;

    sget-object v1, Ll0/c0;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->s:Lo1/y;

    sget-object v1, Ll0/c0;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lk0/i5;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

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
    .locals 0

    return-void
.end method
