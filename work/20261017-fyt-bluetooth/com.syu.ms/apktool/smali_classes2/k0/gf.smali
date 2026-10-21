.class public Lk0/gf;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/gf;->c:I

    const/16 v1, 0xa

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

    const/16 v2, 0x9

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/gf;->d:[[I

    .line 4
    new-instance v0, Lk0/gf$a;

    invoke-direct {v0, p0}, Lk0/gf$a;-><init>(Lk0/gf;)V

    iput-object v0, p0, Lk0/gf;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lk0/gf$b;

    invoke-direct {v0, p0}, Lk0/gf$b;-><init>(Lk0/gf;)V

    iput-object v0, p0, Lk0/gf;->f:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x12
        0x43
    .end array-data

    :array_1
    .array-data 4
        0x13
        0x44
    .end array-data

    :array_2
    .array-data 4
        0x14
        0x7
    .end array-data

    :array_3
    .array-data 4
        0x15
        0x8
    .end array-data

    :array_4
    .array-data 4
        0x16
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x17
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x50
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x51
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x52
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x53
        0x5
    .end array-data
.end method

.method public static synthetic a3(Lk0/gf;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/gf;->b3(Ljava/lang/String;)V

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

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->i:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    iget-object v0, p0, Lk0/gf;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/gf;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/gf;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/gf;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/gf;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lk0/gf;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 11

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0xff

    and-int/2addr p3, v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p3, v3, :cond_7

    const/4 v4, 0x5

    const/4 v5, 0x2

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v0

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v0

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 4
    aget-byte p3, p1, p3

    and-int/2addr p3, v0

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/2addr p2, v4

    .line 5
    aget-byte p1, p1, p2

    and-int/2addr p1, v0

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_4

    :pswitch_1
    add-int/2addr p2, v5

    .line 6
    aget-byte p3, p1, p2

    const/16 v0, 0x80

    and-int/2addr p3, v0

    const/16 v1, 0x32

    if-eqz p3, :cond_0

    .line 7
    aget-byte p1, p1, p2

    invoke-static {p1, v2, v0, v3, v1}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_4

    .line 8
    :cond_0
    aget-byte p1, p1, p2

    invoke-static {p1, v2, v2, v1}, Lk0/qt;->j(IIII)V

    goto/16 :goto_4

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 9
    aget-byte p3, p1, p3

    and-int/2addr p3, v0

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 10
    aget-byte p3, p1, p3

    and-int/2addr p3, v0

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 11
    aget-byte p3, p1, p3

    and-int/2addr p3, v0

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v4

    .line 12
    aget-byte p1, p1, p2

    and-int/2addr p1, v0

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_4

    :pswitch_3
    add-int/2addr p2, v5

    .line 13
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 14
    invoke-static {p2, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_1

    new-array p2, v3, [I

    shr-int/lit8 p3, p1, 0x1

    and-int/2addr p3, v3

    aput p3, p2, v2

    .line 15
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v3, [I

    shr-int/lit8 p3, p1, 0x0

    and-int/2addr p3, v3

    aput p3, p2, v2

    .line 16
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array p2, v3, [I

    shr-int/lit8 p3, p1, 0x0

    and-int/2addr p3, v3

    aput p3, p2, v2

    .line 17
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v3, [I

    shr-int/lit8 p3, p1, 0x1

    and-int/2addr p3, v3

    aput p3, p2, v2

    .line 18
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v3, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v3

    aput p3, p2, v2

    const/4 p3, 0x4

    .line 19
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v3, [I

    shr-int/lit8 v0, p1, 0x2

    and-int/2addr v0, v3

    aput v0, p2, v2

    .line 20
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v3, [I

    shr-int/lit8 v0, p1, 0x5

    and-int/2addr v0, v3

    aput v0, p2, v2

    .line 21
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v3, [I

    shr-int/2addr p1, p3

    and-int/2addr p1, v3

    aput p1, p2, v2

    .line 22
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_4
    add-int/lit8 p3, p2, 0x2

    .line 23
    aget-byte p3, p1, p3

    add-int/lit8 v1, p2, 0x3

    .line 24
    aget-byte v1, p1, v1

    add-int/lit8 v4, p2, 0x4

    .line 25
    aget-byte v5, p1, v4

    add-int/lit8 v6, p2, 0x5

    .line 26
    aget-byte v7, p1, v6

    add-int/lit8 p2, p2, 0x6

    .line 27
    aget-byte p2, p1, p2

    const/16 v8, 0xa

    new-array v9, v3, [I

    shr-int/lit8 v10, p3, 0x7

    and-int/2addr v10, v3

    aput v10, v9, v2

    .line 28
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0xb

    new-array v9, v3, [I

    shr-int/lit8 v10, p3, 0x6

    and-int/2addr v10, v3

    aput v10, v9, v2

    .line 29
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0xc

    new-array v9, v3, [I

    shr-int/lit8 v10, p3, 0x5

    and-int/2addr v10, v3

    aput v10, v9, v2

    .line 30
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0xd

    new-array v9, v3, [I

    shr-int/lit8 v10, p3, 0x4

    and-int/2addr v10, v3

    aput v10, v9, v2

    .line 31
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x10

    new-array v9, v3, [I

    shr-int/lit8 v10, p3, 0x3

    and-int/2addr v10, v3

    aput v10, v9, v2

    .line 32
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x3e

    new-array v9, v3, [I

    shr-int/lit8 v10, p3, 0x2

    and-int/2addr v10, v3

    aput v10, v9, v2

    .line 33
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x26

    new-array v9, v3, [I

    shr-int/lit8 v10, p3, 0x1

    and-int/2addr v10, v3

    aput v10, v9, v2

    .line 34
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x41

    new-array v9, v3, [I

    shr-int/2addr p3, v2

    and-int/2addr p3, v3

    aput p3, v9, v2

    .line 35
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v8, v3, [I

    shr-int/lit8 v9, v1, 0x7

    and-int/2addr v9, v3

    aput v9, v8, v2

    .line 36
    invoke-static {p3, v8}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v8, v3, [I

    shr-int/lit8 v9, v1, 0x6

    and-int/2addr v9, v3

    aput v9, v8, v2

    .line 37
    invoke-static {p3, v8}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v8, v3, [I

    shr-int/lit8 v9, v1, 0x5

    and-int/2addr v9, v3

    aput v9, v8, v2

    .line 38
    invoke-static {p3, v8}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v8, v3, [I

    and-int/lit8 v1, v1, 0xf

    aput v1, v8, v2

    .line 39
    invoke-static {p3, v8}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x50

    new-array v1, v3, [I

    shr-int/lit8 p2, p2, 0x7

    and-int/2addr p2, v3

    aput p2, v1, v2

    .line 40
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const-string p2, "persist.fyt.reversetemp"

    .line 41
    invoke-static {p2, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 42
    aget-byte p2, p1, v6

    and-int/lit16 v5, p2, 0xff

    .line 43
    aget-byte p1, p1, v4

    and-int/lit16 v7, p1, 0xff

    :cond_2
    and-int/lit16 p1, v5, 0xff

    const/4 p2, -0x3

    const/4 p3, -0x2

    const/16 v1, 0x1b

    if-nez p1, :cond_3

    new-array p1, v3, [I

    aput p3, p1, v2

    .line 44
    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_3
    if-ne p1, v0, :cond_4

    new-array p1, v3, [I

    aput p2, p1, v2

    .line 45
    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array v4, v3, [I

    aput p1, v4, v2

    .line 46
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    :goto_1
    and-int/lit16 p1, v7, 0xff

    const/16 v1, 0x1c

    if-nez p1, :cond_5

    new-array p1, v3, [I

    aput p3, p1, v2

    .line 47
    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_5
    if-ne p1, v0, :cond_6

    new-array p1, v3, [I

    aput p2, p1, v2

    .line 48
    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_6
    new-array p2, v3, [I

    aput p1, p2, v2

    .line 49
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_7
    add-int/lit8 p3, p2, 0x2

    .line 50
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 51
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 52
    iput p2, p0, Lk0/gf;->c:I

    move p2, v2

    .line 53
    :goto_2
    iget-object p3, p0, Lk0/gf;->d:[[I

    array-length v1, p3

    if-ge p2, v1, :cond_9

    .line 54
    iget v1, p0, Lk0/gf;->c:I

    aget-object v4, p3, p2

    aget v4, v4, v2

    if-ne v1, v4, :cond_8

    if-eqz v1, :cond_9

    .line 55
    iput p2, p0, Lk0/gf;->b:I

    goto :goto_3

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    and-int/2addr p1, v0

    if-ne p1, v3, :cond_a

    .line 56
    array-length p1, p3

    if-ge p2, p1, :cond_c

    .line 57
    aget-object p1, p3, p2

    aget p1, p1, v3

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    goto :goto_4

    :cond_a
    if-nez p1, :cond_c

    .line 58
    iget p1, p0, Lk0/gf;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_b

    if-eq p1, v0, :cond_b

    .line 59
    aget-object p1, p3, p1

    aget p1, p1, v3

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 60
    :cond_b
    iput v0, p0, Lk0/gf;->b:I

    :cond_c
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x21
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
    iget-object v0, p0, Lk0/gf;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/gf;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/gf;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/gf;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/gf;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/gf;->f:Ljava/lang/Runnable;

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
    .locals 0

    return-void
.end method

.method public final b3(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    add-int/lit8 v0, v1, 0x4

    .line 2
    new-array v2, v0, [I

    const/4 v3, 0x0

    const/16 v4, -0x1d

    .line 3
    aput v4, v2, v3

    const/16 v3, -0x7d

    const/4 v4, 0x1

    .line 4
    aput v3, v2, v4

    const/4 v3, 0x2

    add-int/lit8 v4, v1, 0x1

    int-to-byte v4, v4

    .line 5
    aput v4, v2, v3

    const/4 v3, 0x3

    or-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    .line 6
    aput v1, v2, v3

    const/4 v1, 0x4

    :goto_1
    if-ge v1, v0, :cond_2

    add-int/lit8 v3, v1, -0x4

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method
