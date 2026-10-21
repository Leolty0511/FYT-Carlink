.class public Lk0/kq;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Z

.field public g:Ljava/lang/Runnable;

.field public h:I

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/kq;->c:I

    const/16 v1, 0x1f

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

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v4, 0x16

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v4, 0x17

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v4, 0x18

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v4, 0x19

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v4, 0x1a

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v4, 0x1b

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v4, 0x1c

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    const/16 v4, 0x1d

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_1e

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/kq;->d:[[I

    .line 4
    iput v0, p0, Lk0/kq;->e:I

    .line 5
    iput-boolean v0, p0, Lk0/kq;->f:Z

    .line 6
    new-instance v1, Lk0/kq$a;

    invoke-direct {v1, p0}, Lk0/kq$a;-><init>(Lk0/kq;)V

    iput-object v1, p0, Lk0/kq;->g:Ljava/lang/Runnable;

    .line 7
    iput v0, p0, Lk0/kq;->h:I

    .line 8
    new-instance v0, Lk0/kq$b;

    invoke-direct {v0, p0}, Lk0/kq$b;-><init>(Lk0/kq;)V

    iput-object v0, p0, Lk0/kq;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/kq$c;

    invoke-direct {v0, p0}, Lk0/kq$c;-><init>(Lk0/kq;)V

    iput-object v0, p0, Lk0/kq;->j:Ljava/lang/Runnable;

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
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x22
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x23
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x5
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x21
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x20
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x7
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x8
    .end array-data

    :array_12
    .array-data 4
        0x13
        0x1f
    .end array-data

    :array_13
    .array-data 4
        0x14
        0x1e
    .end array-data

    :array_14
    .array-data 4
        0x15
        0x18
    .end array-data

    :array_15
    .array-data 4
        0x16
        0x1
    .end array-data

    :array_16
    .array-data 4
        0x17
        0x36
    .end array-data

    :array_17
    .array-data 4
        0x18
        0x0
    .end array-data

    :array_18
    .array-data 4
        0x19
        0xd
    .end array-data

    :array_19
    .array-data 4
        0x1a
        0x6
    .end array-data

    :array_1a
    .array-data 4
        0x1b
        0x5
    .end array-data

    :array_1b
    .array-data 4
        0x1c
        0xd
    .end array-data

    :array_1c
    .array-data 4
        0x20
        0x3a
    .end array-data

    :array_1d
    .array-data 4
        0x21
        0x26
    .end array-data

    :array_1e
    .array-data 4
        0x22
        0xb
    .end array-data
.end method

.method public static d3([B)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 2
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-gt v1, v0, :cond_0

    .line 3
    aget-byte v3, p0, v1

    add-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    xor-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 4
    aput-byte v1, p0, v0

    .line 5
    invoke-static {p0}, Lz/k;->q([B)V

    :cond_1
    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 12

    if-eqz p1, :cond_13

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v2, p1, v0

    const/16 v3, 0x29

    const/16 v4, 0xff

    const/16 v5, 0xfe

    const/16 v6, 0xd

    const/4 v7, 0x1

    if-eq v2, v3, :cond_11

    const/16 v3, 0x2a

    const/16 v8, 0xe

    if-eq v2, v3, :cond_f

    const/16 v3, 0x37

    const/16 v9, 0x7f

    const/16 v10, 0x20

    const/16 v11, 0xf

    if-eq v2, v3, :cond_c

    const/16 v3, 0x38

    if-eq v2, v3, :cond_9

    const/16 v1, 0xb

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    aget v0, p1, v7

    const/4 v1, -0x2

    const/16 v2, 0x11

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 4
    aget p1, p1, v7

    invoke-virtual {p0, v2, p1}, Lk0/kq;->a3(II)V

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v2, v4}, Lk0/kq;->a3(II)V

    goto/16 :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0, v2, v5}, Lk0/kq;->a3(II)V

    goto/16 :goto_0

    .line 7
    :pswitch_1
    aget p1, p1, v7

    const/16 v0, 0xc

    if-eqz p1, :cond_3

    .line 8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_13

    .line 9
    invoke-virtual {p0, v1, v7}, Lk0/kq;->a3(II)V

    goto/16 :goto_0

    .line 10
    :cond_3
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v7, :cond_13

    .line 11
    invoke-virtual {p0, v0, v7}, Lk0/kq;->a3(II)V

    goto/16 :goto_0

    .line 12
    :pswitch_2
    aget p1, p1, v7

    const/4 v1, 0x5

    const/16 v2, 0x10

    if-eqz p1, :cond_4

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_13

    .line 14
    invoke-virtual {p0, v1, v7}, Lk0/kq;->a3(II)V

    goto/16 :goto_0

    .line 15
    :cond_4
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v7, :cond_13

    .line 16
    invoke-virtual {p0, v1, v0}, Lk0/kq;->a3(II)V

    goto/16 :goto_0

    .line 17
    :pswitch_3
    aget p1, p1, v7

    const/4 v1, 0x4

    if-eqz p1, :cond_5

    .line 18
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v11

    if-nez p1, :cond_13

    .line 19
    invoke-virtual {p0, v1, v7}, Lk0/kq;->a3(II)V

    goto/16 :goto_0

    .line 20
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v11

    if-ne p1, v7, :cond_13

    .line 21
    invoke-virtual {p0, v1, v0}, Lk0/kq;->a3(II)V

    goto/16 :goto_0

    .line 22
    :pswitch_4
    aget p1, p1, v7

    const/16 v1, 0x2c

    if-eqz p1, :cond_6

    .line 23
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v6

    if-nez p1, :cond_13

    .line 24
    invoke-virtual {p0, v1, v7}, Lk0/kq;->a3(II)V

    goto/16 :goto_0

    .line 25
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v6

    if-ne p1, v7, :cond_13

    .line 26
    invoke-virtual {p0, v1, v0}, Lk0/kq;->a3(II)V

    goto/16 :goto_0

    .line 27
    :pswitch_5
    aget p1, p1, v7

    const/16 v2, 0x9

    if-eqz p1, :cond_7

    .line 28
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_13

    .line 29
    invoke-virtual {p0, v2, v7}, Lk0/kq;->a3(II)V

    goto/16 :goto_0

    .line 30
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v7, :cond_13

    .line 31
    invoke-virtual {p0, v2, v0}, Lk0/kq;->a3(II)V

    goto/16 :goto_0

    .line 32
    :pswitch_6
    aget p1, p1, v7

    const/16 v1, 0xa

    if-eqz p1, :cond_8

    .line 33
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_13

    .line 34
    invoke-virtual {p0, v7, v7}, Lk0/kq;->a3(II)V

    goto :goto_0

    .line 35
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v7, :cond_13

    .line 36
    invoke-virtual {p0, v7, v0}, Lk0/kq;->a3(II)V

    goto :goto_0

    .line 37
    :cond_9
    aget v2, p1, v7

    if-gt v2, v11, :cond_a

    .line 38
    invoke-virtual {p0, v8, v0}, Lk0/kq;->a3(II)V

    goto :goto_0

    .line 39
    :cond_a
    aget v0, p1, v7

    if-lt v0, v10, :cond_b

    .line 40
    invoke-virtual {p0, v8, v9}, Lk0/kq;->a3(II)V

    goto :goto_0

    .line 41
    :cond_b
    aget p1, p1, v7

    mul-int/2addr p1, v1

    invoke-virtual {p0, v8, p1}, Lk0/kq;->a3(II)V

    goto :goto_0

    .line 42
    :cond_c
    aget v2, p1, v7

    if-gt v2, v11, :cond_d

    .line 43
    invoke-virtual {p0, v6, v0}, Lk0/kq;->a3(II)V

    goto :goto_0

    .line 44
    :cond_d
    aget v0, p1, v7

    if-lt v0, v10, :cond_e

    .line 45
    invoke-virtual {p0, v6, v9}, Lk0/kq;->a3(II)V

    goto :goto_0

    .line 46
    :cond_e
    aget p1, p1, v7

    mul-int/2addr p1, v1

    invoke-virtual {p0, v6, p1}, Lk0/kq;->a3(II)V

    goto :goto_0

    .line 47
    :cond_f
    aget p1, p1, v7

    if-eqz p1, :cond_10

    .line 48
    invoke-virtual {p0, v8, v4}, Lk0/kq;->a3(II)V

    goto :goto_0

    .line 49
    :cond_10
    invoke-virtual {p0, v8, v5}, Lk0/kq;->a3(II)V

    goto :goto_0

    .line 50
    :cond_11
    aget p1, p1, v7

    if-eqz p1, :cond_12

    .line 51
    invoke-virtual {p0, v6, v4}, Lk0/kq;->a3(II)V

    goto :goto_0

    .line 52
    :cond_12
    invoke-virtual {p0, v6, v5}, Lk0/kq;->a3(II)V

    :cond_13
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public S2()V
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/kq;->i:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    const/4 v1, 0x2

    .line 6
    iput v1, v0, Lk0/mt;->h:I

    .line 7
    iput v2, v0, Lk0/mt;->i:I

    const/4 v1, 0x0

    .line 8
    iput v1, v0, Lk0/mt;->j:I

    .line 9
    iput v1, v0, Lk0/mt;->o:I

    .line 10
    iput v1, v0, Lk0/mt;->l:I

    .line 11
    sget v1, Lk0/nt;->a:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 12
    :sswitch_0
    iput v2, v0, Lk0/mt;->l:I

    .line 13
    :goto_0
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/kq;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/kq;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/kq;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/kq;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xd

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

    :sswitch_data_0
    .sparse-switch
        0xb901c6 -> :sswitch_0
        0xba01c6 -> :sswitch_0
        0xbb01c6 -> :sswitch_0
        0xbc01c6 -> :sswitch_0
        0xbd01c6 -> :sswitch_0
        0xbe01c6 -> :sswitch_0
        0xbf01c6 -> :sswitch_0
        0xc001c6 -> :sswitch_0
        0xc101c6 -> :sswitch_0
        0xc201c6 -> :sswitch_0
        0xc301c6 -> :sswitch_0
        0xc401c6 -> :sswitch_0
        0xc501c6 -> :sswitch_0
        0xc601c6 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x37
        0x38
        0x3b
    .end array-data
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0xa

    const v4, 0xff00

    const/16 v5, 0x10

    const/16 v6, 0x8

    const/16 v7, 0xff

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v3, :cond_38

    const/16 v11, 0xb

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v15, 0x4

    const/4 v3, 0x2

    if-eq v2, v11, :cond_37

    const/16 v11, 0x30

    if-eq v2, v11, :cond_36

    const/16 v11, 0x70

    if-eq v2, v11, :cond_34

    const/16 v11, 0x72

    if-eq v2, v11, :cond_31

    const/16 v11, 0x7f

    const/16 v14, 0xf

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_18

    :pswitch_0
    const/16 v2, 0x11b

    new-array v12, v10, [I

    add-int/lit8 v16, p2, 0x2

    .line 2
    aget-byte v17, v1, v16

    shr-int/lit8 v13, v17, 0x5

    and-int/2addr v13, v10

    aput v13, v12, v9

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11c

    new-array v12, v10, [I

    .line 3
    aget-byte v13, v1, v16

    shr-int/2addr v13, v15

    and-int/2addr v13, v10

    aput v13, v12, v9

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11d

    new-array v12, v10, [I

    .line 4
    aget-byte v13, v1, v16

    shr-int/lit8 v3, v13, 0x2

    and-int/2addr v3, v8

    aput v3, v12, v9

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11e

    new-array v3, v10, [I

    .line 5
    aget-byte v12, v1, v16

    and-int/2addr v12, v8

    shl-int/2addr v12, v5

    add-int/lit8 v13, p2, 0x3

    aget-byte v13, v1, v13

    shl-int/2addr v13, v6

    and-int/2addr v13, v4

    or-int/2addr v12, v13

    add-int/lit8 v13, p2, 0x4

    aget-byte v13, v1, v13

    and-int/2addr v13, v7

    or-int/2addr v12, v13

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11f

    new-array v3, v10, [I

    add-int/lit8 v12, p2, 0x5

    .line 6
    aget-byte v13, v1, v12

    shr-int/2addr v13, v10

    and-int/2addr v13, v11

    aput v13, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x120

    new-array v3, v10, [I

    .line 7
    aget-byte v12, v1, v12

    and-int/2addr v12, v10

    shl-int/2addr v12, v6

    add-int/lit8 v13, p2, 0x6

    aget-byte v13, v1, v13

    and-int/2addr v13, v7

    or-int/2addr v12, v13

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x121

    new-array v3, v10, [I

    add-int/lit8 v12, p2, 0x7

    .line 8
    aget-byte v12, v1, v12

    and-int/2addr v8, v12

    shl-int/2addr v8, v6

    add-int/lit8 v12, p2, 0x8

    aget-byte v12, v1, v12

    and-int/2addr v12, v7

    or-int/2addr v8, v12

    aput v8, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x122

    new-array v3, v10, [I

    add-int/lit8 v8, p2, 0x9

    .line 9
    aget-byte v8, v1, v8

    and-int/lit8 v8, v8, 0x3f

    shl-int/lit8 v5, v8, 0x10

    add-int/lit8 v8, p2, 0xa

    aget-byte v8, v1, v8

    shl-int/lit8 v6, v8, 0x8

    and-int/2addr v4, v6

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x123

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xc

    .line 10
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x124

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xd

    .line 11
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x125

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xe

    .line 12
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x126

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xf

    .line 13
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x127

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x10

    .line 14
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x128

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x11

    .line 15
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x129

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x12

    .line 16
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12a

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x13

    .line 17
    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0x3f

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_1
    const/16 v2, 0x10b

    new-array v12, v10, [I

    add-int/lit8 v16, p2, 0x2

    .line 18
    aget-byte v17, v1, v16

    shr-int/lit8 v13, v17, 0x5

    and-int/2addr v13, v10

    aput v13, v12, v9

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10c

    new-array v12, v10, [I

    .line 19
    aget-byte v13, v1, v16

    shr-int/2addr v13, v15

    and-int/2addr v13, v10

    aput v13, v12, v9

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10d

    new-array v12, v10, [I

    .line 20
    aget-byte v13, v1, v16

    shr-int/lit8 v3, v13, 0x2

    and-int/2addr v3, v8

    aput v3, v12, v9

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10e

    new-array v3, v10, [I

    .line 21
    aget-byte v12, v1, v16

    and-int/2addr v12, v8

    shl-int/2addr v12, v5

    add-int/lit8 v13, p2, 0x3

    aget-byte v13, v1, v13

    shl-int/2addr v13, v6

    and-int/2addr v13, v4

    or-int/2addr v12, v13

    add-int/lit8 v13, p2, 0x4

    aget-byte v13, v1, v13

    and-int/2addr v13, v7

    or-int/2addr v12, v13

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10f

    new-array v3, v10, [I

    add-int/lit8 v12, p2, 0x5

    .line 22
    aget-byte v13, v1, v12

    shr-int/2addr v13, v10

    and-int/2addr v13, v11

    aput v13, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x110

    new-array v3, v10, [I

    .line 23
    aget-byte v12, v1, v12

    and-int/2addr v12, v10

    shl-int/2addr v12, v6

    add-int/lit8 v13, p2, 0x6

    aget-byte v13, v1, v13

    and-int/2addr v13, v7

    or-int/2addr v12, v13

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x111

    new-array v3, v10, [I

    add-int/lit8 v12, p2, 0x7

    .line 24
    aget-byte v12, v1, v12

    and-int/2addr v8, v12

    shl-int/2addr v8, v6

    add-int/lit8 v12, p2, 0x8

    aget-byte v12, v1, v12

    and-int/2addr v12, v7

    or-int/2addr v8, v12

    aput v8, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x112

    new-array v3, v10, [I

    add-int/lit8 v8, p2, 0x9

    .line 25
    aget-byte v8, v1, v8

    and-int/lit8 v8, v8, 0x3f

    shl-int/lit8 v5, v8, 0x10

    add-int/lit8 v8, p2, 0xa

    aget-byte v8, v1, v8

    shl-int/lit8 v6, v8, 0x8

    and-int/2addr v4, v6

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x113

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xc

    .line 26
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x114

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xd

    .line 27
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x115

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xe

    .line 28
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x116

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xf

    .line 29
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x117

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x10

    .line 30
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x118

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x11

    .line 31
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x119

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x12

    .line 32
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11a

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x13

    .line 33
    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0x3f

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_2
    const/16 v2, 0xfb

    new-array v12, v10, [I

    add-int/lit8 v16, p2, 0x2

    .line 34
    aget-byte v17, v1, v16

    shr-int/lit8 v13, v17, 0x5

    and-int/2addr v13, v10

    aput v13, v12, v9

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfc

    new-array v12, v10, [I

    .line 35
    aget-byte v13, v1, v16

    shr-int/2addr v13, v15

    and-int/2addr v13, v10

    aput v13, v12, v9

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfd

    new-array v12, v10, [I

    .line 36
    aget-byte v13, v1, v16

    shr-int/lit8 v3, v13, 0x2

    and-int/2addr v3, v8

    aput v3, v12, v9

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfe

    new-array v3, v10, [I

    .line 37
    aget-byte v12, v1, v16

    and-int/2addr v12, v8

    shl-int/2addr v12, v5

    add-int/lit8 v13, p2, 0x3

    aget-byte v13, v1, v13

    shl-int/2addr v13, v6

    and-int/2addr v13, v4

    or-int/2addr v12, v13

    add-int/lit8 v13, p2, 0x4

    aget-byte v13, v1, v13

    and-int/2addr v13, v7

    or-int/2addr v12, v13

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    add-int/lit8 v3, p2, 0x5

    .line 38
    aget-byte v12, v1, v3

    shr-int/2addr v12, v10

    and-int/2addr v12, v11

    aput v12, v2, v9

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x100

    new-array v12, v10, [I

    .line 39
    aget-byte v3, v1, v3

    and-int/2addr v3, v10

    shl-int/2addr v3, v6

    add-int/lit8 v13, p2, 0x6

    aget-byte v13, v1, v13

    and-int/2addr v13, v7

    or-int/2addr v3, v13

    aput v3, v12, v9

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x101

    new-array v3, v10, [I

    add-int/lit8 v12, p2, 0x7

    .line 40
    aget-byte v12, v1, v12

    and-int/2addr v8, v12

    shl-int/2addr v8, v6

    add-int/lit8 v12, p2, 0x8

    aget-byte v12, v1, v12

    and-int/2addr v12, v7

    or-int/2addr v8, v12

    aput v8, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x102

    new-array v3, v10, [I

    add-int/lit8 v8, p2, 0x9

    .line 41
    aget-byte v8, v1, v8

    and-int/lit8 v8, v8, 0x3f

    shl-int/lit8 v5, v8, 0x10

    add-int/lit8 v8, p2, 0xa

    aget-byte v8, v1, v8

    shl-int/lit8 v6, v8, 0x8

    and-int/2addr v4, v6

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x103

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xc

    .line 42
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x104

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xd

    .line 43
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x105

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xe

    .line 44
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x106

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xf

    .line 45
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x107

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x10

    .line 46
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x108

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x11

    .line 47
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x109

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x12

    .line 48
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10a

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x13

    .line 49
    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0x3f

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_3
    const/16 v2, 0xeb

    new-array v12, v10, [I

    add-int/lit8 v16, p2, 0x2

    .line 50
    aget-byte v17, v1, v16

    shr-int/lit8 v13, v17, 0x5

    and-int/2addr v13, v10

    aput v13, v12, v9

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xec

    new-array v12, v10, [I

    .line 51
    aget-byte v13, v1, v16

    shr-int/2addr v13, v15

    and-int/2addr v13, v10

    aput v13, v12, v9

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xed

    new-array v12, v10, [I

    .line 52
    aget-byte v13, v1, v16

    shr-int/lit8 v3, v13, 0x2

    and-int/2addr v3, v8

    aput v3, v12, v9

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xee

    new-array v3, v10, [I

    .line 53
    aget-byte v12, v1, v16

    and-int/2addr v12, v8

    shl-int/2addr v12, v5

    add-int/lit8 v13, p2, 0x3

    aget-byte v13, v1, v13

    shl-int/2addr v13, v6

    and-int/2addr v13, v4

    or-int/2addr v12, v13

    add-int/lit8 v13, p2, 0x4

    aget-byte v13, v1, v13

    and-int/2addr v13, v7

    or-int/2addr v12, v13

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xef

    new-array v3, v10, [I

    add-int/lit8 v12, p2, 0x5

    .line 54
    aget-byte v13, v1, v12

    shr-int/2addr v13, v10

    and-int/2addr v13, v11

    aput v13, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf0

    new-array v3, v10, [I

    .line 55
    aget-byte v12, v1, v12

    and-int/2addr v12, v10

    shl-int/2addr v12, v6

    add-int/lit8 v13, p2, 0x6

    aget-byte v13, v1, v13

    and-int/2addr v13, v7

    or-int/2addr v12, v13

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf1

    new-array v3, v10, [I

    add-int/lit8 v12, p2, 0x7

    .line 56
    aget-byte v12, v1, v12

    and-int/2addr v8, v12

    shl-int/2addr v8, v6

    add-int/lit8 v12, p2, 0x8

    aget-byte v12, v1, v12

    and-int/2addr v12, v7

    or-int/2addr v8, v12

    aput v8, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf2

    new-array v3, v10, [I

    add-int/lit8 v8, p2, 0x9

    .line 57
    aget-byte v8, v1, v8

    and-int/lit8 v8, v8, 0x3f

    shl-int/lit8 v5, v8, 0x10

    add-int/lit8 v8, p2, 0xa

    aget-byte v8, v1, v8

    shl-int/lit8 v6, v8, 0x8

    and-int/2addr v4, v6

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf3

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xc

    .line 58
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf4

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xd

    .line 59
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf5

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xe

    .line 60
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf6

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xf

    .line 61
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf7

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x10

    .line 62
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf8

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x11

    .line 63
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf9

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x12

    .line 64
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfa

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x13

    .line 65
    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0x3f

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_4
    const/16 v2, 0xdb

    new-array v12, v10, [I

    add-int/lit8 v16, p2, 0x2

    .line 66
    aget-byte v17, v1, v16

    shr-int/lit8 v13, v17, 0x5

    and-int/2addr v13, v10

    aput v13, v12, v9

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdc

    new-array v12, v10, [I

    .line 67
    aget-byte v13, v1, v16

    shr-int/2addr v13, v15

    and-int/2addr v13, v10

    aput v13, v12, v9

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdd

    new-array v12, v10, [I

    .line 68
    aget-byte v13, v1, v16

    shr-int/lit8 v3, v13, 0x2

    and-int/2addr v3, v8

    aput v3, v12, v9

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xde

    new-array v3, v10, [I

    .line 69
    aget-byte v12, v1, v16

    and-int/2addr v12, v8

    shl-int/2addr v12, v5

    add-int/lit8 v13, p2, 0x3

    aget-byte v13, v1, v13

    shl-int/2addr v13, v6

    and-int/2addr v13, v4

    or-int/2addr v12, v13

    add-int/lit8 v13, p2, 0x4

    aget-byte v13, v1, v13

    and-int/2addr v13, v7

    or-int/2addr v12, v13

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdf

    new-array v3, v10, [I

    add-int/lit8 v12, p2, 0x5

    .line 70
    aget-byte v13, v1, v12

    shr-int/2addr v13, v10

    and-int/2addr v13, v11

    aput v13, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe0

    new-array v3, v10, [I

    .line 71
    aget-byte v12, v1, v12

    and-int/2addr v12, v10

    shl-int/2addr v12, v6

    add-int/lit8 v13, p2, 0x6

    aget-byte v13, v1, v13

    and-int/2addr v13, v7

    or-int/2addr v12, v13

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe1

    new-array v3, v10, [I

    add-int/lit8 v12, p2, 0x7

    .line 72
    aget-byte v12, v1, v12

    and-int/2addr v8, v12

    shl-int/2addr v8, v6

    add-int/lit8 v12, p2, 0x8

    aget-byte v12, v1, v12

    and-int/2addr v12, v7

    or-int/2addr v8, v12

    aput v8, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe2

    new-array v3, v10, [I

    add-int/lit8 v8, p2, 0x9

    .line 73
    aget-byte v8, v1, v8

    and-int/lit8 v8, v8, 0x3f

    shl-int/lit8 v5, v8, 0x10

    add-int/lit8 v8, p2, 0xa

    aget-byte v8, v1, v8

    shl-int/lit8 v6, v8, 0x8

    and-int/2addr v4, v6

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe3

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xc

    .line 74
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe4

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xd

    .line 75
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe5

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xe

    .line 76
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe6

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xf

    .line 77
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe7

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x10

    .line 78
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe8

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x11

    .line 79
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe9

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x12

    .line 80
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xea

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x13

    .line 81
    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0x3f

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_5
    const/16 v2, 0xcb

    new-array v12, v10, [I

    add-int/lit8 v16, p2, 0x2

    .line 82
    aget-byte v17, v1, v16

    shr-int/lit8 v13, v17, 0x5

    and-int/2addr v13, v10

    aput v13, v12, v9

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcc

    new-array v12, v10, [I

    .line 83
    aget-byte v13, v1, v16

    shr-int/2addr v13, v15

    and-int/2addr v13, v10

    aput v13, v12, v9

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcd

    new-array v12, v10, [I

    .line 84
    aget-byte v13, v1, v16

    shr-int/lit8 v3, v13, 0x2

    and-int/2addr v3, v8

    aput v3, v12, v9

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xce

    new-array v3, v10, [I

    .line 85
    aget-byte v12, v1, v16

    and-int/2addr v12, v8

    shl-int/2addr v12, v5

    add-int/lit8 v13, p2, 0x3

    aget-byte v13, v1, v13

    shl-int/2addr v13, v6

    and-int/2addr v13, v4

    or-int/2addr v12, v13

    add-int/lit8 v13, p2, 0x4

    aget-byte v13, v1, v13

    and-int/2addr v13, v7

    or-int/2addr v12, v13

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcf

    new-array v3, v10, [I

    add-int/lit8 v12, p2, 0x5

    .line 86
    aget-byte v13, v1, v12

    shr-int/2addr v13, v10

    and-int/2addr v13, v11

    aput v13, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd0

    new-array v3, v10, [I

    .line 87
    aget-byte v12, v1, v12

    and-int/2addr v12, v10

    shl-int/2addr v12, v6

    add-int/lit8 v13, p2, 0x6

    aget-byte v13, v1, v13

    and-int/2addr v13, v7

    or-int/2addr v12, v13

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd1

    new-array v3, v10, [I

    add-int/lit8 v12, p2, 0x7

    .line 88
    aget-byte v12, v1, v12

    and-int/2addr v8, v12

    shl-int/2addr v8, v6

    add-int/lit8 v12, p2, 0x8

    aget-byte v12, v1, v12

    and-int/2addr v12, v7

    or-int/2addr v8, v12

    aput v8, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd2

    new-array v3, v10, [I

    add-int/lit8 v8, p2, 0x9

    .line 89
    aget-byte v8, v1, v8

    and-int/lit8 v8, v8, 0x3f

    shl-int/lit8 v5, v8, 0x10

    add-int/lit8 v8, p2, 0xa

    aget-byte v8, v1, v8

    shl-int/lit8 v6, v8, 0x8

    and-int/2addr v4, v6

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd3

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xc

    .line 90
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd4

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xd

    .line 91
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd5

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xe

    .line 92
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd6

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xf

    .line 93
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd7

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x10

    .line 94
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd8

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x11

    .line 95
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd9

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x12

    .line 96
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xda

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x13

    .line 97
    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0x3f

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_6
    const/16 v2, 0xbd

    new-array v14, v10, [I

    add-int/lit8 v16, p2, 0x2

    .line 98
    aget-byte v17, v1, v16

    shr-int/lit8 v12, v17, 0x6

    and-int/2addr v12, v10

    aput v12, v14, v9

    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbe

    new-array v12, v10, [I

    .line 99
    aget-byte v14, v1, v16

    shr-int/lit8 v13, v14, 0x5

    and-int/2addr v13, v10

    aput v13, v12, v9

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbf

    new-array v12, v10, [I

    .line 100
    aget-byte v13, v1, v16

    shr-int/2addr v13, v15

    and-int/2addr v13, v10

    aput v13, v12, v9

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc0

    new-array v12, v10, [I

    .line 101
    aget-byte v13, v1, v16

    shr-int/lit8 v3, v13, 0x2

    and-int/2addr v3, v8

    aput v3, v12, v9

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc1

    new-array v3, v10, [I

    .line 102
    aget-byte v12, v1, v16

    and-int/2addr v12, v8

    shl-int/2addr v12, v5

    add-int/lit8 v13, p2, 0x3

    aget-byte v13, v1, v13

    shl-int/2addr v13, v6

    and-int/2addr v13, v4

    or-int/2addr v12, v13

    add-int/lit8 v13, p2, 0x4

    aget-byte v13, v1, v13

    and-int/2addr v13, v7

    or-int/2addr v12, v13

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc2

    new-array v3, v10, [I

    add-int/lit8 v12, p2, 0x5

    .line 103
    aget-byte v13, v1, v12

    shr-int/2addr v13, v10

    and-int/2addr v13, v11

    aput v13, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc3

    new-array v3, v10, [I

    .line 104
    aget-byte v12, v1, v12

    and-int/2addr v12, v10

    shl-int/2addr v12, v6

    add-int/lit8 v13, p2, 0x6

    aget-byte v13, v1, v13

    and-int/2addr v13, v7

    or-int/2addr v12, v13

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc4

    new-array v3, v10, [I

    add-int/lit8 v12, p2, 0x7

    .line 105
    aget-byte v12, v1, v12

    and-int/2addr v12, v8

    shl-int/2addr v12, v6

    add-int/lit8 v13, p2, 0x8

    aget-byte v13, v1, v13

    and-int/2addr v13, v7

    or-int/2addr v12, v13

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc5

    new-array v3, v10, [I

    add-int/lit8 v12, p2, 0x9

    .line 106
    aget-byte v12, v1, v12

    and-int/lit8 v12, v12, 0x3f

    shl-int/lit8 v5, v12, 0x10

    add-int/lit8 v12, p2, 0xa

    aget-byte v12, v1, v12

    shl-int/2addr v12, v6

    and-int/2addr v4, v12

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc6

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xc

    .line 107
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc7

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xd

    .line 108
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc8

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xe

    .line 109
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc9

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xf

    .line 110
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xca

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x10

    .line 111
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    shl-int/2addr v4, v6

    add-int/lit8 v5, p2, 0x11

    aget-byte v1, v1, v5

    and-int/2addr v1, v7

    or-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_7
    const/16 v2, 0xb5

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 112
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb6

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 113
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb7

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 114
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb8

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 115
    aget-byte v5, v1, v4

    const/4 v7, 0x7

    shr-int/2addr v5, v7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb9

    new-array v3, v10, [I

    .line 116
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v11

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xba

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 117
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbb

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 118
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbc

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 119
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/lit8 v1, v1, 0x3f

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_8
    const/16 v2, 0xaa

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x2

    .line 120
    aget-byte v6, v1, v5

    const/4 v11, 0x7

    shr-int/2addr v6, v11

    and-int/2addr v6, v10

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v4, v10, [I

    .line 121
    aget-byte v6, v1, v5

    shr-int/2addr v6, v12

    and-int/2addr v6, v10

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v4, v10, [I

    .line 122
    aget-byte v6, v1, v5

    shr-int/2addr v6, v13

    and-int/2addr v6, v10

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xad

    new-array v4, v10, [I

    .line 123
    aget-byte v6, v1, v5

    shr-int/2addr v6, v15

    and-int/2addr v6, v10

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xae

    new-array v4, v10, [I

    .line 124
    aget-byte v6, v1, v5

    shr-int/2addr v6, v8

    and-int/2addr v6, v10

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaf

    new-array v4, v10, [I

    .line 125
    aget-byte v5, v1, v5

    shr-int/lit8 v3, v5, 0x2

    and-int/2addr v3, v10

    aput v3, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb0

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 126
    aget-byte v5, v1, v4

    const/4 v6, 0x7

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v3, v10, [I

    .line 127
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb2

    new-array v3, v10, [I

    .line 128
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb3

    new-array v3, v10, [I

    .line 129
    aget-byte v4, v1, v4

    shr-int/2addr v4, v15

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb4

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 130
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_9
    const/16 v2, 0x8a

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x2

    .line 131
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x3

    .line 132
    aget-byte v6, v1, v5

    const/4 v11, 0x7

    shr-int/2addr v6, v11

    and-int/2addr v6, v10

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v4, v10, [I

    .line 133
    aget-byte v6, v1, v5

    shr-int/2addr v6, v12

    and-int/2addr v6, v10

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v4, v10, [I

    .line 134
    aget-byte v6, v1, v5

    shr-int/2addr v6, v15

    and-int/2addr v6, v8

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v4, v10, [I

    .line 135
    aget-byte v6, v1, v5

    shr-int/2addr v6, v8

    and-int/2addr v6, v10

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v4, v10, [I

    .line 136
    aget-byte v6, v1, v5

    shr-int/2addr v6, v3

    and-int/2addr v6, v10

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v4, v10, [I

    .line 137
    aget-byte v5, v1, v5

    shr-int/2addr v5, v9

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x4

    .line 138
    aget-byte v6, v1, v5

    const/4 v11, 0x7

    shr-int/2addr v6, v11

    and-int/2addr v6, v10

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v4, v10, [I

    .line 139
    aget-byte v6, v1, v5

    shr-int/2addr v6, v12

    and-int/2addr v6, v10

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v4, v10, [I

    .line 140
    aget-byte v6, v1, v5

    shr-int/2addr v6, v13

    and-int/2addr v6, v10

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v4, v10, [I

    .line 141
    aget-byte v6, v1, v5

    shr-int/2addr v6, v15

    and-int/2addr v6, v10

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v4, v10, [I

    .line 142
    aget-byte v6, v1, v5

    shr-int/2addr v6, v8

    and-int/2addr v6, v10

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v4, v10, [I

    .line 143
    aget-byte v6, v1, v5

    shr-int/lit8 v3, v6, 0x2

    and-int/2addr v3, v10

    aput v3, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v10, [I

    .line 144
    aget-byte v4, v1, v5

    shr-int/2addr v4, v10

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 145
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 146
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v14

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v10, [I

    .line 147
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v14

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 148
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 149
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x9

    .line 150
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xa

    .line 151
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xb

    .line 152
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xc

    .line 153
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v14

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v10, [I

    .line 154
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v14

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xd

    .line 155
    aget-byte v5, v1, v4

    const/4 v6, 0x7

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v3, v10, [I

    .line 156
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v3, v10, [I

    .line 157
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v3, v10, [I

    .line 158
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v3, v10, [I

    .line 159
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v14

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa7

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xe

    .line 160
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v8

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v3, v10, [I

    .line 161
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v8

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    new-array v3, v10, [I

    .line 162
    aget-byte v1, v1, v4

    shr-int/2addr v1, v8

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_a
    const/16 v2, 0x87

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x2

    .line 163
    aget-byte v5, v1, v5

    shl-int/2addr v5, v6

    and-int/2addr v5, v4

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v1, v8

    and-int/2addr v8, v7

    or-int/2addr v5, v8

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x4

    .line 164
    aget-byte v5, v1, v5

    shl-int/2addr v5, v6

    and-int/2addr v5, v4

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v1, v8

    and-int/2addr v8, v7

    or-int/2addr v5, v8

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x6

    .line 165
    aget-byte v5, v1, v5

    shl-int/2addr v5, v6

    and-int/2addr v4, v5

    const/4 v5, 0x7

    add-int/lit8 v5, p2, 0x7

    aget-byte v1, v1, v5

    and-int/2addr v1, v7

    or-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_b
    const/16 v2, 0x136

    new-array v4, v10, [I

    add-int/lit8 v3, p2, 0x2

    .line 166
    aget-byte v5, v1, v3

    shr-int/2addr v5, v15

    and-int/2addr v5, v14

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x137

    new-array v4, v10, [I

    .line 167
    aget-byte v1, v1, v3

    shr-int/2addr v1, v9

    and-int/2addr v1, v14

    aput v1, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_c
    add-int/lit8 v2, p2, 0x2

    .line 168
    aget-byte v3, v1, v2

    shr-int/2addr v3, v13

    and-int/2addr v3, v10

    aget-byte v2, v1, v2

    shr-int/2addr v2, v15

    and-int/2addr v2, v10

    invoke-static {v3, v2, v9}, Ll0/c0;->N1(III)V

    const/16 v2, 0x85

    new-array v3, v10, [I

    add-int/lit8 v8, p2, 0x4

    .line 169
    aget-byte v8, v1, v8

    shl-int/2addr v8, v6

    and-int/2addr v8, v4

    add-int/lit8 v11, p2, 0x5

    aget-byte v11, v1, v11

    and-int/2addr v11, v7

    or-int/2addr v8, v11

    aput v8, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v10, [I

    add-int/lit8 v8, p2, 0x9

    .line 170
    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x18

    const/high16 v10, -0x1000000

    and-int/2addr v8, v10

    add-int/lit8 v10, p2, 0xa

    aget-byte v10, v1, v10

    shl-int/lit8 v5, v10, 0x10

    const/high16 v10, 0xff0000

    and-int/2addr v5, v10

    or-int/2addr v5, v8

    add-int/lit8 v8, p2, 0xb

    aget-byte v8, v1, v8

    shl-int/lit8 v6, v8, 0x8

    and-int/2addr v4, v6

    or-int/2addr v4, v5

    const/16 v5, 0xc

    add-int/lit8 v5, p2, 0xc

    aget-byte v1, v1, v5

    and-int/2addr v1, v7

    or-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_d
    const/16 v2, 0x134

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 171
    aget-byte v4, v1, v4

    const/4 v5, 0x7

    shr-int/2addr v4, v5

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x135

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 172
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_e
    const/16 v2, 0x12b

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x2

    .line 173
    aget-byte v6, v1, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12c

    new-array v4, v10, [I

    .line 174
    aget-byte v6, v1, v5

    shr-int/2addr v6, v3

    and-int/2addr v6, v8

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12d

    new-array v4, v10, [I

    .line 175
    aget-byte v6, v1, v5

    shr-int/2addr v6, v15

    and-int/2addr v6, v8

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12e

    new-array v4, v10, [I

    .line 176
    aget-byte v5, v1, v5

    shr-int/2addr v5, v12

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12f

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x3

    .line 177
    aget-byte v6, v1, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x130

    new-array v4, v10, [I

    .line 178
    aget-byte v6, v1, v5

    shr-int/2addr v6, v3

    and-int/2addr v6, v8

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x131

    new-array v4, v10, [I

    .line 179
    aget-byte v6, v1, v5

    shr-int/2addr v6, v15

    and-int/2addr v6, v8

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x132

    new-array v4, v10, [I

    .line 180
    aget-byte v5, v1, v5

    shr-int/2addr v5, v12

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x4

    .line 181
    aget-byte v6, v1, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v4, v10, [I

    .line 182
    aget-byte v6, v1, v5

    shr-int/lit8 v3, v6, 0x2

    and-int/2addr v3, v8

    aput v3, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v10, [I

    .line 183
    aget-byte v4, v1, v5

    shr-int/2addr v4, v15

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v10, [I

    .line 184
    aget-byte v4, v1, v5

    shr-int/2addr v4, v12

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 185
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    const/4 v6, 0x7

    and-int/2addr v5, v6

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v10, [I

    .line 186
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v10, [I

    .line 187
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    const/4 v6, 0x7

    and-int/2addr v5, v6

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v10, [I

    .line 188
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 189
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v6

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v10, [I

    .line 190
    aget-byte v4, v1, v4

    shr-int/2addr v4, v15

    and-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 191
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v6

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v10, [I

    .line 192
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    .line 193
    aget-byte v3, v1, v4

    shr-int/2addr v3, v15

    const/4 v5, 0x7

    and-int/2addr v3, v5

    aput v3, v2, v9

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v10, [I

    .line 194
    aget-byte v4, v1, v4

    shr-int/2addr v4, v5

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 195
    aget-byte v6, v1, v4

    shr-int/2addr v6, v9

    and-int/2addr v6, v5

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v10, [I

    .line 196
    aget-byte v4, v1, v4

    shr-int/2addr v4, v15

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x9

    .line 197
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v11

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v10, [I

    .line 198
    aget-byte v1, v1, v4

    const/4 v4, 0x7

    shr-int/2addr v1, v4

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_f
    add-int/lit8 v2, p2, 0x2

    .line 199
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 200
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v10, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v10

    aput v4, v2, v9

    .line 201
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v10

    aput v4, v2, v9

    .line 202
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v10, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v10

    aput v4, v2, v9

    .line 203
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v10

    aput v4, v2, v9

    .line 204
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v10, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v10

    aput v4, v2, v9

    .line 205
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v10

    aput v4, v2, v9

    .line 206
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v4, v1, 0x3

    and-int/2addr v4, v10

    aput v4, v2, v9

    .line 207
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v1, v3

    and-int/2addr v1, v10

    aput v1, v2, v9

    .line 208
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_10
    add-int/lit8 v2, p2, 0x2

    .line 209
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    add-int/lit8 v4, p2, 0x3

    .line 210
    aget-byte v5, v1, v4

    and-int/2addr v5, v7

    add-int/lit8 v6, p2, 0x4

    .line 211
    aget-byte v8, v1, v6

    and-int/2addr v8, v7

    add-int/lit8 v11, p2, 0x5

    .line 212
    aget-byte v12, v1, v11

    and-int/2addr v12, v7

    if-nez v3, :cond_1

    if-nez v5, :cond_1

    if-nez v8, :cond_1

    if-nez v12, :cond_1

    .line 213
    invoke-static {v9}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 214
    :cond_1
    sget v9, Ll0/c0;->g:I

    if-ne v9, v3, :cond_2

    sget v9, Ll0/c0;->h:I

    if-ne v9, v5, :cond_2

    sget v9, Ll0/c0;->i:I

    if-ne v9, v8, :cond_2

    sget v9, Ll0/c0;->j:I

    if-eq v9, v12, :cond_3

    .line 215
    :cond_2
    sget v9, Lu0/b;->o:I

    if-nez v9, :cond_3

    .line 216
    invoke-static {v10}, Lu0/d;->C2(I)V

    .line 217
    sput v15, Ll0/c0;->k:I

    .line 218
    sget-object v9, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v9}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 219
    :cond_3
    :goto_1
    sput v3, Ll0/c0;->g:I

    .line 220
    sput v5, Ll0/c0;->h:I

    .line 221
    sput v8, Ll0/c0;->i:I

    .line 222
    sput v12, Ll0/c0;->j:I

    .line 223
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 224
    aget-byte v2, v1, v4

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 225
    aget-byte v2, v1, v6

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 226
    aget-byte v1, v1, v11

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->u1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_18

    :pswitch_11
    add-int/lit8 v2, p2, 0x2

    .line 227
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 228
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 229
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 230
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->u1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_18

    :pswitch_12
    new-array v2, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 231
    aget-byte v6, v1, v4

    const/16 v18, 0x7

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v10

    aput v6, v2, v9

    const/16 v6, 0xa

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    .line 232
    aget-byte v6, v1, v4

    shr-int/2addr v6, v12

    and-int/2addr v6, v10

    aput v6, v2, v9

    const/16 v6, 0xb

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    .line 233
    aget-byte v6, v1, v4

    shr-int/2addr v6, v15

    and-int/2addr v6, v8

    aput v6, v2, v9

    const/16 v6, 0xc

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v6, v10, [I

    .line 234
    aget-byte v17, v1, v4

    shr-int/lit8 v17, v17, 0x2

    and-int/lit8 v17, v17, 0x1

    aput v17, v6, v9

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    .line 235
    aget-byte v6, v1, v4

    shr-int/2addr v6, v10

    and-int/2addr v6, v10

    aput v6, v2, v9

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v6, v10, [I

    .line 236
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v10

    aput v4, v6, v9

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v10, [I

    add-int/lit8 v6, p2, 0x3

    .line 237
    aget-byte v6, v1, v6

    shr-int/2addr v6, v9

    and-int/2addr v6, v14

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v4, v10, [I

    add-int/lit8 v6, p2, 0x6

    .line 238
    aget-byte v17, v1, v6

    shr-int/lit8 v17, v17, 0x3

    and-int/lit8 v17, v17, 0x1

    aput v17, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 239
    aget-byte v4, v1, v2

    and-int/2addr v4, v7

    add-int/lit8 v17, p2, 0x5

    .line 240
    aget-byte v14, v1, v17

    and-int/2addr v14, v7

    const-string v13, "persist.fyt.reversetemp"

    .line 241
    invoke-static {v13, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 242
    aget-byte v4, v1, v17

    and-int/2addr v4, v7

    .line 243
    aget-byte v2, v1, v2

    and-int/lit16 v14, v2, 0xff

    .line 244
    :cond_4
    aget-byte v2, v1, v6

    shr-int/2addr v2, v8

    and-int/2addr v2, v10

    const/4 v13, -0x1

    if-eqz v4, :cond_9

    if-eq v4, v11, :cond_8

    if-ne v2, v10, :cond_6

    if-lt v4, v10, :cond_5

    const/16 v7, 0x5a

    if-gt v4, v7, :cond_5

    const/16 v7, 0x1b

    new-array v3, v10, [I

    aput v4, v3, v9

    .line 245
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    const/16 v3, 0x1b

    new-array v4, v10, [I

    aput v13, v4, v9

    .line 246
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    const/16 v3, 0x1e

    if-lt v4, v3, :cond_7

    const/16 v3, 0x40

    if-gt v4, v3, :cond_7

    const/16 v3, 0x1b

    new-array v7, v10, [I

    aput v4, v7, v9

    .line 247
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    const/16 v3, 0x1b

    new-array v4, v10, [I

    aput v13, v4, v9

    .line 248
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    const/16 v3, 0x1b

    new-array v4, v10, [I

    const/4 v7, -0x3

    aput v7, v4, v9

    .line 249
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    const/16 v3, 0x1b

    new-array v4, v10, [I

    const/4 v7, -0x2

    aput v7, v4, v9

    .line 250
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :goto_2
    if-eqz v14, :cond_e

    if-eq v14, v11, :cond_d

    if-ne v2, v10, :cond_b

    if-lt v14, v10, :cond_a

    const/16 v3, 0x5a

    if-gt v14, v3, :cond_a

    const/16 v3, 0x1c

    new-array v4, v10, [I

    aput v14, v4, v9

    .line 251
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    const/16 v3, 0x1c

    new-array v4, v10, [I

    aput v13, v4, v9

    .line 252
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    const/16 v3, 0x1e

    if-lt v14, v3, :cond_c

    const/16 v3, 0x40

    if-gt v14, v3, :cond_c

    const/16 v3, 0x1c

    new-array v4, v10, [I

    aput v14, v4, v9

    .line 253
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_c
    const/16 v3, 0x1c

    new-array v4, v10, [I

    aput v13, v4, v9

    .line 254
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    const/16 v3, 0x1c

    new-array v4, v10, [I

    const/4 v7, -0x3

    aput v7, v4, v9

    .line 255
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_e
    const/16 v3, 0x1c

    new-array v4, v10, [I

    const/4 v7, -0x2

    aput v7, v4, v9

    .line 256
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v3, 0x11

    new-array v4, v10, [I

    .line 257
    aget-byte v7, v1, v6

    const/4 v14, 0x7

    shr-int/2addr v7, v14

    and-int/2addr v7, v10

    aput v7, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    .line 258
    aget-byte v4, v1, v6

    shr-int/2addr v4, v12

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x36

    new-array v4, v10, [I

    .line 259
    aget-byte v5, v1, v6

    shr-int/2addr v5, v15

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x24

    new-array v4, v10, [I

    .line 260
    aget-byte v5, v1, v6

    const/4 v6, 0x2

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x7

    .line 261
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_11

    if-nez v3, :cond_f

    goto :goto_5

    :cond_f
    if-ne v2, v10, :cond_10

    const/16 v4, 0xa

    mul-int/2addr v3, v4

    add-int/lit16 v3, v3, 0x258

    const/high16 v4, 0x10000000

    or-int/2addr v3, v4

    and-int/2addr v3, v13

    goto :goto_4

    :cond_10
    const/4 v4, 0x5

    mul-int/2addr v3, v4

    add-int/lit16 v3, v3, 0x258

    .line 262
    :goto_4
    invoke-static {v3}, Lu0/d;->B3(I)V

    goto :goto_6

    .line 263
    :cond_11
    :goto_5
    invoke-static {v9}, Lu0/d;->A3(I)V

    :goto_6
    const/16 v3, 0x2a

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x8

    .line 264
    aget-byte v6, v1, v5

    const/4 v7, 0x7

    shr-int/2addr v6, v7

    and-int/2addr v6, v10

    aput v6, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2c

    new-array v4, v10, [I

    .line 265
    aget-byte v5, v1, v5

    shr-int/2addr v5, v9

    const/16 v6, 0xf

    and-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x9

    .line 266
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    add-int/lit8 v5, p2, 0xa

    .line 267
    aget-byte v5, v1, v5

    and-int/2addr v4, v5

    if-eqz v3, :cond_16

    if-eq v3, v11, :cond_15

    if-ne v2, v10, :cond_13

    if-lt v3, v10, :cond_12

    const/16 v5, 0x5a

    if-gt v3, v5, :cond_12

    const/16 v5, 0x28

    new-array v6, v10, [I

    aput v3, v6, v9

    .line 268
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_12
    const/16 v3, 0x28

    new-array v5, v10, [I

    aput v13, v5, v9

    .line 269
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_13
    const/16 v5, 0x1e

    if-lt v3, v5, :cond_14

    const/16 v5, 0x40

    if-gt v3, v5, :cond_14

    const/16 v5, 0x28

    new-array v6, v10, [I

    aput v3, v6, v9

    .line 270
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_14
    const/16 v3, 0x28

    new-array v5, v10, [I

    aput v13, v5, v9

    .line 271
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_15
    const/16 v3, 0x28

    new-array v5, v10, [I

    const/4 v6, -0x3

    aput v6, v5, v9

    .line 272
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_16
    const/16 v3, 0x28

    new-array v5, v10, [I

    const/4 v6, -0x2

    aput v6, v5, v9

    .line 273
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    :goto_7
    if-eqz v4, :cond_1b

    if-eq v4, v11, :cond_1a

    if-ne v2, v10, :cond_18

    if-lt v4, v10, :cond_17

    const/16 v2, 0x5a

    if-gt v4, v2, :cond_17

    const/16 v2, 0x29

    new-array v3, v10, [I

    aput v4, v3, v9

    .line 274
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_17
    const/16 v2, 0x29

    new-array v3, v10, [I

    aput v13, v3, v9

    .line 275
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_18
    const/16 v2, 0x1e

    if-lt v4, v2, :cond_19

    const/16 v2, 0x40

    if-gt v4, v2, :cond_19

    const/16 v2, 0x29

    new-array v3, v10, [I

    aput v4, v3, v9

    .line 276
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_19
    const/16 v2, 0x29

    new-array v3, v10, [I

    aput v13, v3, v9

    .line 277
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1a
    const/16 v2, 0x29

    new-array v3, v10, [I

    const/4 v4, -0x3

    aput v4, v3, v9

    .line 278
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1b
    const/16 v2, 0x29

    new-array v3, v10, [I

    const/4 v4, -0x2

    aput v4, v3, v9

    .line 279
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_8
    add-int/lit8 v2, p2, 0xb

    .line 280
    aget-byte v3, v1, v2

    shr-int/2addr v3, v9

    and-int/2addr v3, v8

    if-eq v3, v10, :cond_1e

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1d

    if-eq v3, v8, :cond_1c

    move v3, v9

    :goto_9
    move v4, v3

    goto :goto_a

    :cond_1c
    move v3, v9

    move v4, v10

    goto :goto_a

    :cond_1d
    move v3, v10

    goto :goto_9

    :cond_1e
    move v4, v9

    move v3, v10

    :goto_a
    const/16 v5, 0x12

    new-array v6, v10, [I

    .line 281
    aget-byte v7, v1, v2

    shr-int/2addr v7, v15

    and-int/2addr v7, v10

    aput v7, v6, v9

    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x13

    new-array v6, v10, [I

    aput v3, v6, v9

    .line 282
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v5, v10, [I

    aput v4, v5, v9

    .line 283
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    .line 284
    aget-byte v3, v1, v2

    const/4 v4, 0x2

    shr-int/2addr v3, v4

    and-int/2addr v3, v8

    if-eq v3, v10, :cond_21

    if-eq v3, v4, :cond_20

    if-eq v3, v8, :cond_1f

    move v3, v9

    :goto_b
    move v4, v3

    goto :goto_c

    :cond_1f
    move v3, v9

    move v4, v10

    goto :goto_c

    :cond_20
    move v3, v10

    goto :goto_b

    :cond_21
    move v4, v9

    move v3, v10

    :goto_c
    const/16 v5, 0x16

    new-array v6, v10, [I

    .line 285
    aget-byte v7, v1, v2

    shr-int/2addr v7, v15

    and-int/2addr v7, v10

    aput v7, v6, v9

    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x17

    new-array v6, v10, [I

    aput v3, v6, v9

    .line 286
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x18

    new-array v5, v10, [I

    aput v4, v5, v9

    .line 287
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2d

    new-array v4, v10, [I

    .line 288
    aget-byte v5, v1, v2

    const/4 v6, 0x5

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    .line 289
    aget-byte v4, v1, v2

    shr-int/2addr v4, v12

    and-int/2addr v4, v10

    aput v4, v3, v9

    const/16 v4, 0xd

    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x1a

    new-array v5, v10, [I

    .line 290
    aget-byte v2, v1, v2

    const/4 v6, 0x7

    shr-int/2addr v2, v6

    and-int/2addr v2, v10

    aput v2, v5, v9

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xc

    .line 291
    aget-byte v3, v1, v2

    shr-int/2addr v3, v9

    and-int/2addr v3, v8

    if-eq v3, v10, :cond_24

    const/4 v5, 0x2

    if-eq v3, v5, :cond_23

    if-eq v3, v8, :cond_22

    move v3, v9

    :goto_d
    move v5, v3

    goto :goto_e

    :cond_22
    move v3, v9

    move v5, v10

    goto :goto_e

    :cond_23
    move v3, v10

    goto :goto_d

    :cond_24
    move v5, v9

    move v3, v10

    :goto_e
    const/16 v6, 0x2e

    new-array v7, v10, [I

    aput v3, v7, v9

    .line 292
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2f

    new-array v6, v10, [I

    aput v5, v6, v9

    .line 293
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    .line 294
    aget-byte v3, v1, v2

    const/4 v5, 0x2

    shr-int/2addr v3, v5

    and-int/2addr v3, v8

    if-eq v3, v10, :cond_27

    if-eq v3, v5, :cond_26

    if-eq v3, v8, :cond_25

    move v3, v9

    :goto_f
    move v5, v3

    goto :goto_10

    :cond_25
    move v3, v9

    move v5, v10

    goto :goto_10

    :cond_26
    move v3, v10

    goto :goto_f

    :cond_27
    move v5, v9

    move v3, v10

    :goto_10
    const/16 v6, 0x52

    new-array v7, v10, [I

    aput v3, v7, v9

    .line 295
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x53

    new-array v6, v10, [I

    aput v5, v6, v9

    .line 296
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2b

    new-array v5, v10, [I

    .line 297
    aget-byte v6, v1, v2

    shr-int/2addr v6, v12

    and-int/2addr v6, v10

    aput v6, v5, v9

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x51

    new-array v5, v10, [I

    .line 298
    aget-byte v6, v1, v2

    const/4 v7, 0x7

    shr-int/2addr v6, v7

    and-int/2addr v6, v10

    aput v6, v5, v9

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x43

    new-array v5, v10, [I

    .line 299
    aget-byte v2, v1, v2

    const/4 v6, 0x5

    shr-int/2addr v2, v6

    and-int/2addr v2, v10

    aput v2, v5, v9

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xd

    .line 300
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x37

    new-array v3, v10, [I

    .line 301
    aget-byte v5, v1, v4

    const/4 v6, 0x2

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x22

    new-array v3, v10, [I

    .line 302
    aget-byte v1, v1, v4

    shr-int/2addr v1, v8

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_13
    add-int/lit8 v2, p2, 0x2

    .line 303
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 304
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 305
    iput v2, v0, Lk0/kq;->c:I

    move v2, v9

    .line 306
    :goto_11
    iget-object v3, v0, Lk0/kq;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_29

    .line 307
    iget v4, v0, Lk0/kq;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v9

    if-ne v4, v5, :cond_28

    if-eqz v4, :cond_29

    .line 308
    iput v2, v0, Lk0/kq;->b:I

    goto :goto_12

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 309
    :cond_29
    :goto_12
    iget v4, v0, Lk0/kq;->c:I

    packed-switch v4, :pswitch_data_3

    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v10, :cond_2e

    .line 310
    array-length v1, v3

    if-ge v2, v1, :cond_39

    .line 311
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_18

    :pswitch_14
    move v2, v9

    const/16 v4, 0xff

    :goto_13
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_2a

    const/16 v3, 0x1e

    .line 312
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2a
    const/16 v1, 0x1e

    .line 313
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_18

    :pswitch_15
    const/16 v4, 0xff

    move v2, v9

    :goto_14
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_2b

    const/16 v3, 0x1f

    .line 314
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2b
    const/16 v1, 0x1f

    .line 315
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_18

    :pswitch_16
    const/16 v4, 0xff

    move v2, v9

    :goto_15
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_2c

    .line 316
    invoke-static {v6, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 317
    :cond_2c
    invoke-static {v6, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_18

    :pswitch_17
    const/16 v4, 0xff

    move v2, v9

    :goto_16
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_2d

    const/4 v3, 0x7

    .line 318
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2d
    const/4 v3, 0x7

    .line 319
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_18

    :cond_2e
    if-nez v1, :cond_39

    .line 320
    iget v1, v0, Lk0/kq;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_2f

    const/16 v2, 0xff

    if-eq v1, v2, :cond_30

    .line 321
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto :goto_17

    :cond_2f
    const/16 v2, 0xff

    .line 322
    :cond_30
    :goto_17
    iput v2, v0, Lk0/kq;->b:I

    goto/16 :goto_18

    :pswitch_18
    const/16 v2, 0x138

    new-array v3, v10, [I

    const/4 v4, 0x5

    add-int/lit8 v4, p2, 0x5

    .line 323
    aget-byte v5, v1, v4

    const/4 v6, 0x7

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x139

    new-array v3, v10, [I

    .line 324
    aget-byte v1, v1, v4

    shr-int/2addr v1, v12

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    .line 325
    :cond_31
    iget v2, v0, Lk0/kq;->e:I

    add-int/lit8 v3, p2, 0x3

    aget-byte v4, v1, v3

    const/4 v5, 0x2

    shr-int/2addr v4, v5

    and-int/2addr v4, v10

    if-eq v2, v4, :cond_39

    .line 326
    aget-byte v1, v1, v3

    shr-int/2addr v1, v5

    and-int/2addr v1, v10

    iput v1, v0, Lk0/kq;->e:I

    if-ne v1, v10, :cond_32

    .line 327
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-nez v1, :cond_39

    .line 328
    iput-boolean v10, v0, Lk0/kq;->f:Z

    .line 329
    invoke-static {}, Lo1/u;->z()I

    goto/16 :goto_18

    :cond_32
    if-nez v1, :cond_39

    .line 330
    iget-boolean v1, v0, Lk0/kq;->f:Z

    if-eqz v1, :cond_33

    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 331
    invoke-static {v12, v9}, Ll0/b0;->l0(II)V

    .line 332
    invoke-static {v12, v10}, Ll0/b0;->l0(II)V

    .line 333
    :cond_33
    iput-boolean v9, v0, Lk0/kq;->f:Z

    goto/16 :goto_18

    :cond_34
    move v2, v3

    add-int/lit8 v3, p2, 0x2

    .line 334
    aget-byte v4, v1, v3

    if-ne v4, v10, :cond_35

    const/16 v1, 0x3e

    .line 335
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 336
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_18

    .line 337
    :cond_35
    aget-byte v1, v1, v3

    if-ne v1, v2, :cond_39

    .line 338
    invoke-virtual/range {p0 .. p0}, Lk0/kq;->b3()V

    goto/16 :goto_18

    :cond_36
    move v2, v3

    .line 339
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v2, p3, -0x2

    invoke-direct {v3, v1, v4, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v3}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_37
    const/16 v2, 0x62

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 340
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v10, [I

    .line 341
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v10, [I

    .line 342
    aget-byte v5, v1, v4

    const/4 v6, 0x2

    shr-int/2addr v5, v6

    and-int/2addr v5, v8

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v10, [I

    .line 343
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v8

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v10, [I

    .line 344
    aget-byte v4, v1, v4

    shr-int/2addr v4, v12

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 345
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v8

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v10, [I

    .line 346
    aget-byte v5, v1, v4

    const/4 v6, 0x2

    shr-int/2addr v5, v6

    and-int/2addr v5, v8

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v10, [I

    .line 347
    aget-byte v4, v1, v4

    const/4 v5, 0x7

    shr-int/2addr v4, v5

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 348
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v10, [I

    .line 349
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v10, [I

    .line 350
    aget-byte v5, v1, v4

    const/4 v6, 0x2

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v10, [I

    .line 351
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v10, [I

    .line 352
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v10, [I

    .line 353
    aget-byte v5, v1, v4

    const/4 v6, 0x5

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v10, [I

    .line 354
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v10, [I

    .line 355
    aget-byte v4, v1, v4

    const/4 v5, 0x7

    shr-int/2addr v4, v5

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v10, [I

    const/4 v4, 0x5

    add-int/lit8 v4, p2, 0x5

    .line 356
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_18

    :cond_38
    const/16 v2, 0x133

    new-array v3, v10, [I

    add-int/lit8 v7, p2, 0x2

    .line 357
    aget-byte v11, v1, v7

    and-int/2addr v10, v11

    shl-int/lit8 v5, v10, 0x10

    add-int/lit8 v10, p2, 0x4

    aget-byte v11, v1, v10

    shl-int/lit8 v6, v11, 0x8

    and-int/2addr v4, v6

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x3

    aget-byte v6, v1, v5

    const/16 v8, 0xff

    and-int/2addr v6, v8

    or-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 358
    aget-byte v2, v1, v5

    and-int/2addr v2, v8

    aget-byte v3, v1, v10

    and-int/2addr v3, v8

    aget-byte v1, v1, v7

    const/16 v4, 0x1e0

    invoke-static {v2, v3, v1, v4}, Lk0/qt;->j(IIII)V

    :cond_39
    :goto_18
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x35
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x65
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

    :pswitch_data_3
    .packed-switch 0x11
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/kq;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/kq;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/kq;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/kq;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/kq;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/kq;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x13a

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
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x3eb

    if-eq v1, v3, :cond_6

    const/16 v3, 0x3ed

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v3, :cond_3

    const/16 v3, 0x405

    const/16 v7, 0xa7

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/16 v12, 0xe3

    const/4 v13, 0x4

    const/4 v14, 0x5

    const/4 v15, 0x3

    if-eq v1, v3, :cond_1

    const/16 v3, 0xc6

    const/16 v8, 0x9

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array v1, v14, [I

    aput v12, v1, v6

    const/16 v3, 0xa8

    aput v3, v1, v5

    aput v4, v1, v4

    .line 1
    aget v3, v2, v6

    aput v3, v1, v15

    aget v2, v2, v5

    aput v2, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array v1, v14, [I

    aput v12, v1, v6

    const/16 v3, 0xa6

    aput v3, v1, v5

    aput v4, v1, v4

    .line 2
    aget v3, v2, v6

    aput v3, v1, v15

    aget v2, v2, v5

    aput v2, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array v1, v14, [I

    aput v12, v1, v6

    const/16 v3, 0xd2

    aput v3, v1, v5

    aput v4, v1, v4

    .line 3
    aget v3, v2, v6

    aput v3, v1, v15

    aget v2, v2, v5

    aput v2, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array v1, v11, [I

    aput v12, v1, v6

    const/16 v3, 0x82

    aput v3, v1, v5

    aput v15, v1, v4

    .line 4
    aget v3, v2, v6

    aput v3, v1, v15

    aget v3, v2, v5

    aput v3, v1, v13

    aget v2, v2, v5

    aput v2, v1, v14

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4
    new-array v1, v8, [B

    const/16 v3, 0x2e

    aput-byte v3, v1, v6

    const/16 v3, -0x59

    aput-byte v3, v1, v5

    aput-byte v14, v1, v4

    .line 5
    aget v3, v2, v6

    int-to-byte v3, v3

    aput-byte v3, v1, v15

    aget v3, v2, v5

    int-to-byte v3, v3

    aput-byte v3, v1, v13

    aget v3, v2, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v14

    aget v3, v2, v15

    int-to-byte v3, v3

    aput-byte v3, v1, v11

    aget v3, v2, v13

    int-to-byte v3, v3

    aput-byte v3, v1, v10

    aput-byte v6, v1, v9

    invoke-static {v1}, Lk0/kq;->d3([B)V

    new-array v1, v9, [I

    aput v12, v1, v6

    aput v7, v1, v5

    aput v14, v1, v4

    .line 6
    aget v3, v2, v6

    aput v3, v1, v15

    aget v3, v2, v5

    aput v3, v1, v13

    aget v3, v2, v4

    aput v3, v1, v14

    aget v3, v2, v15

    aput v3, v1, v11

    aget v2, v2, v13

    aput v2, v1, v10

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5
    new-array v1, v14, [I

    aput v12, v1, v6

    const/16 v3, 0xe1

    aput v3, v1, v5

    aput v4, v1, v4

    .line 7
    aget v3, v2, v6

    aput v3, v1, v15

    aget v2, v2, v5

    aput v2, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_6
    new-array v1, v8, [I

    aput v12, v1, v6

    aput v3, v1, v5

    aput v11, v1, v4

    .line 8
    aget v3, v2, v6

    aput v3, v1, v15

    aget v3, v2, v5

    aput v3, v1, v13

    aget v3, v2, v4

    aput v3, v1, v14

    aget v3, v2, v15

    aput v3, v1, v11

    aget v3, v2, v13

    aput v3, v1, v10

    aget v2, v2, v14

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 9
    :pswitch_7
    aget v1, v2, v6

    const/16 v7, 0xff

    if-eq v1, v7, :cond_0

    new-array v1, v14, [I

    aput v12, v1, v6

    aput v3, v1, v5

    aput v4, v1, v4

    .line 10
    aget v3, v2, v6

    aput v3, v1, v15

    aget v2, v2, v5

    aput v2, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 11
    :cond_0
    new-instance v1, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    new-array v2, v8, [I

    aput v12, v2, v6

    aput v3, v2, v5

    aput v11, v2, v4

    aput v5, v2, v15

    .line 13
    iget v3, v1, Landroid/text/format/Time;->year:I

    add-int/lit16 v3, v3, -0x7d0

    aput v3, v2, v13

    iget v3, v1, Landroid/text/format/Time;->month:I

    add-int/2addr v3, v5

    aput v3, v2, v14

    iget v3, v1, Landroid/text/format/Time;->monthDay:I

    aput v3, v2, v11

    iget v3, v1, Landroid/text/format/Time;->hour:I

    aput v3, v2, v10

    iget v1, v1, Landroid/text/format/Time;->minute:I

    aput v1, v2, v9

    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_8
    new-array v1, v14, [I

    aput v12, v1, v6

    const/16 v3, 0xd0

    aput v3, v1, v5

    aput v4, v1, v4

    .line 14
    aget v3, v2, v6

    aput v3, v1, v15

    aget v2, v2, v5

    aput v2, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_9
    new-array v1, v14, [I

    aput v12, v1, v6

    const/16 v3, 0xe0

    aput v3, v1, v5

    aput v4, v1, v4

    .line 15
    aget v3, v2, v6

    aput v3, v1, v15

    aget v2, v2, v5

    aput v2, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_a
    new-array v1, v13, [I

    aput v12, v1, v6

    const/16 v3, 0x90

    aput v3, v1, v5

    aput v5, v1, v4

    .line 16
    aget v2, v2, v6

    aput v2, v1, v15

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 17
    :cond_1
    invoke-virtual {v0, v2, v4}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18
    aget v1, v2, v5

    const/16 v3, 0xff

    mul-int/2addr v1, v3

    invoke-static {}, La/f;->w()I

    move-result v8

    div-int/2addr v1, v8

    .line 19
    aget v8, v2, v4

    mul-int/2addr v8, v3

    invoke-static {}, La/f;->i()I

    move-result v16

    div-int v8, v8, v16

    rsub-int v8, v8, 0xff

    .line 20
    aget v3, v2, v6

    if-nez v3, :cond_2

    new-array v2, v9, [I

    aput v12, v2, v6

    aput v7, v2, v5

    aput v14, v2, v4

    aput v5, v2, v15

    aput v6, v2, v13

    aput v1, v2, v14

    aput v6, v2, v11

    aput v8, v2, v10

    .line 21
    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    .line 22
    :cond_2
    aget v2, v2, v6

    if-ne v2, v5, :cond_7

    new-array v2, v9, [I

    aput v12, v2, v6

    aput v7, v2, v5

    aput v14, v2, v4

    aput v6, v2, v15

    aput v6, v2, v13

    aput v1, v2, v14

    aput v6, v2, v11

    aput v8, v2, v10

    .line 23
    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    .line 24
    :cond_3
    aget v1, v2, v6

    if-nez v1, :cond_4

    const/16 v1, 0xf

    .line 25
    invoke-virtual {v0, v1}, Lk0/kq;->c3(I)V

    goto :goto_0

    .line 26
    :cond_4
    aget v1, v2, v6

    if-ne v1, v5, :cond_5

    const/16 v1, 0x10

    .line 27
    invoke-virtual {v0, v1}, Lk0/kq;->c3(I)V

    goto :goto_0

    .line 28
    :cond_5
    aget v1, v2, v6

    if-ne v1, v4, :cond_7

    const/16 v1, 0x11

    .line 29
    invoke-virtual {v0, v1}, Lk0/kq;->c3(I)V

    goto :goto_0

    :cond_6
    const/16 v1, 0x12

    .line 30
    invoke-virtual {v0, v1}, Lk0/kq;->c3(I)V

    :cond_7
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
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

.method public final a3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x1e

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 p1, 0x4

    aput p2, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3()V
    .locals 3

    .line 1
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.lz.jaguar.TDLandRoverCarSeatSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final c3(I)V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/16 v5, 0xa8

    aput v5, v1, v4

    const/4 v6, 0x2

    aput v6, v1, v6

    int-to-byte p1, p1

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
