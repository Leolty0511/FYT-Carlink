.class public Lk0/ss;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ss;->c:I

    const/16 v1, 0x9

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

    new-array v2, v2, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/ss;->d:[[I

    .line 4
    iput v0, p0, Lk0/ss;->e:I

    .line 5
    new-instance v0, Lk0/ss$a;

    invoke-direct {v0, p0}, Lk0/ss$a;-><init>(Lk0/ss;)V

    iput-object v0, p0, Lk0/ss;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/ss$b;

    invoke-direct {v0, p0}, Lk0/ss$b;-><init>(Lk0/ss;)V

    iput-object v0, p0, Lk0/ss;->g:Ljava/lang/Runnable;

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
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x5
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x6
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 4

    if-eqz p1, :cond_9

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/16 v2, 0xa

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v3

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    .line 4
    invoke-virtual {p0, p1}, Lk0/ss;->a3(I)V

    goto/16 :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 5
    invoke-virtual {p0, p1}, Lk0/ss;->a3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v3

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    .line 7
    invoke-virtual {p0, p1}, Lk0/ss;->a3(I)V

    goto/16 :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v1}, Lk0/ss;->a3(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget p1, p1, v3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/4 p1, 0x7

    .line 10
    invoke-virtual {p0, p1}, Lk0/ss;->a3(I)V

    goto/16 :goto_0

    :cond_4
    const/4 p1, 0x6

    .line 11
    invoke-virtual {p0, p1}, Lk0/ss;->a3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    aget p1, p1, v3

    const/16 v0, 0xc

    if-eqz p1, :cond_5

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_9

    .line 14
    invoke-virtual {p0, v2}, Lk0/ss;->a3(I)V

    goto :goto_0

    .line 15
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v3, :cond_9

    .line 16
    invoke-virtual {p0, v2}, Lk0/ss;->a3(I)V

    goto :goto_0

    .line 17
    :pswitch_5
    aget p1, p1, v3

    const/16 v0, 0x8

    const/16 v1, 0x41

    if-eqz p1, :cond_6

    .line 18
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_9

    .line 19
    invoke-virtual {p0, v0}, Lk0/ss;->a3(I)V

    goto :goto_0

    .line 20
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v3, :cond_9

    .line 21
    invoke-virtual {p0, v0}, Lk0/ss;->a3(I)V

    goto :goto_0

    .line 22
    :pswitch_6
    aget p1, p1, v3

    const/16 v0, 0x9

    const/16 v1, 0xb

    if-eqz p1, :cond_7

    .line 23
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_9

    .line 24
    invoke-virtual {p0, v0}, Lk0/ss;->a3(I)V

    goto :goto_0

    .line 25
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v3, :cond_9

    .line 26
    invoke-virtual {p0, v0}, Lk0/ss;->a3(I)V

    goto :goto_0

    .line 27
    :pswitch_7
    aget p1, p1, v3

    if-eqz p1, :cond_8

    .line 28
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_9

    .line 29
    invoke-virtual {p0, v3}, Lk0/ss;->a3(I)V

    goto :goto_0

    .line 30
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v3, :cond_9

    .line 31
    invoke-virtual {p0, v3}, Lk0/ss;->a3(I)V

    :cond_9
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
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
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/ss;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

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
    .locals 11

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    const/4 v2, 0x5

    const/16 v3, 0xff

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v1, :cond_11

    const/16 v1, 0x24

    const/4 v8, 0x2

    if-eq v0, v1, :cond_f

    const/16 v1, 0x40

    if-eq v0, v1, :cond_e

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_b

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_a

    const/16 p3, 0x28

    if-eq v0, p3, :cond_1

    const/16 p3, 0x29

    if-eq v0, p3, :cond_0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    add-int/2addr p2, v5

    aget-byte p1, p1, p2

    const/16 p2, 0x1e77

    invoke-static {p3, p1, v6, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_6

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    add-int/lit8 v0, p2, 0x3

    .line 4
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    add-int/2addr p2, v4

    .line 5
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    new-array p2, v7, [I

    shr-int/lit8 v1, p3, 0x7

    and-int/2addr v1, v7

    aput v1, p2, v6

    const/16 v1, 0xa

    .line 6
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 v3, p3, 0x6

    and-int/2addr v3, v7

    aput v3, p2, v6

    const/16 v3, 0xb

    .line 7
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xc

    new-array v9, v7, [I

    shr-int/lit8 v10, p3, 0x5

    and-int/2addr v10, v7

    aput v10, v9, v6

    .line 8
    invoke-static {p2, v9}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x3f

    new-array v9, v7, [I

    shr-int/lit8 v10, p3, 0x4

    and-int/2addr v10, v7

    aput v10, v9, v6

    .line 9
    invoke-static {p2, v9}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x35

    new-array v9, v7, [I

    shr-int/lit8 v10, p3, 0x3

    and-int/2addr v10, v7

    aput v10, v9, v6

    .line 10
    invoke-static {p2, v9}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x41

    new-array v9, v7, [I

    shr-int/2addr p3, v7

    and-int/2addr p3, v7

    aput p3, v9, v6

    .line 11
    invoke-static {p2, v9}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 p2, v0, 0x4

    and-int/lit8 p2, p2, 0xf

    if-eq p2, v7, :cond_6

    if-eq p2, v8, :cond_5

    if-eq p2, v5, :cond_4

    if-eq p2, v4, :cond_3

    if-eq p2, v2, :cond_2

    move p2, v6

    move p3, p2

    :goto_0
    move v2, p3

    goto :goto_1

    :cond_2
    move p3, v6

    move v2, p3

    move p2, v7

    goto :goto_1

    :cond_3
    move p3, v6

    move p2, v7

    move v2, p2

    goto :goto_1

    :cond_4
    move p2, v6

    move p3, p2

    move v2, v7

    goto :goto_1

    :cond_5
    move p2, v6

    move p3, v7

    goto :goto_0

    :cond_6
    move p2, v6

    move v2, p2

    move p3, v7

    :goto_1
    const/16 v4, 0x12

    new-array v5, v7, [I

    aput p2, v5, v6

    .line 12
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x13

    new-array v4, v7, [I

    aput p3, v4, v6

    .line 13
    invoke-static {p2, v4}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x14

    new-array p3, v7, [I

    aput v2, p3, v6

    .line 14
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x15

    new-array p3, v7, [I

    shr-int/2addr v0, v6

    and-int/lit8 v0, v0, 0xf

    aput v0, p3, v6

    .line 15
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    if-eqz p1, :cond_9

    if-eq p1, v3, :cond_8

    if-lt p1, v7, :cond_7

    if-gt p1, v1, :cond_7

    mul-int/2addr p1, v1

    add-int/lit16 p1, p1, 0xb4

    goto :goto_2

    :cond_7
    const/4 p1, -0x1

    goto :goto_2

    :cond_8
    const/4 p1, -0x3

    goto :goto_2

    :cond_9
    const/4 p1, -0x2

    :goto_2
    const/16 p2, 0x1b

    new-array p3, v7, [I

    aput p1, p3, v6

    .line 16
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    .line 17
    :cond_a
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v8

    sub-int/2addr p3, v8

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_b
    add-int/lit8 p3, p2, 0x2

    .line 18
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    if-eq p3, v7, :cond_c

    goto/16 :goto_6

    :cond_c
    const-string p3, "persist.fyt.leftrightlighttype"

    .line 19
    invoke-static {p3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_d

    add-int/2addr p2, v5

    .line 20
    aget-byte p3, p1, p2

    shr-int/2addr p3, v5

    and-int/2addr p3, v7

    aget-byte p1, p1, p2

    shr-int/2addr p1, v4

    and-int/2addr p1, v7

    invoke-static {p3, p1, v6}, Ll0/c0;->b(III)V

    goto/16 :goto_6

    :cond_d
    add-int/2addr p2, v5

    .line 21
    aget-byte p3, p1, p2

    shr-int/2addr p3, v5

    and-int/2addr p3, v7

    aget-byte p1, p1, p2

    shr-int/2addr p1, v4

    and-int/2addr p1, v7

    invoke-static {p3, p1, v6}, Ll0/c0;->a(III)V

    goto/16 :goto_6

    :cond_e
    const/16 p3, 0x62

    new-array v0, v7, [I

    add-int/lit8 v1, p2, 0x2

    .line 22
    aget-byte v2, p1, v1

    shr-int/2addr v2, v4

    and-int/lit8 v2, v2, 0xf

    aput v2, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v7, [I

    .line 23
    aget-byte v2, p1, v1

    shr-int/2addr v2, v8

    and-int/2addr v2, v5

    aput v2, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v7, [I

    .line 24
    aget-byte v1, p1, v1

    shr-int/2addr v1, v6

    and-int/2addr v1, v5

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v7, [I

    add-int/2addr p2, v5

    .line 25
    aget-byte v1, p1, p2

    shr-int/2addr v1, v8

    and-int/2addr v1, v7

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v7, [I

    .line 26
    aget-byte p1, p1, p2

    shr-int/2addr p1, v6

    and-int/2addr p1, v5

    aput p1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_f
    add-int/2addr p2, v8

    .line 27
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 28
    invoke-static {p2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_10

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 29
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 30
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_10
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 31
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 32
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    :goto_3
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 33
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 34
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/2addr p1, v5

    and-int/2addr p1, v7

    aput p1, p2, v6

    .line 35
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_11
    add-int/lit8 p3, p2, 0x2

    .line 36
    aget-byte p3, p1, p3

    add-int/2addr p2, v5

    .line 37
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 38
    iput p2, p0, Lk0/ss;->c:I

    move p2, v6

    .line 39
    :goto_4
    iget-object p3, p0, Lk0/ss;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_13

    .line 40
    iget v0, p0, Lk0/ss;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v6

    if-ne v0, v1, :cond_12

    if-eqz v0, :cond_13

    .line 41
    iput p2, p0, Lk0/ss;->b:I

    goto :goto_5

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 42
    :cond_13
    :goto_5
    iget v0, p0, Lk0/ss;->c:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_16

    and-int/2addr p1, v3

    if-ne p1, v7, :cond_14

    .line 43
    array-length p1, p3

    if-ge p2, p1, :cond_19

    .line 44
    aget-object p1, p3, p2

    aget p1, p1, v7

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_14
    if-nez p1, :cond_19

    .line 45
    iget p1, p0, Lk0/ss;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_15

    if-eq p1, v3, :cond_15

    .line 46
    aget-object p1, p3, p1

    aget p1, p1, v7

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 47
    :cond_15
    iput v3, p0, Lk0/ss;->b:I

    goto :goto_6

    :cond_16
    and-int/2addr p1, v3

    if-ne p1, v7, :cond_19

    .line 48
    sget p1, Lh0/c;->E:I

    const/16 p2, 0x1a

    if-eq p1, v5, :cond_18

    if-eq p1, v4, :cond_18

    if-eq p1, v2, :cond_18

    .line 49
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object p1

    invoke-virtual {p1}, Lu0/i;->r3()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 50
    invoke-static {p2, v6}, Ll0/b0;->l0(II)V

    .line 51
    invoke-static {p2, v7}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_17
    const/4 p1, 0x6

    .line 52
    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    .line 53
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    goto :goto_6

    .line 54
    :cond_18
    invoke-static {p2, v6}, Ll0/b0;->l0(II)V

    .line 55
    invoke-static {p2, v7}, Ll0/b0;->l0(II)V

    :cond_19
    :goto_6
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ss;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/ss;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x67

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
    .locals 5

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, 0xc6

    aput v0, p1, v3

    aput v4, p1, v4

    .line 2
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, 0xe0

    aput v0, p1, v3

    aput v4, p1, v4

    .line 4
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a3(I)V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/16 v5, -0x20

    aput v5, v1, v4

    const/4 v6, 0x2

    aput v6, v1, v6

    const/4 v7, 0x3

    aput p1, v1, v7

    const/4 v8, 0x4

    aput v4, v1, v8

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v9, 0x64

    .line 2
    invoke-static {v9, v10}, La/i;->a0(J)V

    new-array v0, v0, [I

    aput v3, v0, v2

    aput v5, v0, v4

    aput v6, v0, v6

    aput p1, v0, v7

    aput v2, v0, v8

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
