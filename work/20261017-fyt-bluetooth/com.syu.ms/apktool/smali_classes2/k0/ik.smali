.class public Lk0/ik;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/ik;->c:I

    const/16 v0, 0x9

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v4, 0x4

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v4, 0x7

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_8

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/ik;->d:[[I

    .line 4
    new-instance v0, Lk0/ik$a;

    invoke-direct {v0, p0}, Lk0/ik$a;-><init>(Lk0/ik;)V

    iput-object v0, p0, Lk0/ik;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lk0/ik$b;

    invoke-direct {v0, p0}, Lk0/ik$b;-><init>(Lk0/ik;)V

    iput-object v0, p0, Lk0/ik;->f:Ljava/lang/Runnable;

    .line 6
    iput v3, p0, Lk0/ik;->g:I

    .line 7
    new-instance v0, Lk0/ik$c;

    invoke-direct {v0, p0}, Lk0/ik$c;-><init>(Lk0/ik;)V

    iput-object v0, p0, Lk0/ik;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/ik$d;

    invoke-direct {v0, p0}, Lk0/ik$d;-><init>(Lk0/ik;)V

    iput-object v0, p0, Lk0/ik;->i:Ljava/lang/Runnable;

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
        0x8
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_8
    .array-data 4
        0xc
        0x2
    .end array-data
.end method

.method public static synthetic a3(Lk0/ik;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/ik;->b3(BLjava/lang/String;)V

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

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    iput v2, v0, Lk0/mt;->q:I

    .line 7
    iput v2, v0, Lk0/mt;->i:I

    const/4 v2, 0x2

    .line 8
    iput v2, v0, Lk0/mt;->h:I

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/ik;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    iget-object v0, p0, Lk0/ik;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v2, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v2, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->a:Lo1/y;

    sget-object v2, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lu0/c;->s:Lo1/y;

    sget-object v2, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->t:Lo1/y;

    sget-object v2, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lk0/ik;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 10

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x18

    const/4 v2, 0x5

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_11

    const/16 v1, -0x10

    const/4 v6, 0x2

    if-eq v0, v1, :cond_10

    const/16 p3, 0x1a

    const/4 v1, 0x4

    if-eq v0, p3, :cond_f

    const/16 p3, 0x3f

    const/4 v7, 0x3

    if-eq v0, p3, :cond_e

    const/16 p3, 0x41

    if-eq v0, p3, :cond_a

    const/16 p3, 0x48

    const v8, 0xff00

    if-eq v0, p3, :cond_9

    const/16 p3, 0x61

    if-eq v0, p3, :cond_8

    const/16 p3, 0x16

    if-eq v0, p3, :cond_7

    const/16 p3, 0x17

    if-eq v0, p3, :cond_6

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const/16 p3, 0x63

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x4

    .line 3
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x6

    .line 4
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x8

    .line 5
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0x9

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0xa

    .line 6
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    add-int/lit8 v6, p2, 0xb

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v8

    or-int/2addr v1, v6

    add-int/lit8 v6, p2, 0xc

    aget-byte v6, p1, v6

    and-int/2addr v6, v3

    or-int/2addr v1, v6

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x68

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0xd

    .line 7
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    and-int/2addr v1, v2

    add-int/lit8 v2, p2, 0xe

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v8

    or-int/2addr v1, v2

    add-int/lit8 p2, p2, 0xf

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, v1

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_1
    add-int/2addr p2, v1

    .line 8
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 9
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 10
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 11
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 12
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 13
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 14
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 15
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v7

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 16
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_2
    add-int/lit8 p3, p2, 0x4

    .line 17
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x5

    .line 18
    aget-byte v0, p1, v0

    and-int/2addr p3, v3

    .line 19
    iput p3, p0, Lk0/ik;->c:I

    move p3, v4

    .line 20
    :goto_1
    iget-object v1, p0, Lk0/ik;->d:[[I

    array-length v2, v1

    if-ge p3, v2, :cond_2

    .line 21
    iget v2, p0, Lk0/ik;->c:I

    aget-object v6, v1, p3

    aget v6, v6, v4

    if-ne v2, v6, :cond_1

    if-eqz v2, :cond_2

    .line 22
    iput p3, p0, Lk0/ik;->b:I

    goto :goto_2

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    and-int/2addr v0, v3

    if-ne v0, v5, :cond_3

    .line 23
    array-length v0, v1

    if-ge p3, v0, :cond_5

    .line 24
    aget-object p3, v1, p3

    aget p3, p3, v5

    invoke-static {p3, v4}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_3
    if-nez v0, :cond_5

    .line 25
    iget p3, p0, Lk0/ik;->b:I

    array-length v0, v1

    if-ge p3, v0, :cond_4

    if-eq p3, v3, :cond_4

    .line 26
    aget-object p3, v1, p3

    aget p3, p3, v5

    invoke-static {p3, v5}, Ll0/b0;->l0(II)V

    .line 27
    :cond_4
    iput v3, p0, Lk0/ik;->b:I

    :cond_5
    :goto_3
    add-int/lit8 p3, p2, 0x9

    .line 28
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    add-int/lit8 p2, p2, 0x8

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    const/16 p2, 0x21c

    invoke-static {p3, p1, v5, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_5

    :cond_6
    const/16 p3, 0x73

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x2

    .line 29
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x74

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x4

    .line 30
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x75

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x6

    .line 31
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x76

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x8

    .line 32
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0x9

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x77

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0xa

    .line 33
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0xb

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x78

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0xc

    .line 34
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0xd

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x79

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0xe

    .line 35
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0xf

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7a

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x10

    .line 36
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0x11

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7b

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x12

    .line 37
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0x13

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7c

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x14

    .line 38
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 p2, p2, 0x15

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, v1

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_7
    const/16 p3, 0x69

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x2

    .line 39
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x4

    .line 40
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6b

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x6

    .line 41
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6c

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x8

    .line 42
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0x9

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6d

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0xa

    .line 43
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0xb

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6e

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0xc

    .line 44
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0xd

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6f

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0xe

    .line 45
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0xf

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x70

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x10

    .line 46
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0x11

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x71

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x12

    .line 47
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0x13

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x72

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x14

    .line 48
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 p2, p2, 0x15

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, v1

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_8
    const/16 p3, 0x89

    new-array v0, v5, [I

    add-int/lit8 v3, p2, 0x2

    .line 49
    aget-byte v8, p1, v3

    shr-int/2addr v8, v4

    and-int/2addr v8, v7

    aput v8, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x8a

    new-array v0, v5, [I

    .line 50
    aget-byte v3, p1, v3

    shr-int/2addr v3, v6

    and-int/2addr v3, v5

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x8b

    new-array v0, v5, [I

    add-int/lit8 v3, p2, 0x3

    .line 51
    aget-byte v8, p1, v3

    shr-int/2addr v8, v4

    and-int/2addr v8, v5

    aput v8, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x8c

    new-array v0, v5, [I

    .line 52
    aget-byte v3, p1, v3

    shr-int/2addr v3, v5

    and-int/2addr v3, v5

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x8d

    new-array v0, v5, [I

    add-int/lit8 v3, p2, 0x4

    .line 53
    aget-byte v3, p1, v3

    shr-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x7

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x8e

    new-array v0, v5, [I

    add-int/lit8 v3, p2, 0x5

    .line 54
    aget-byte v8, p1, v3

    shr-int/2addr v8, v4

    and-int/2addr v8, v5

    aput v8, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x8f

    new-array v0, v5, [I

    .line 55
    aget-byte v8, p1, v3

    shr-int/2addr v8, v5

    and-int/2addr v8, v5

    aput v8, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x90

    new-array v0, v5, [I

    .line 56
    aget-byte v8, p1, v3

    shr-int/2addr v8, v6

    and-int/2addr v8, v5

    aput v8, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x91

    new-array v0, v5, [I

    .line 57
    aget-byte v8, p1, v3

    shr-int/2addr v8, v7

    and-int/2addr v8, v5

    aput v8, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x92

    new-array v0, v5, [I

    .line 58
    aget-byte v8, p1, v3

    shr-int/2addr v8, v1

    and-int/2addr v8, v5

    aput v8, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x93

    new-array v0, v5, [I

    .line 59
    aget-byte v8, p1, v3

    shr-int/2addr v8, v2

    and-int/2addr v8, v5

    aput v8, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x94

    new-array v0, v5, [I

    .line 60
    aget-byte v8, p1, v3

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v5

    aput v8, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x95

    new-array v0, v5, [I

    .line 61
    aget-byte v3, p1, v3

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v5

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x96

    new-array v0, v5, [I

    add-int/lit8 v3, p2, 0x6

    .line 62
    aget-byte v3, p1, v3

    shr-int/2addr v3, v4

    and-int/2addr v3, v5

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x97

    new-array v0, v5, [I

    add-int/lit8 v3, p2, 0x7

    .line 63
    aget-byte v8, p1, v3

    shr-int/2addr v8, v5

    and-int/2addr v8, v5

    aput v8, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x98

    new-array v0, v5, [I

    .line 64
    aget-byte v8, p1, v3

    shr-int/2addr v8, v6

    and-int/2addr v8, v5

    aput v8, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x99

    new-array v0, v5, [I

    .line 65
    aget-byte v8, p1, v3

    shr-int/2addr v8, v7

    and-int/2addr v8, v5

    aput v8, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x9a

    new-array v0, v5, [I

    .line 66
    aget-byte v8, p1, v3

    shr-int/2addr v8, v1

    and-int/2addr v8, v5

    aput v8, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x9b

    new-array v0, v5, [I

    .line 67
    aget-byte v8, p1, v3

    shr-int/2addr v8, v2

    and-int/2addr v8, v5

    aput v8, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x9c

    new-array v0, v5, [I

    .line 68
    aget-byte v8, p1, v3

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v5

    aput v8, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x9d

    new-array v0, v5, [I

    .line 69
    aget-byte v3, p1, v3

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v5

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x9e

    new-array v0, v5, [I

    add-int/lit8 v3, p2, 0x8

    .line 70
    aget-byte v8, p1, v3

    shr-int/2addr v8, v5

    and-int/2addr v8, v5

    aput v8, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x9f

    new-array v0, v5, [I

    .line 71
    aget-byte v8, p1, v3

    shr-int/lit8 v6, v8, 0x2

    and-int/2addr v6, v5

    aput v6, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xa0

    new-array v0, v5, [I

    .line 72
    aget-byte v6, p1, v3

    shr-int/2addr v6, v7

    and-int/2addr v6, v5

    aput v6, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xa1

    new-array v0, v5, [I

    .line 73
    aget-byte v6, p1, v3

    shr-int/lit8 v1, v6, 0x4

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xa2

    new-array v0, v5, [I

    .line 74
    aget-byte v1, p1, v3

    shr-int/2addr v1, v2

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xa3

    new-array v0, v5, [I

    .line 75
    aget-byte v1, p1, v3

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xa4

    new-array v0, v5, [I

    add-int/lit8 p2, p2, 0x9

    .line 76
    aget-byte p1, p1, p2

    shr-int/2addr p1, v4

    and-int/2addr p1, v5

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_9
    const/16 p3, 0x85

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x4

    .line 77
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x86

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x6

    .line 78
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x87

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x8

    .line 79
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 v2, p2, 0x9

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x88

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0xa

    .line 80
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v8

    add-int/lit8 p2, p2, 0xb

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, v1

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_a
    add-int/lit8 p3, p2, 0x2

    .line 81
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->L0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 82
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->L0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 83
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->L0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 84
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->L0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 85
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    add-int/lit8 v2, p2, 0x7

    .line 86
    aget-byte v6, p1, v2

    and-int/2addr v6, v3

    add-int/lit8 v7, p2, 0x8

    .line 87
    aget-byte v8, p1, v7

    and-int/2addr v8, v3

    add-int/lit8 p2, p2, 0x9

    .line 88
    aget-byte v9, p1, p2

    and-int/2addr v9, v3

    if-ne v0, v3, :cond_b

    if-ne v6, v3, :cond_b

    if-ne v8, v3, :cond_b

    if-ne v9, v3, :cond_b

    .line 89
    invoke-static {v4}, Lu0/d;->C2(I)V

    goto :goto_4

    .line 90
    :cond_b
    sget v4, Ll0/c0;->g:I

    if-ne v4, v0, :cond_c

    sget v4, Ll0/c0;->h:I

    if-ne v4, v6, :cond_c

    sget v4, Ll0/c0;->i:I

    if-ne v4, v8, :cond_c

    sget v4, Ll0/c0;->j:I

    if-eq v4, v9, :cond_d

    .line 91
    :cond_c
    sget v4, Lu0/b;->o:I

    if-nez v4, :cond_d

    .line 92
    invoke-static {v5}, Lu0/d;->C2(I)V

    .line 93
    sput v1, Ll0/c0;->k:I

    .line 94
    sget-object v1, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 95
    :cond_d
    :goto_4
    sput v0, Ll0/c0;->g:I

    .line 96
    sput v6, Ll0/c0;->h:I

    .line 97
    sput v8, Ll0/c0;->i:I

    .line 98
    sput v9, Ll0/c0;->j:I

    .line 99
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->L0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 100
    aget-byte p3, p1, v2

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->L0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 101
    aget-byte p3, p1, v7

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->L0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 102
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->L0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_5

    :cond_e
    const/16 p3, 0x7d

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x8

    .line 103
    aget-byte v6, p1, v2

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v7

    aput v6, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7e

    new-array v0, v5, [I

    .line 104
    aget-byte v2, p1, v2

    shr-int/2addr v2, v4

    and-int/lit8 v2, v2, 0xf

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7f

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x9

    .line 105
    aget-byte v6, p1, v2

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v7

    aput v6, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x80

    new-array v0, v5, [I

    .line 106
    aget-byte v2, p1, v2

    shr-int/2addr v2, v4

    and-int/lit8 v2, v2, 0xf

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x81

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0xa

    .line 107
    aget-byte v6, p1, v2

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v7

    aput v6, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x82

    new-array v0, v5, [I

    .line 108
    aget-byte v2, p1, v2

    shr-int/2addr v2, v4

    and-int/lit8 v2, v2, 0xf

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x83

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0xb

    .line 109
    aget-byte v2, p1, v2

    shr-int/lit8 v1, v2, 0x4

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x84

    new-array v0, v5, [I

    add-int/lit8 p2, p2, 0xd

    .line 110
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_f
    add-int/2addr p2, v1

    .line 111
    aget-byte p3, p1, p2

    shr-int/2addr p3, v4

    and-int/2addr p3, v5

    aget-byte v0, p1, p2

    shr-int/2addr v0, v5

    and-int/2addr v0, v5

    aget-byte p1, p1, p2

    shr-int/2addr p1, v6

    and-int/2addr p1, v5

    invoke-static {p3, v0, p1}, Ll0/c0;->a(III)V

    goto :goto_5

    .line 112
    :cond_10
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v6

    sub-int/2addr p3, v6

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    add-int/2addr p2, v2

    .line 113
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    if-eqz p1, :cond_12

    .line 114
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto :goto_5

    .line 115
    :cond_12
    invoke-static {v4}, Lk0/qt;->a(I)V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ik;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/ik;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/ik;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    sget-object v1, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->s:Lo1/y;

    sget-object v1, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->t:Lo1/y;

    sget-object v1, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/ik;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    if-ltz p2, :cond_0

    const/16 p3, 0xa5

    if-ge p2, p3, :cond_0

    .line 1
    sget-object p3, Lk0/nt;->g:[I

    aget p3, p3, p2

    invoke-static {p1, p2, p3}, Ly/e;->a(Ly/b;II)V

    :cond_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 11

    const/16 p3, 0xe3

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    const/4 v5, 0x7

    const/4 v6, 0x6

    if-eq p1, v4, :cond_4

    const/16 v7, 0x3eb

    if-eq p1, v7, :cond_2

    const/16 v7, 0x405

    if-eq p1, v7, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    aget p1, p2, v4

    mul-int/lit16 p1, p1, 0x780

    invoke-static {}, La/f;->w()I

    move-result v7

    div-int/2addr p1, v7

    .line 2
    aget v7, p2, v2

    mul-int/lit16 v7, v7, 0x438

    invoke-static {}, La/f;->i()I

    move-result v8

    div-int/2addr v7, v8

    .line 3
    invoke-virtual {p0, p2, v2}, Lk0/lt;->T2([II)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4
    aget p2, p2, v3

    const/16 v8, 0x2c

    const/16 v9, 0x9

    const/16 v10, 0x8

    if-nez p2, :cond_1

    new-array p2, v9, [I

    aput p3, p2, v3

    aput v6, p2, v4

    aput v8, p2, v2

    aput v4, p2, v0

    shr-int/lit8 p3, p1, 0x8

    aput p3, p2, p4

    and-int/lit16 p1, p1, 0xff

    aput p1, p2, v1

    shr-int/lit8 p1, v7, 0x8

    aput p1, p2, v6

    and-int/lit16 p1, v7, 0xff

    aput p1, p2, v5

    aput v3, p2, v10

    .line 5
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p2, v9, [I

    aput p3, p2, v3

    aput v6, p2, v4

    aput v8, p2, v2

    aput v3, p2, v0

    shr-int/lit8 p3, p1, 0x8

    aput p3, p2, p4

    and-int/lit16 p1, p1, 0xff

    aput p1, p2, v1

    shr-int/lit8 p1, v7, 0x8

    aput p1, p2, v6

    and-int/lit16 p1, v7, 0xff

    aput p1, p2, v5

    aput v3, p2, v10

    .line 6
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_6

    .line 7
    array-length p1, p2

    if-lez p1, :cond_6

    .line 8
    sget p1, Lu0/b;->o:I

    if-ne p1, v4, :cond_3

    new-array p1, v1, [I

    .line 9
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, v1, [I

    .line 10
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p1, v5, [I

    aput p3, p1, v3

    aput p4, p1, v4

    const/16 p3, 0x6f

    aput p3, p1, v2

    .line 11
    aget p3, p2, v3

    aput p3, p1, v0

    aget p3, p2, v4

    aput p3, p1, p4

    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v0

    aput p2, p1, v6

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    new-array p1, v1, [I

    aput p3, p1, v3

    aput v2, p1, v4

    const/16 p3, -0x66

    aput p3, p1, v2

    aput v4, p1, v0

    .line 12
    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_6
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2
        -0xe
        0xf
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        -0xe
        0xf
        0x1
    .end array-data
.end method

.method public final b3(BLjava/lang/String;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "UTF-8"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v0, 0x23

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x20

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 2
    array-length p1, p2

    const/16 v1, 0x1e

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    array-length v1, p2

    :goto_0
    move p1, v2

    :goto_1
    if-ge p1, v1, :cond_2

    add-int/lit8 v3, p1, 0x3

    .line 3
    aget-byte v4, p2, p1

    aput v4, v0, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x3

    .line 4
    aput v2, v0, v1

    .line 5
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
