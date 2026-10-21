.class public Lk0/ir;
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
    iput v0, p0, Lk0/ir;->c:I

    const/16 v1, 0x13

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

    const/16 v3, 0x9

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v3, 0xa

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v3, 0xb

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v3, 0xc

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v3, 0xd

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v3, 0xe

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v3, 0xf

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    const/16 v3, 0x10

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_11

    const/16 v3, 0x11

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_12

    const/16 v2, 0x12

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/ir;->d:[[I

    .line 4
    new-instance v0, Lk0/ir$a;

    invoke-direct {v0, p0}, Lk0/ir$a;-><init>(Lk0/ir;)V

    iput-object v0, p0, Lk0/ir;->e:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x12
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x6
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x18
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x36
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x5
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x3f
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x12
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x2
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x3e
    .end array-data

    :array_12
    .array-data 4
        0x14
        0xd
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 5

    if-eqz p1, :cond_a

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v2, p1, v0

    const/16 v3, 0x10

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v4

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, v1, v0}, Lk0/ir;->a3(II)V

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v4, v0}, Lk0/ir;->a3(II)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v4

    const/4 v0, 0x3

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0, v1, v0}, Lk0/ir;->a3(II)V

    goto/16 :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v4, v0}, Lk0/ir;->a3(II)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget p1, p1, v4

    const/4 v0, -0x2

    if-eq p1, v0, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    goto/16 :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0, v1, v4}, Lk0/ir;->a3(II)V

    goto/16 :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0, v4, v4}, Lk0/ir;->a3(II)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    aget p1, p1, v4

    const/16 v1, 0x8

    const/16 v2, 0xc

    if-eqz p1, :cond_5

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_a

    .line 14
    invoke-virtual {p0, v1, v0}, Lk0/ir;->a3(II)V

    goto/16 :goto_0

    .line 15
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v4, :cond_a

    .line 16
    invoke-virtual {p0, v1, v0}, Lk0/ir;->a3(II)V

    goto/16 :goto_0

    .line 17
    :pswitch_5
    aget p1, p1, v4

    if-eqz p1, :cond_6

    .line 18
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_a

    .line 19
    invoke-virtual {p0, v4, v0}, Lk0/ir;->a3(II)V

    goto :goto_0

    .line 20
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v4, :cond_a

    .line 21
    invoke-virtual {p0, v4, v0}, Lk0/ir;->a3(II)V

    goto :goto_0

    .line 22
    :pswitch_6
    aget p1, p1, v4

    const/16 v1, 0x41

    if-eqz p1, :cond_7

    .line 23
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_a

    .line 24
    invoke-virtual {p0, v3, v0}, Lk0/ir;->a3(II)V

    goto :goto_0

    .line 25
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v4, :cond_a

    .line 26
    invoke-virtual {p0, v3, v0}, Lk0/ir;->a3(II)V

    goto :goto_0

    .line 27
    :pswitch_7
    aget p1, p1, v4

    const/16 v2, 0xb

    if-eqz p1, :cond_8

    .line 28
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_a

    .line 29
    invoke-virtual {p0, v1, v0}, Lk0/ir;->a3(II)V

    goto :goto_0

    .line 30
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v4, :cond_a

    .line 31
    invoke-virtual {p0, v1, v0}, Lk0/ir;->a3(II)V

    goto :goto_0

    .line 32
    :pswitch_8
    aget p1, p1, v4

    const/16 v1, 0x80

    const/16 v2, 0xa

    if-eqz p1, :cond_9

    .line 33
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_a

    .line 34
    invoke-virtual {p0, v1, v0}, Lk0/ir;->a3(II)V

    goto :goto_0

    .line 35
    :cond_9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v4, :cond_a

    .line 36
    invoke-virtual {p0, v1, v0}, Lk0/ir;->a3(II)V

    :cond_a
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public S2()V
    .locals 2

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

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->i:I

    const/16 v1, 0x9

    new-array v1, v1, [I

    .line 6
    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    .line 7
    iget-object v0, p0, Lk0/ir;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x29
        0x2a
    .end array-data
.end method

.method public U2([BII)V
    .locals 10

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    const/16 v2, 0x29

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v0, v2, :cond_e

    const/16 v2, 0x30

    const/4 v5, 0x2

    if-eq v0, v2, :cond_d

    const/16 p3, 0x41

    const/4 v2, 0x1

    if-eq v0, p3, :cond_c

    const/16 v6, 0x7d

    const/16 v7, 0xb

    const/4 v8, 0x4

    if-eq v0, v6, :cond_a

    const/16 v6, 0xc

    const/4 v9, 0x5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    add-int/2addr p2, v5

    .line 2
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    const-string p2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    new-array p2, v2, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v2

    aput p3, p2, v4

    .line 4
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v2, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v2

    aput p3, p2, v4

    .line 5
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array p2, v2, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v2

    aput p3, p2, v4

    .line 6
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v2, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v2

    aput p3, p2, v4

    .line 7
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v2, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v2

    aput p3, p2, v4

    .line 8
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v2, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v2

    aput p3, p2, v4

    .line 9
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v2, [I

    shr-int/lit8 p3, p1, 0x2

    and-int/2addr p3, v2

    aput p3, p2, v4

    .line 10
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v2, [I

    shr-int/2addr p1, v3

    and-int/2addr p1, v2

    aput p1, p2, v4

    .line 11
    invoke-static {v9, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 12
    aget-byte v0, p1, p3

    and-int/2addr v0, v1

    add-int/lit8 v3, p2, 0x3

    .line 13
    aget-byte v5, p1, v3

    and-int/2addr v5, v1

    add-int/lit8 v6, p2, 0x4

    .line 14
    aget-byte v7, p1, v6

    and-int/2addr v7, v1

    add-int/2addr p2, v9

    .line 15
    aget-byte v9, p1, p2

    and-int/2addr v1, v9

    if-nez v0, :cond_1

    if-nez v5, :cond_1

    if-nez v7, :cond_1

    if-nez v1, :cond_1

    .line 16
    invoke-static {v4}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 17
    :cond_1
    sget v4, Ll0/c0;->g:I

    if-ne v4, v0, :cond_2

    sget v4, Ll0/c0;->h:I

    if-ne v4, v5, :cond_2

    sget v4, Ll0/c0;->i:I

    if-ne v4, v7, :cond_2

    sget v4, Ll0/c0;->j:I

    if-eq v4, v1, :cond_3

    .line 18
    :cond_2
    sget v4, Lu0/b;->o:I

    if-nez v4, :cond_3

    .line 19
    invoke-static {v2}, Lu0/d;->C2(I)V

    .line 20
    sput v8, Ll0/c0;->k:I

    .line 21
    sget-object v2, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 22
    :cond_3
    :goto_1
    sput v0, Ll0/c0;->g:I

    .line 23
    sput v5, Ll0/c0;->h:I

    .line 24
    sput v7, Ll0/c0;->i:I

    .line 25
    sput v1, Ll0/c0;->j:I

    .line 26
    aget-byte p3, p1, p3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 27
    aget-byte p3, p1, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 28
    aget-byte p3, p1, v6

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 29
    aget-byte p1, p1, p2

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_4

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 30
    aget-byte p3, p1, p3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 31
    aget-byte p3, p1, p3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 32
    aget-byte p3, p1, p3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v9

    .line 33
    aget-byte p1, p1, p2

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_4

    :pswitch_3
    add-int/lit8 v0, p2, 0x2

    .line 34
    aget-byte v0, p1, v0

    and-int/2addr v0, v1

    add-int/lit8 v3, p2, 0x3

    .line 35
    aget-byte v3, p1, v3

    and-int/2addr v3, v1

    add-int/lit8 v5, p2, 0x4

    .line 36
    aget-byte v5, p1, v5

    and-int/2addr v5, v1

    add-int/2addr p2, v9

    .line 37
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    const/16 p2, 0xa

    new-array v1, v2, [I

    shr-int/lit8 v8, v0, 0x7

    and-int/2addr v8, v2

    aput v8, v1, v4

    .line 38
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    new-array p2, v2, [I

    shr-int/lit8 v1, v0, 0x6

    and-int/2addr v1, v2

    aput v1, p2, v4

    .line 39
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v2, [I

    shr-int/lit8 v1, v0, 0x5

    and-int/2addr v1, v2

    aput v1, p2, v4

    .line 40
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x44

    new-array v1, v2, [I

    shr-int/lit8 v6, v0, 0x4

    and-int/2addr v6, v2

    aput v6, v1, v4

    .line 41
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    new-array p2, v2, [I

    shr-int/lit8 v1, v0, 0x1

    and-int/2addr v1, v2

    aput v1, p2, v4

    .line 42
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x10

    new-array p3, v2, [I

    shr-int/2addr v0, v4

    and-int/2addr v0, v2

    aput v0, p3, v4

    .line 43
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x12

    new-array p3, v2, [I

    shr-int/lit8 v0, v3, 0x7

    and-int/2addr v0, v2

    aput v0, p3, v4

    .line 44
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x13

    new-array p3, v2, [I

    shr-int/lit8 v0, v3, 0x6

    and-int/2addr v0, v2

    aput v0, p3, v4

    .line 45
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x14

    new-array p3, v2, [I

    shr-int/lit8 v0, v3, 0x5

    and-int/2addr v0, v2

    aput v0, p3, v4

    .line 46
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x15

    new-array p3, v2, [I

    and-int/lit8 v0, v3, 0xf

    aput v0, p3, v4

    .line 47
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x1b

    new-array p3, v2, [I

    aput v5, p3, v4

    .line 48
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x1c

    new-array p3, v2, [I

    aput p1, p3, v4

    .line 49
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_4
    add-int/lit8 p3, p2, 0x2

    .line 50
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    .line 51
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 52
    iput p2, p0, Lk0/ir;->c:I

    move p2, v4

    .line 53
    :goto_2
    iget-object p3, p0, Lk0/ir;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_5

    .line 54
    iget v0, p0, Lk0/ir;->c:I

    aget-object v5, p3, p2

    aget v5, v5, v4

    if-ne v0, v5, :cond_4

    if-eqz v0, :cond_5

    .line 55
    iput p2, p0, Lk0/ir;->b:I

    goto :goto_3

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 56
    :cond_5
    :goto_3
    iget v0, p0, Lk0/ir;->c:I

    if-eq v0, v9, :cond_8

    and-int/2addr p1, v1

    if-ne p1, v2, :cond_6

    .line 57
    array-length p1, p3

    if-ge p2, p1, :cond_f

    .line 58
    aget-object p1, p3, p2

    aget p1, p1, v2

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_4

    :cond_6
    if-nez p1, :cond_f

    .line 59
    iget p1, p0, Lk0/ir;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_7

    if-eq p1, v1, :cond_7

    .line 60
    aget-object p1, p3, p1

    aget p1, p1, v2

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    .line 61
    :cond_7
    iput v1, p0, Lk0/ir;->b:I

    goto/16 :goto_4

    :cond_8
    and-int/2addr p1, v1

    if-ne p1, v2, :cond_f

    .line 62
    sget p1, Lh0/c;->E:I

    if-eq p1, v3, :cond_9

    if-eq p1, v8, :cond_9

    if-eq p1, v9, :cond_9

    .line 63
    invoke-static {v6, v4}, Ll0/b0;->l0(II)V

    .line 64
    invoke-static {v6, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_4

    :cond_9
    const/16 p1, 0x1a

    .line 65
    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 66
    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_4

    :cond_a
    add-int/lit8 p3, p2, 0x2

    .line 67
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    if-eq p3, v2, :cond_b

    goto/16 :goto_4

    :cond_b
    add-int/2addr p2, v3

    .line 68
    aget-byte p3, p1, p2

    shr-int/2addr p3, v3

    and-int/2addr p3, v2

    aget-byte v0, p1, p2

    shr-int/2addr v0, v8

    and-int/2addr v0, v2

    invoke-static {p3, v0, v4}, Ll0/c0;->a(III)V

    .line 69
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v3, v5, [I

    aput v7, v3, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    aput p1, v3, v2

    const/4 p1, 0x0

    invoke-static {p3, v0, v3, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    const/16 p3, 0x62

    new-array v0, v2, [I

    add-int/lit8 v3, p2, 0x2

    .line 70
    aget-byte v3, p1, v3

    and-int/2addr v3, v1

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v2, [I

    add-int/lit8 v3, p2, 0x3

    .line 71
    aget-byte v3, p1, v3

    and-int/2addr v3, v1

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v2, [I

    add-int/lit8 v3, p2, 0x4

    .line 72
    aget-byte v3, p1, v3

    and-int/2addr v3, v1

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v2, [I

    add-int/lit8 v3, p2, 0x5

    .line 73
    aget-byte v3, p1, v3

    and-int/2addr v3, v1

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v2, [I

    add-int/lit8 v3, p2, 0x6

    .line 74
    aget-byte v3, p1, v3

    and-int/2addr v3, v1

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v2, [I

    add-int/lit8 v3, p2, 0x7

    .line 75
    aget-byte v3, p1, v3

    and-int/2addr v3, v1

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x68

    new-array v0, v2, [I

    add-int/lit8 v3, p2, 0x8

    .line 76
    aget-byte v3, p1, v3

    and-int/2addr v3, v1

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v2, [I

    add-int/lit8 p2, p2, 0x9

    .line 77
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    .line 78
    :cond_d
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v5

    sub-int/2addr p3, v5

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    add-int/lit8 p3, p2, 0x2

    .line 79
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    add-int/2addr p2, v3

    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    const p2, 0x8000

    const/16 v0, 0x22aa

    invoke-static {p3, p1, p2, v4, v0}, Lk0/qt;->m(IIIZI)V

    :cond_f
    :goto_4
    return-void

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
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/ir;->e:Ljava/lang/Runnable;

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

    const/16 p3, 0xe3

    const/4 p4, 0x6

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v5, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    .line 1
    array-length p1, p2

    if-lt p1, v5, :cond_3

    const/16 p1, 0x9

    new-array p1, p1, [I

    aput p3, p1, v3

    const/16 p3, 0xc7

    aput p3, p1, v4

    aput p4, p1, v5

    .line 2
    aget p3, p2, v3

    aput p3, p1, v2

    aget p3, p2, v4

    aput p3, p1, v1

    aget p3, p2, v5

    aput p3, p1, v0

    aget p3, p2, v2

    aput p3, p1, p4

    const/4 p3, 0x7

    aget p4, p2, v1

    aput p4, p1, p3

    const/16 p3, 0x8

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 3
    array-length p1, p2

    if-lt p1, v5, :cond_3

    new-array p1, v0, [I

    aput p3, p1, v3

    const/16 p3, 0x90

    aput p3, p1, v4

    aput v5, p1, v5

    .line 4
    aget p3, p2, v3

    aput p3, p1, v2

    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 5
    array-length p1, p2

    if-lt p1, v5, :cond_3

    new-array p1, p4, [I

    aput p3, p1, v3

    const/16 p3, 0xc6

    aput p3, p1, v4

    aput v2, p1, v5

    .line 6
    aget p3, p2, v3

    aput p3, p1, v2

    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v5

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a3(II)V
    .locals 12

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/16 v2, -0x39

    const/16 v3, 0xe3

    const/16 v4, 0x9

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x6

    const/4 v11, 0x0

    if-eqz p2, :cond_5

    if-eq p2, v9, :cond_4

    if-eq p2, v8, :cond_3

    if-eq p2, v7, :cond_2

    if-eq p2, v6, :cond_1

    if-eq p2, v5, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput v11, p2, v6

    aput v11, p2, v5

    aput v11, p2, v10

    aput v11, p2, v1

    aput p1, p2, v0

    .line 1
    invoke-static {p2}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput v11, p2, v6

    aput v11, p2, v5

    aput v11, p2, v10

    aput p1, p2, v1

    aput v11, p2, v0

    .line 2
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput v11, p2, v6

    aput v11, p2, v5

    aput p1, p2, v10

    aput v11, p2, v1

    aput v11, p2, v0

    .line 3
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput v11, p2, v6

    aput p1, p2, v5

    aput v11, p2, v10

    aput v11, p2, v1

    aput v11, p2, v0

    .line 4
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput p1, p2, v6

    aput v11, p2, v5

    aput v11, p2, v10

    aput v11, p2, v1

    aput v11, p2, v0

    .line 5
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput p1, p2, v7

    aput v11, p2, v6

    aput v11, p2, v5

    aput v11, p2, v10

    aput v11, p2, v1

    aput v11, p2, v0

    .line 6
    invoke-static {p2}, Lz/k;->s([I)V

    :goto_0
    const-wide/16 p1, 0x32

    .line 7
    invoke-static {p1, p2}, La/i;->a0(J)V

    new-array p1, v4, [I

    .line 8
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        -0x39
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
