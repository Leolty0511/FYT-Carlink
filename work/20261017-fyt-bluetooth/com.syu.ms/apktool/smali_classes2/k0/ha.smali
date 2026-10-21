.class public Lk0/ha;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ha;->c:I

    const/16 v1, 0x16

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

    new-array v2, v2, [I

    fill-array-data v2, :array_15

    const/16 v3, 0x15

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/ha;->d:[[I

    .line 4
    iput v0, p0, Lk0/ha;->e:I

    .line 5
    new-instance v0, Lk0/ha$a;

    invoke-direct {v0, p0}, Lk0/ha$a;-><init>(Lk0/ha;)V

    iput-object v0, p0, Lk0/ha;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/ha$b;

    invoke-direct {v0, p0}, Lk0/ha$b;-><init>(Lk0/ha;)V

    iput-object v0, p0, Lk0/ha;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/ha$c;

    invoke-direct {v0, p0}, Lk0/ha$c;-><init>(Lk0/ha;)V

    iput-object v0, p0, Lk0/ha;->h:Ljava/lang/Runnable;

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
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_6
    .array-data 4
        0xf
        0x23
    .end array-data

    :array_7
    .array-data 4
        0x10
        0x20
    .end array-data

    :array_8
    .array-data 4
        0x11
        0x21
    .end array-data

    :array_9
    .array-data 4
        0x12
        0x1d
    .end array-data

    :array_a
    .array-data 4
        0x14
        0x2
    .end array-data

    :array_b
    .array-data 4
        0x1e
        0x2
    .end array-data

    :array_c
    .array-data 4
        0xf0
        0x7
    .end array-data

    :array_d
    .array-data 4
        0xf1
        0x8
    .end array-data

    :array_e
    .array-data 4
        0x34
        0x15
    .end array-data

    :array_f
    .array-data 4
        0x33
        0x1
    .end array-data

    :array_10
    .array-data 4
        0x3f
        0x0
    .end array-data

    :array_11
    .array-data 4
        0x54
        0xb
    .end array-data

    :array_12
    .array-data 4
        0x57
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x5a
        0xc
    .end array-data

    :array_14
    .array-data 4
        0x5b
        0x19
    .end array-data

    :array_15
    .array-data 4
        0x56
        0x27
    .end array-data
.end method

.method public static synthetic c3(Lk0/ha;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ha;->b3(I)V

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
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/ha;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/ha;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/ha;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/ha;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/ha;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/ha;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/ha;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v2, 0x0

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 10
    iput v1, v0, Lk0/mt;->e:I

    .line 11
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 12
    iput v2, v0, Lk0/mt;->i:I

    .line 13
    iput v1, v0, Lk0/mt;->g:I

    .line 14
    iput v1, v0, Lk0/mt;->o:I

    .line 15
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v2, p0, Lk0/ha;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x16

    const v2, 0xff00

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_15

    const/16 v1, 0x29

    const/16 v6, 0x35

    const/4 v7, 0x7

    if-eq v0, v1, :cond_8

    const/16 v1, 0x30

    const/4 v8, 0x2

    if-eq v0, v1, :cond_7

    if-eq v0, v6, :cond_6

    const/16 p3, 0x65

    if-eq v0, p3, :cond_5

    const/16 p3, 0x67

    const/4 v1, 0x4

    if-eq v0, p3, :cond_4

    const/4 p3, 0x5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_f

    :pswitch_0
    add-int/lit8 v0, p2, 0x2

    .line 2
    aget-byte v0, p1, v0

    add-int/lit8 v2, p2, 0x4

    .line 3
    aget-byte v2, p1, v2

    add-int/lit8 v6, p2, 0x5

    .line 4
    aget-byte v6, p1, v6

    add-int/2addr p2, v7

    .line 5
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 6
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    new-array p2, v5, [I

    shr-int/lit8 v9, v0, 0x7

    and-int/2addr v9, v5

    aput v9, p2, v4

    .line 7
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 v9, v0, 0x6

    and-int/2addr v9, v5

    aput v9, p2, v4

    .line 8
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array p2, v5, [I

    shr-int/lit8 v9, v0, 0x6

    and-int/2addr v9, v5

    aput v9, p2, v4

    .line 9
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 v9, v0, 0x7

    and-int/2addr v9, v5

    aput v9, p2, v4

    .line 10
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v5, [I

    shr-int/lit8 v9, v0, 0x5

    and-int/2addr v9, v5

    aput v9, p2, v4

    .line 11
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 v1, v0, 0x4

    and-int/2addr v1, v5

    aput v1, p2, v4

    .line 12
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 v1, v0, 0x3

    and-int/2addr v1, v5

    aput v1, p2, v4

    .line 13
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, v0, 0x2

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 14
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x77

    new-array p3, v5, [I

    shr-int/lit8 v0, v2, 0x7

    and-int/2addr v0, v5

    aput v0, p3, v4

    .line 15
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x78

    new-array p3, v5, [I

    shr-int/lit8 v0, v2, 0x4

    and-int/2addr v0, v7

    aput v0, p3, v4

    .line 16
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x75

    new-array p3, v5, [I

    shr-int/lit8 v0, v2, 0x3

    and-int/2addr v0, v5

    aput v0, p3, v4

    .line 17
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x74

    new-array p3, v5, [I

    shr-int/lit8 v0, v2, 0x2

    and-int/2addr v0, v5

    aput v0, p3, v4

    .line 18
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x79

    new-array p3, v5, [I

    shr-int/lit8 v0, v2, 0x1

    and-int/2addr v0, v5

    aput v0, p3, v4

    .line 19
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x73

    new-array p3, v5, [I

    shr-int/lit8 v0, v2, 0x0

    and-int/2addr v0, v5

    aput v0, p3, v4

    .line 20
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x76

    new-array p3, v5, [I

    shr-int/lit8 v0, v6, 0x7

    and-int/2addr v0, v5

    aput v0, p3, v4

    .line 21
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    .line 22
    sget-object p2, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x7b

    new-array v0, v5, [I

    shr-int/lit8 v1, v6, 0x6

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p2, p3, v0}, Lo1/x;->B([Lo1/x;I[I)V

    const/16 p2, 0x7c

    new-array p3, v5, [I

    shr-int/lit8 v0, p1, 0x0

    and-int/2addr v0, v5

    aput v0, p3, v4

    .line 23
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x7a

    new-array p3, v5, [I

    shr-int/2addr p1, v5

    and-int/2addr p1, v5

    aput p1, p3, v4

    .line 24
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    .line 25
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    add-int/lit8 v0, p2, 0x2

    .line 26
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lk0/ha;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->D2(I)V

    add-int/lit8 v0, p2, 0x3

    .line 27
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lk0/ha;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->E2(I)V

    add-int/lit8 v0, p2, 0x4

    .line 28
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lk0/ha;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->F2(I)V

    add-int/2addr p2, p3

    .line 29
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lk0/ha;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_f

    .line 30
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    add-int/lit8 v0, p2, 0x2

    .line 31
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lk0/ha;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->R2(I)V

    add-int/lit8 v0, p2, 0x3

    .line 32
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lk0/ha;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    add-int/lit8 v0, p2, 0x4

    .line 33
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lk0/ha;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->T2(I)V

    add-int/2addr p2, p3

    .line 34
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lk0/ha;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_f

    .line 35
    :pswitch_3
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_16

    add-int/lit8 p3, p2, 0x2

    .line 36
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    .line 37
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 38
    iput p2, p0, Lk0/ha;->c:I

    move p2, v4

    .line 39
    :goto_1
    iget-object p3, p0, Lk0/ha;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_2

    .line 40
    iget v0, p0, Lk0/ha;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_1

    if-eqz v0, :cond_2

    .line 41
    iput p2, p0, Lk0/ha;->b:I

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_3

    .line 42
    array-length p1, p3

    if-ge p2, p1, :cond_16

    .line 43
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    .line 44
    :cond_3
    array-length p1, p3

    if-gt p2, p1, :cond_16

    .line 45
    iget p1, p0, Lk0/ha;->b:I

    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_4
    const/16 p3, 0x11

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x2

    .line 46
    aget-byte v2, p1, v2

    and-int/2addr v2, v5

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x1d

    new-array v0, v5, [I

    add-int/2addr p2, v3

    .line 47
    aget-byte v2, p1, p2

    and-int/2addr v2, v3

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x1e

    new-array v0, v5, [I

    .line 48
    aget-byte v2, p1, p2

    shr-int/2addr v2, v8

    and-int/2addr v2, v3

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x1f

    new-array v0, v5, [I

    .line 49
    aget-byte v2, p1, p2

    shr-int/lit8 v1, v2, 0x4

    and-int/2addr v1, v3

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 50
    aget-byte p1, p1, p2

    shr-int/lit8 p1, p1, 0x6

    and-int/2addr p1, v3

    aput p1, p3, v4

    const/16 p1, 0x20

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_5
    const/16 p3, 0x72

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x2

    .line 51
    aget-byte v6, p1, v1

    and-int/lit16 v6, v6, 0xff

    add-int/2addr p2, v3

    aget-byte v3, p1, p2

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v2

    add-int/2addr v6, v3

    aput v6, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x408

    new-array v0, v5, [I

    .line 52
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte p1, p1, p2

    shl-int/lit8 p1, p1, 0x8

    and-int/2addr p1, v2

    add-int/2addr v1, p1

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_6
    add-int/lit8 p3, p2, 0x2

    .line 53
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    aget-byte p1, p1, p2

    const/16 p2, 0x3138

    invoke-static {p3, p1, v5, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_f

    .line 54
    :cond_7
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v8

    sub-int/2addr p3, v8

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_8
    :pswitch_4
    add-int/lit8 p3, p2, 0x2

    .line 55
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 56
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x4

    .line 57
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x5

    .line 58
    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x6

    .line 59
    aget-byte v8, p1, v3

    add-int/lit8 v9, p2, 0x7

    .line 60
    aget-byte v10, p1, v9

    add-int/lit8 v10, p2, 0x8

    .line 61
    aget-byte v10, p1, v10

    add-int/lit8 p2, p2, 0x9

    .line 62
    aget-byte p2, p1, p2

    const/16 p2, 0xa

    new-array v10, v5, [I

    and-int/lit16 v11, p3, 0x80

    if-nez v11, :cond_9

    move v11, v4

    goto :goto_3

    :cond_9
    move v11, v5

    :goto_3
    aput v11, v10, v4

    .line 63
    invoke-static {p2, v10}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xb

    new-array v10, v5, [I

    and-int/lit8 v11, p3, 0x40

    if-nez v11, :cond_a

    move v11, v4

    goto :goto_4

    :cond_a
    move v11, v5

    :goto_4
    aput v11, v10, v4

    .line 64
    invoke-static {p2, v10}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xc

    new-array v10, v5, [I

    and-int/lit8 v11, p3, 0x20

    if-nez v11, :cond_b

    move v11, v4

    goto :goto_5

    :cond_b
    move v11, v5

    :goto_5
    aput v11, v10, v4

    .line 65
    invoke-static {p2, v10}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xd

    new-array v10, v5, [I

    and-int/lit8 v11, p3, 0x8

    if-nez v11, :cond_c

    move v11, v4

    goto :goto_6

    :cond_c
    move v11, v5

    :goto_6
    aput v11, v10, v4

    .line 66
    invoke-static {p2, v10}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xe

    new-array v10, v5, [I

    and-int/lit8 v11, p3, 0x4

    if-nez v11, :cond_d

    move v11, v4

    goto :goto_7

    :cond_d
    move v11, v5

    :goto_7
    aput v11, v10, v4

    .line 67
    invoke-static {p2, v10}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    and-int/lit8 v10, p3, 0x2

    if-nez v10, :cond_e

    move v10, v4

    goto :goto_8

    :cond_e
    move v10, v5

    :goto_8
    aput v10, p2, v4

    const/16 v10, 0xf

    .line 68
    invoke-static {v10, p2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x10

    new-array v11, v5, [I

    and-int/2addr p3, v5

    if-nez p3, :cond_f

    move p3, v4

    goto :goto_9

    :cond_f
    move p3, v5

    :goto_9
    aput p3, v11, v4

    .line 69
    invoke-static {p2, v11}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x12

    new-array p3, v5, [I

    and-int/lit16 v11, v0, 0x80

    if-nez v11, :cond_10

    move v11, v4

    goto :goto_a

    :cond_10
    move v11, v5

    :goto_a
    aput v11, p3, v4

    .line 70
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x13

    new-array p3, v5, [I

    and-int/lit8 v11, v0, 0x40

    if-nez v11, :cond_11

    move v11, v4

    goto :goto_b

    :cond_11
    move v11, v5

    :goto_b
    aput v11, p3, v4

    .line 71
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x14

    new-array p3, v5, [I

    and-int/lit8 v11, v0, 0x20

    if-nez v11, :cond_12

    move v11, v4

    goto :goto_c

    :cond_12
    move v11, v5

    :goto_c
    aput v11, p3, v4

    .line 72
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    and-int/lit8 p2, v0, 0xf

    if-le p2, v7, :cond_13

    goto :goto_d

    :cond_13
    move v7, p2

    :goto_d
    const/16 p2, 0x15

    new-array p3, v5, [I

    aput v7, p3, v4

    .line 73
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const-string p2, "persist.fyt.reversetemp"

    .line 74
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const/16 p3, 0x1c

    const/16 v0, 0x1b

    if-eqz p2, :cond_14

    new-array p2, v5, [I

    and-int/lit16 v2, v2, 0xff

    aput v2, p2, v4

    .line 75
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    and-int/lit16 v0, v1, 0xff

    aput v0, p2, v4

    .line 76
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_14
    new-array p2, v5, [I

    and-int/lit16 v1, v1, 0xff

    aput v1, p2, v4

    .line 77
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    and-int/lit16 v0, v2, 0xff

    aput v0, p2, v4

    .line 78
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    :goto_e
    new-array p2, v5, [I

    shr-int/lit8 p3, v8, 0x2

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 79
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x25

    new-array p3, v5, [I

    shr-int/lit8 v0, v8, 0x6

    and-int/2addr v0, v5

    aput v0, p3, v4

    .line 80
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    .line 81
    invoke-static {}, Lk0/nt;->a()Z

    move-result p2

    if-eqz p2, :cond_16

    .line 82
    aget-byte p2, p1, v3

    aget-byte p1, p1, v9

    invoke-static {p2, p1}, Ll0/f0;->e(BB)V

    goto :goto_f

    :cond_15
    const/16 p3, 0x71

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x2

    .line 83
    aget-byte v6, p1, v1

    and-int/lit16 v6, v6, 0xff

    add-int/2addr p2, v3

    aget-byte v3, p1, p2

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v2

    add-int/2addr v6, v3

    div-int/lit8 v6, v6, 0x64

    aput v6, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x407

    new-array v0, v5, [I

    .line 84
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte p1, p1, p2

    shl-int/lit8 p1, p1, 0x8

    and-int/2addr p1, v2

    add-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    :cond_16
    :goto_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/ha;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/ha;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/ha;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/ha;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/ha;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/ha;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/ha;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/ha;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x84

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

.method public final a3(I)I
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0xf

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0xa

    .line 1
    div-int/lit8 p1, p1, 0x1e

    :goto_0
    return p1
.end method

.method public final b3(I)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    new-array p1, v0, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1
    new-array p1, v0, [I

    .line 2
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    :goto_0
    new-array p1, v0, [I

    .line 3
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0xe3
        0x27
        0x2
        0x4
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x27
        0x2
        0x2
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x27
        0x2
        0x1b
        0x0
    .end array-data
.end method
