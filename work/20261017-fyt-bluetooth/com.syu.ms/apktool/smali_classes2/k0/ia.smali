.class public Lk0/ia;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static g:I


# instance fields
.field public b:Lo1/g0;

.field public final c:I

.field public d:I

.field public e:I

.field public f:[[I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

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

    iput-object v0, p0, Lk0/ia;->b:Lo1/g0;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lk0/ia;->c:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lk0/ia;->e:I

    const/4 v2, 0x7

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_0

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    aput-object v0, v2, v3

    new-array v0, v3, [I

    fill-array-data v0, :array_3

    const/4 v1, 0x3

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_4

    const/4 v1, 0x4

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_5

    const/4 v1, 0x5

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_6

    const/4 v1, 0x6

    aput-object v0, v2, v1

    iput-object v2, p0, Lk0/ia;->f:[[I

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
        0x7
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_4
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_5
    .array-data 4
        0xb
        0x3
    .end array-data

    :array_6
    .array-data 4
        0xc
        0x4
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
    iget-object v0, p0, Lk0/ia;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    const/4 v2, 0x0

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    iget-object v0, p0, Lk0/ia;->b:Lo1/g0;

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/ia;->c3(I)V

    return-void
.end method

.method public U2([BII)V
    .locals 11

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0xd

    const/4 v1, 0x7

    const/4 v2, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p3, v2, :cond_d

    const/4 v6, 0x2

    if-eq p3, v1, :cond_c

    const/16 v1, 0x9

    if-eq p3, v1, :cond_a

    if-eq p3, v0, :cond_9

    const/16 v0, 0x28

    if-eq p3, v0, :cond_7

    const/16 v0, 0x30

    if-eq p3, v0, :cond_6

    const/16 v0, 0x21

    if-eq p3, v0, :cond_1

    const/16 v0, 0x22

    if-eq p3, v0, :cond_0

    goto/16 :goto_9

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_17

    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->s1(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->R2(I)V

    .line 4
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->s1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/2addr p2, v2

    .line 5
    aget-byte p3, p1, p2

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->s1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    .line 6
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->s1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    .line 7
    :cond_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_17

    add-int/lit8 p3, p2, 0x2

    .line 8
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 9
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 10
    iput p2, p0, Lk0/ia;->e:I

    move p2, v4

    .line 11
    :goto_0
    iget-object p3, p0, Lk0/ia;->f:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_3

    .line 12
    iget v0, p0, Lk0/ia;->e:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_2

    if-eqz v0, :cond_3

    .line 13
    iput p2, p0, Lk0/ia;->d:I

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    and-int/2addr p1, v3

    if-eqz p1, :cond_4

    .line 14
    array-length p1, p3

    if-ge p2, p1, :cond_17

    .line 15
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 16
    :cond_4
    iget p1, p0, Lk0/ia;->d:I

    array-length p2, p3

    if-ge p1, p2, :cond_5

    if-eq p1, v3, :cond_5

    .line 17
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 18
    :cond_5
    iput v3, p0, Lk0/ia;->d:I

    goto/16 :goto_9

    :cond_6
    add-int/lit8 p3, p2, 0x3

    .line 19
    aget-byte p3, p1, p3

    add-int/2addr p2, v6

    aget-byte p1, p1, p2

    const/16 p2, 0x157c

    invoke-static {p3, p1, v5, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_9

    :cond_7
    add-int/2addr p2, v6

    .line 20
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 21
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_8

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 22
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 23
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 24
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 25
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 26
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    const/4 p3, 0x4

    .line 27
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v5

    aput p3, p2, v4

    const/4 p3, 0x5

    .line 28
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v6

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 29
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_9
    const/16 p3, 0x62

    new-array v0, v5, [I

    add-int/2addr p2, v6

    .line 30
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_a
    add-int/2addr p2, v6

    .line 31
    aget-byte p1, p1, p2

    const/16 p2, 0x3f5

    if-ne p1, v5, :cond_b

    new-array p1, v5, [I

    aput v5, p1, v4

    .line 32
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_b
    new-array p1, v5, [I

    aput v4, p1, v4

    .line 33
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_c
    const/16 p3, 0x63

    new-array v0, v5, [I

    add-int/2addr p2, v6

    .line 34
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_d
    add-int/lit8 p3, p2, 0x2

    .line 35
    aget-byte p3, p1, p3

    new-array v2, v5, [I

    shr-int/lit8 v6, p3, 0x7

    and-int/2addr v6, v5

    aput v6, v2, v4

    const/16 v6, 0xa

    .line 36
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v7, v5, [I

    shr-int/lit8 v8, p3, 0x6

    and-int/2addr v8, v5

    aput v8, v7, v4

    .line 37
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v7, v5, [I

    shr-int/lit8 v8, p3, 0x5

    and-int/2addr v8, v5

    aput v8, v7, v4

    .line 38
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v7, v5, [I

    shr-int/lit8 v8, p3, 0x4

    and-int/2addr v8, v5

    aput v8, v7, v4

    .line 39
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/lit8 v7, p3, 0x3

    and-int/2addr v7, v5

    aput v7, v2, v4

    .line 40
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x15

    new-array v2, v5, [I

    and-int/2addr p3, v1

    aput p3, v2, v4

    .line 41
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 42
    aget-byte p3, p1, p3

    and-int/lit8 p3, p3, 0x7f

    packed-switch p3, :pswitch_data_0

    move p3, v4

    move v0, p3

    :goto_3
    move v2, v0

    :goto_4
    move v7, v2

    goto :goto_5

    :pswitch_0
    move p3, v4

    move v0, v5

    goto :goto_3

    :pswitch_1
    move p3, v4

    move v0, p3

    move v2, v5

    goto :goto_4

    :pswitch_2
    move p3, v4

    move v2, p3

    move v0, v5

    move v7, v0

    goto :goto_5

    :pswitch_3
    move p3, v4

    move v2, p3

    move v7, v2

    move v0, v5

    goto :goto_5

    :pswitch_4
    move p3, v4

    move v7, p3

    move v0, v5

    move v2, v0

    goto :goto_5

    :pswitch_5
    move p3, v4

    move v0, p3

    move v7, v0

    move v2, v5

    goto :goto_5

    :pswitch_6
    move p3, v4

    move v0, p3

    move v2, v0

    move v7, v5

    goto :goto_5

    :pswitch_7
    move v0, v4

    move v2, v0

    move v7, v2

    move p3, v5

    :goto_5
    const/16 v8, 0x31

    new-array v9, v5, [I

    aput p3, v9, v4

    .line 43
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v8, v5, [I

    aput v0, v8, v4

    .line 44
    invoke-static {p3, v8}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v5, [I

    aput v2, v0, v4

    .line 45
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v0, v5, [I

    aput v7, v0, v4

    .line 46
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 47
    aget-byte v0, p1, p3

    add-int/lit8 v2, p2, 0x5

    .line 48
    aget-byte v7, p1, v2

    const-string v8, "persist.fyt.reversetemp"

    .line 49
    invoke-static {v8, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 50
    aget-byte v0, p1, v2

    .line 51
    aget-byte v7, p1, p3

    :cond_e
    const/4 p3, -0x3

    const/4 v2, -0x2

    const/16 v8, 0x80

    const/16 v9, 0x1b

    if-ne v8, v0, :cond_f

    new-array v0, v5, [I

    aput v2, v0, v4

    .line 52
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_f
    const/16 v10, 0x9d

    if-ne v0, v10, :cond_10

    new-array v0, v5, [I

    aput p3, v0, v4

    .line 53
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_10
    shr-int/lit8 v10, v0, 0x7

    and-int/2addr v10, v5

    if-nez v10, :cond_11

    if-lez v0, :cond_11

    if-ge v0, v6, :cond_11

    new-array v10, v5, [I

    aput v0, v10, v4

    .line 54
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_11
    and-int/lit8 v0, v0, 0x7f

    add-int/lit8 v0, v0, 0x24

    new-array v10, v5, [I

    aput v0, v10, v4

    .line 55
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    :goto_6
    const/16 v0, -0x80

    const/16 v9, 0x1c

    if-ne v7, v0, :cond_12

    new-array p3, v5, [I

    aput v2, p3, v4

    .line 56
    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_12
    const/16 v0, -0x63

    if-ne v7, v0, :cond_13

    new-array v0, v5, [I

    aput p3, v0, v4

    .line 57
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_13
    shr-int/lit8 p3, v7, 0x7

    and-int/2addr p3, v5

    if-nez p3, :cond_14

    if-lez v7, :cond_14

    if-ge v7, v6, :cond_14

    new-array p3, v5, [I

    aput v7, p3, v4

    .line 58
    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_14
    and-int/lit8 p3, v7, 0x7f

    add-int/lit8 p3, p3, 0x24

    new-array v0, v5, [I

    aput p3, v0, v4

    .line 59
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    :goto_7
    add-int/lit8 p3, p2, 0x6

    .line 60
    aget-byte p3, p1, p3

    const/16 v0, 0x1d

    new-array v2, v5, [I

    shr-int/lit8 v7, p3, 0x4

    and-int/lit8 v7, v7, 0xf

    aput v7, v2, v4

    .line 61
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x1e

    new-array v2, v5, [I

    and-int/lit8 p3, p3, 0xf

    aput p3, v2, v4

    .line 62
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    .line 63
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_17

    add-int/2addr p2, v1

    .line 64
    aget-byte p1, p1, p2

    and-int/lit16 p2, p1, 0xff

    if-eq p2, v3, :cond_16

    and-int/2addr p2, v8

    if-eqz p2, :cond_15

    and-int/lit8 p1, p1, 0x7f

    mul-int/2addr p1, v6

    rsub-int v4, p1, 0x3e8

    goto :goto_8

    :cond_15
    and-int/lit8 p1, p1, 0x7f

    mul-int/2addr p1, v6

    add-int/lit16 v4, p1, 0x3e8

    .line 65
    :cond_16
    :goto_8
    invoke-static {v4}, Lu0/d;->A3(I)V

    :cond_17
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/ia;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x65

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

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, p4, :cond_1

    const/16 v0, 0x3ed

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2, p4}, Lk0/ia;->b3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    aget p1, p2, p3

    invoke-virtual {p0, p1}, Lk0/ia;->c3(I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p2, p4}, Lk0/ia;->b3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x84

    .line 4
    aget p2, p2, p3

    invoke-virtual {p0, p1, p2}, Lk0/ia;->a3(II)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, p2, p4}, Lk0/ia;->b3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x88

    .line 6
    aget p2, p2, p3

    invoke-virtual {p0, p1, p2}, Lk0/ia;->a3(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a3(II)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x2

    aput v1, v0, p1

    int-to-byte p1, p2

    const/4 p2, 0x3

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3([II)Z
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

.method public final c3(I)V
    .locals 4

    .line 1
    sput p1, Lk0/ia;->g:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, -0x77

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v3, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    iget-object p1, p0, Lk0/ia;->b:Lo1/g0;

    invoke-virtual {p1, v3, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/ia;->g:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/ia;->b:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
