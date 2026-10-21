.class public Lk0/gs;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:I

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/gs;->c:I

    const/16 v1, 0xf

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

    new-array v2, v2, [I

    fill-array-data v2, :array_e

    const/16 v3, 0xe

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/gs;->d:[[I

    .line 4
    new-instance v1, Lk0/gs$a;

    invoke-direct {v1, p0}, Lk0/gs$a;-><init>(Lk0/gs;)V

    iput-object v1, p0, Lk0/gs;->e:Ljava/lang/Runnable;

    .line 5
    iput v0, p0, Lk0/gs;->f:I

    .line 6
    new-instance v0, Lk0/gs$b;

    invoke-direct {v0, p0}, Lk0/gs$b;-><init>(Lk0/gs;)V

    iput-object v0, p0, Lk0/gs;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/gs$c;

    invoke-direct {v0, p0}, Lk0/gs$c;-><init>(Lk0/gs;)V

    iput-object v0, p0, Lk0/gs;->h:Ljava/lang/Runnable;

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
        0x8
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0xb
        0x22
    .end array-data

    :array_a
    .array-data 4
        0xc
        0x23
    .end array-data

    :array_b
    .array-data 4
        0xd
        0x5
    .end array-data

    :array_c
    .array-data 4
        0xe
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0xf
        0xd
    .end array-data

    :array_e
    .array-data 4
        0x10
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
    .locals 11

    if-eqz p1, :cond_19

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v2, p1, v0

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    sget-object v4, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Air codeCmd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "      value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    aget v7, p1, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/16 v3, 0x26

    const/16 v4, 0xc

    if-eq v2, v3, :cond_17

    const/16 v3, 0x27

    const/16 v5, 0x8

    if-eq v2, v3, :cond_14

    const/16 v3, 0x29

    const/4 v7, 0x3

    if-eq v2, v3, :cond_12

    const/16 v3, 0x2a

    const/4 v8, 0x4

    if-eq v2, v3, :cond_10

    const/16 v3, 0x44

    const/16 v9, 0xb

    const/16 v10, 0xa

    if-eq v2, v3, :cond_4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    aget p1, p1, v6

    const/16 v1, 0x20

    const/16 v2, 0xd

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_19

    .line 6
    invoke-virtual {p0, v1, v0}, Lk0/gs;->a3(II)V

    goto/16 :goto_0

    .line 7
    :cond_1
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v6, :cond_19

    .line 8
    invoke-virtual {p0, v1, v0}, Lk0/gs;->a3(II)V

    goto/16 :goto_0

    .line 9
    :pswitch_1
    aget p1, p1, v6

    if-eqz p1, :cond_2

    .line 10
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v9

    if-nez p1, :cond_19

    .line 11
    invoke-virtual {p0, v1, v0}, Lk0/gs;->a3(II)V

    goto/16 :goto_0

    .line 12
    :cond_2
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v9

    if-ne p1, v6, :cond_19

    .line 13
    invoke-virtual {p0, v1, v0}, Lk0/gs;->a3(II)V

    goto/16 :goto_0

    .line 14
    :pswitch_2
    aget p1, p1, v6

    const/16 v1, 0x80

    if-eqz p1, :cond_3

    .line 15
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v10

    if-nez p1, :cond_19

    .line 16
    invoke-virtual {p0, v1, v0}, Lk0/gs;->a3(II)V

    goto/16 :goto_0

    .line 17
    :cond_3
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v10

    if-ne p1, v6, :cond_19

    .line 18
    invoke-virtual {p0, v1, v0}, Lk0/gs;->a3(II)V

    goto/16 :goto_0

    .line 19
    :cond_4
    aget v0, p1, v6

    const/4 v2, 0x5

    if-ne v0, v6, :cond_5

    new-array p1, v2, [I

    .line 20
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 21
    :cond_5
    aget v0, p1, v6

    if-ne v0, v1, :cond_6

    new-array p1, v2, [I

    .line 22
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 23
    :cond_6
    aget v0, p1, v6

    if-ne v0, v7, :cond_7

    new-array p1, v2, [I

    .line 24
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 25
    :cond_7
    aget v0, p1, v6

    if-ne v0, v8, :cond_8

    new-array p1, v2, [I

    .line 26
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 27
    :cond_8
    aget v0, p1, v6

    if-ne v0, v2, :cond_9

    new-array p1, v2, [I

    .line 28
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 29
    :cond_9
    aget v0, p1, v6

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    new-array p1, v2, [I

    .line 30
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 31
    :cond_a
    aget v0, p1, v6

    const/4 v1, 0x7

    if-ne v0, v1, :cond_b

    new-array p1, v2, [I

    .line 32
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 33
    :cond_b
    aget v0, p1, v6

    if-ne v0, v5, :cond_c

    new-array p1, v2, [I

    .line 34
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 35
    :cond_c
    aget v0, p1, v6

    const/16 v1, 0x9

    if-ne v0, v1, :cond_d

    new-array p1, v2, [I

    .line 36
    fill-array-data p1, :array_8

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 37
    :cond_d
    aget v0, p1, v6

    if-ne v0, v10, :cond_e

    new-array p1, v2, [I

    .line 38
    fill-array-data p1, :array_9

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 39
    :cond_e
    aget v0, p1, v6

    if-ne v0, v9, :cond_f

    new-array p1, v2, [I

    .line 40
    fill-array-data p1, :array_a

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 41
    :cond_f
    aget p1, p1, v6

    if-ne p1, v4, :cond_19

    new-array p1, v2, [I

    .line 42
    fill-array-data p1, :array_b

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 43
    :cond_10
    aget p1, p1, v6

    if-eqz p1, :cond_11

    .line 44
    invoke-virtual {p0, v1, v8}, Lk0/gs;->a3(II)V

    goto :goto_0

    .line 45
    :cond_11
    invoke-virtual {p0, v6, v8}, Lk0/gs;->a3(II)V

    goto :goto_0

    .line 46
    :cond_12
    aget p1, p1, v6

    if-eqz p1, :cond_13

    .line 47
    invoke-virtual {p0, v1, v7}, Lk0/gs;->a3(II)V

    goto :goto_0

    .line 48
    :cond_13
    invoke-virtual {p0, v6, v7}, Lk0/gs;->a3(II)V

    goto :goto_0

    .line 49
    :cond_14
    aget p1, p1, v6

    const/4 v0, -0x2

    if-eq p1, v0, :cond_16

    const/4 v0, -0x1

    if-eq p1, v0, :cond_15

    goto :goto_0

    :cond_15
    const/16 p1, 0x10

    .line 50
    invoke-virtual {p0, p1, v6}, Lk0/gs;->a3(II)V

    goto :goto_0

    .line 51
    :cond_16
    invoke-virtual {p0, v5, v6}, Lk0/gs;->a3(II)V

    goto :goto_0

    .line 52
    :cond_17
    aget p1, p1, v6

    if-eqz p1, :cond_18

    .line 53
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-nez p1, :cond_19

    .line 54
    invoke-virtual {p0, v6, v1}, Lk0/gs;->a3(II)V

    goto :goto_0

    .line 55
    :cond_18
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-ne p1, v6, :cond_19

    .line 56
    invoke-virtual {p0, v6, v1}, Lk0/gs;->a3(II)V

    :cond_19
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x80
        0x2
        0x51
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x80
        0x2
        0x51
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x80
        0x2
        0x52
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x80
        0x2
        0x52
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x80
        0x2
        0x53
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x80
        0x2
        0x53
        0x1
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x80
        0x2
        0x54
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x80
        0x2
        0x54
        0x1
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x80
        0x2
        0x50
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x80
        0x2
        0x50
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x80
        0x2
        0x55
        0x0
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x80
        0x2
        0x55
        0x1
    .end array-data
.end method

.method public S2()V
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/gs;->g:Ljava/lang/Runnable;

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
    iput v2, v0, Lk0/mt;->i:I

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v1, v0, Lk0/mt;->b:I

    .line 8
    iput v1, v0, Lk0/mt;->c:I

    .line 9
    iput v1, v0, Lk0/mt;->d:I

    .line 10
    iput v1, v0, Lk0/mt;->o:I

    .line 11
    iput v1, v0, Lk0/mt;->h:I

    .line 12
    iput v1, v0, Lk0/mt;->p:I

    .line 13
    sget v0, Lk0/nt;->a:I

    const v1, 0xfc01c7

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/gs;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x2

    iput v1, v0, Lk0/mt;->h:I

    .line 16
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xd

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

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
        0x27
        0x29
        0x2a
        0x37
        0x38
        0x43
    .end array-data
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    const/4 v2, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_11

    const/16 v1, 0x30

    const/4 v6, 0x2

    if-eq v0, v1, :cond_10

    const/16 v1, 0x50

    const/16 v7, 0xd

    const/16 v8, 0x7f

    const/4 v9, 0x4

    const/4 v10, 0x5

    if-eq v0, v1, :cond_f

    if-eq v0, v8, :cond_e

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    add-int/lit8 v1, p2, 0x3

    .line 3
    aget-byte v2, p1, v1

    and-int/2addr v2, v3

    add-int/lit8 v6, p2, 0x4

    .line 4
    aget-byte v7, p1, v6

    and-int/2addr v7, v3

    add-int/2addr p2, v10

    .line 5
    aget-byte v8, p1, p2

    and-int/2addr v8, v3

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v7, :cond_0

    if-nez v8, :cond_0

    .line 6
    invoke-static {v4}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 7
    :cond_0
    sget v4, Ll0/c0;->g:I

    if-ne v4, v0, :cond_1

    sget v4, Ll0/c0;->h:I

    if-ne v4, v2, :cond_1

    sget v4, Ll0/c0;->i:I

    if-ne v4, v7, :cond_1

    sget v4, Ll0/c0;->j:I

    if-eq v4, v8, :cond_2

    .line 8
    :cond_1
    sget v4, Lu0/b;->o:I

    if-nez v4, :cond_2

    .line 9
    invoke-static {v5}, Lu0/d;->C2(I)V

    .line 10
    sput v9, Ll0/c0;->k:I

    .line 11
    sget-object v4, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 12
    :cond_2
    :goto_0
    sput v0, Ll0/c0;->g:I

    .line 13
    sput v2, Ll0/c0;->h:I

    .line 14
    sput v7, Ll0/c0;->i:I

    .line 15
    sput v8, Ll0/c0;->j:I

    .line 16
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 17
    aget-byte p3, p1, v1

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 18
    aget-byte p3, p1, v6

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 19
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_8

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 20
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 21
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 22
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v10

    .line 23
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_8

    :pswitch_2
    add-int/2addr p2, v6

    .line 24
    aget-byte p3, p1, p2

    const-string v0, "persist.syu.reversefrontdoor"

    .line 25
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v5, [I

    shr-int/lit8 v1, p3, 0x7

    and-int/2addr v1, v5

    aput v1, v0, v4

    .line 26
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v1, p3, 0x6

    and-int/2addr v1, v5

    aput v1, v0, v4

    .line 27
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_3
    new-array v0, v5, [I

    shr-int/lit8 v1, p3, 0x6

    and-int/2addr v1, v5

    aput v1, v0, v4

    .line 28
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v1, p3, 0x7

    and-int/2addr v1, v5

    aput v1, v0, v4

    .line 29
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    :goto_1
    new-array v0, v5, [I

    shr-int/lit8 v1, p3, 0x5

    and-int/2addr v1, v5

    aput v1, v0, v4

    .line 30
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v1, p3, 0x4

    and-int/2addr v1, v5

    aput v1, v0, v4

    .line 31
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v1, p3, 0x3

    and-int/2addr v1, v5

    aput v1, v0, v4

    .line 32
    invoke-static {v10, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/2addr p3, v6

    and-int/2addr p3, v5

    aput p3, v0, v4

    .line 33
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    .line 34
    aget-byte p3, p1, p2

    shr-int/2addr p3, v5

    and-int/2addr p3, v5

    aget-byte p1, p1, p2

    shr-int/2addr p1, v4

    and-int/2addr p1, v5

    invoke-static {p3, p1, v4}, Ll0/c0;->a(III)V

    goto/16 :goto_8

    :pswitch_3
    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x2

    .line 35
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v5

    aput v1, p3, v4

    const/16 v1, 0xa

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 36
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v5

    aput v1, p3, v4

    const/16 v1, 0xb

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 37
    aget-byte v1, p1, v0

    shr-int/2addr v1, v10

    and-int/2addr v1, v5

    aput v1, p3, v4

    const/16 v1, 0xc

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 38
    aget-byte v1, p1, v0

    shr-int/2addr v1, v2

    and-int/2addr v1, v5

    aput v1, p3, v4

    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xf

    new-array v1, v5, [I

    .line 39
    aget-byte v7, p1, v0

    shr-int/2addr v7, v4

    and-int/2addr v7, v5

    aput v7, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v1, v5, [I

    .line 40
    aget-byte v0, p1, v0

    shr-int/2addr v0, v5

    and-int/2addr v0, v5

    aput v0, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 41
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    if-eq v0, v5, :cond_8

    if-eq v0, v6, :cond_7

    if-eq v0, v2, :cond_6

    if-eq v0, v9, :cond_5

    if-eq v0, v10, :cond_4

    move v0, v4

    move v1, v0

    :goto_2
    move v7, v1

    goto :goto_3

    :cond_4
    move v1, v4

    move v7, v1

    move v0, v5

    goto :goto_3

    :cond_5
    move v1, v4

    move v0, v5

    move v7, v0

    goto :goto_3

    :cond_6
    move v0, v4

    move v1, v0

    move v7, v5

    goto :goto_3

    :cond_7
    move v0, v4

    move v1, v5

    goto :goto_2

    :cond_8
    move v0, v4

    move v7, v0

    move v1, v5

    :goto_3
    const/16 v9, 0x12

    new-array v11, v5, [I

    aput v0, v11, v4

    .line 42
    invoke-static {v9, v11}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x13

    new-array v9, v5, [I

    aput v1, v9, v4

    .line 43
    invoke-static {v0, v9}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x14

    new-array v1, v5, [I

    aput v7, v1, v4

    .line 44
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x4d

    new-array v1, v5, [I

    .line 45
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    aput p3, v1, v4

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x4

    .line 46
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x6

    .line 47
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    add-int/lit8 v1, p2, 0x7

    .line 48
    aget-byte v7, p1, v1

    and-int/2addr v7, v3

    const-string v9, "persist.fyt.reversetemp"

    .line 49
    invoke-static {v9, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 50
    aget-byte v0, p1, v1

    and-int/2addr v0, v3

    .line 51
    aget-byte p3, p1, p3

    and-int/lit16 v7, p3, 0xff

    :cond_9
    const/4 p3, -0x3

    const/4 v1, -0x2

    const/16 v3, 0x1b

    if-nez v0, :cond_a

    new-array v0, v5, [I

    aput v1, v0, v4

    .line 52
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_a
    if-ne v0, v8, :cond_b

    new-array v0, v5, [I

    aput p3, v0, v4

    .line 53
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_b
    new-array v9, v5, [I

    mul-int/2addr v0, v10

    add-int/lit16 v0, v0, 0xa0

    aput v0, v9, v4

    .line 54
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v0, 0x1c

    if-nez v7, :cond_c

    new-array p3, v5, [I

    aput v1, p3, v4

    .line 55
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_c
    if-ne v7, v8, :cond_d

    new-array v1, v5, [I

    aput p3, v1, v4

    .line 56
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_d
    new-array p3, v5, [I

    mul-int/2addr v7, v10

    add-int/lit16 v7, v7, 0xa0

    aput v7, p3, v4

    .line 57
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    :goto_5
    const/16 p3, 0x1d

    new-array v0, v5, [I

    add-int/lit8 p2, p2, 0x8

    .line 58
    aget-byte v1, p1, p2

    shr-int/2addr v1, v6

    and-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x1e

    new-array v0, v5, [I

    .line 59
    aget-byte p1, p1, p2

    shr-int/2addr p1, v4

    and-int/2addr p1, v2

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 60
    :cond_e
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v6

    sub-int/2addr p3, v6

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_f
    const/16 p3, 0x63

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x2

    .line 61
    aget-byte v11, p1, v1

    shr-int/lit8 v11, v11, 0x7

    and-int/2addr v11, v5

    aput v11, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v5, [I

    .line 62
    aget-byte v11, p1, v1

    shr-int/2addr v11, v10

    and-int/2addr v11, v2

    aput v11, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v5, [I

    .line 63
    aget-byte v11, p1, v1

    shr-int/2addr v11, v9

    and-int/2addr v11, v5

    aput v11, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v5, [I

    .line 64
    aget-byte v11, p1, v1

    shr-int/2addr v11, v2

    and-int/2addr v11, v5

    aput v11, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v5, [I

    .line 65
    aget-byte v11, p1, v1

    shr-int/2addr v11, v6

    and-int/2addr v11, v5

    aput v11, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x68

    new-array v0, v5, [I

    .line 66
    aget-byte v11, p1, v1

    shr-int/2addr v11, v5

    and-int/2addr v11, v5

    aput v11, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v5, [I

    .line 67
    aget-byte v1, p1, v1

    shr-int/2addr v1, v4

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x3

    .line 68
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6b

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x4

    .line 69
    aget-byte v3, p1, v1

    shr-int/2addr v3, v2

    and-int/2addr v3, v5

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6c

    new-array v0, v5, [I

    .line 70
    aget-byte v3, p1, v1

    shr-int/2addr v3, v6

    and-int/2addr v3, v5

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6d

    new-array v0, v5, [I

    .line 71
    aget-byte v3, p1, v1

    shr-int/2addr v3, v5

    and-int/2addr v3, v5

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6e

    new-array v0, v5, [I

    .line 72
    aget-byte v1, p1, v1

    shr-int/2addr v1, v4

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6f

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x5

    .line 73
    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v2

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x70

    new-array v0, v5, [I

    .line 74
    aget-byte v3, p1, v1

    shr-int/2addr v3, v2

    and-int/lit8 v3, v3, 0x7

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x71

    new-array v0, v5, [I

    .line 75
    aget-byte v1, p1, v1

    shr-int/2addr v1, v4

    and-int/lit8 v1, v1, 0x7

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x72

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x6

    .line 76
    aget-byte v3, p1, v1

    shr-int/2addr v3, v10

    and-int/lit8 v3, v3, 0x7

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x73

    new-array v0, v5, [I

    .line 77
    aget-byte v1, p1, v1

    shr-int/2addr v1, v9

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x74

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x7

    .line 78
    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v2

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x75

    new-array v0, v5, [I

    .line 79
    aget-byte v3, p1, v1

    shr-int/2addr v3, v9

    and-int/2addr v3, v2

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x76

    new-array v0, v5, [I

    .line 80
    aget-byte v3, p1, v1

    shr-int/2addr v3, v6

    and-int/2addr v3, v2

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x77

    new-array v0, v5, [I

    .line 81
    aget-byte v3, p1, v1

    shr-int/2addr v3, v5

    and-int/2addr v3, v5

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x78

    new-array v0, v5, [I

    .line 82
    aget-byte v1, p1, v1

    shr-int/2addr v1, v4

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x79

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x8

    .line 83
    aget-byte v1, p1, v1

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7a

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x9

    .line 84
    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v2

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7b

    new-array v0, v5, [I

    .line 85
    aget-byte v3, p1, v1

    shr-int/2addr v3, v10

    and-int/2addr v3, v5

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7c

    new-array v0, v5, [I

    .line 86
    aget-byte v1, p1, v1

    shr-int/2addr v1, v9

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7d

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0xa

    .line 87
    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v2

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7e

    new-array v0, v5, [I

    .line 88
    aget-byte v3, p1, v1

    shr-int/2addr v3, v10

    and-int/2addr v3, v5

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 89
    aget-byte v0, p1, v1

    shr-int/2addr v0, v2

    and-int/2addr v0, v2

    aput v0, p3, v4

    invoke-static {v8, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x80

    new-array v0, v5, [I

    .line 90
    aget-byte v3, p1, v1

    shr-int/2addr v3, v6

    and-int/2addr v3, v5

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x81

    new-array v0, v5, [I

    .line 91
    aget-byte v3, p1, v1

    shr-int/2addr v3, v5

    and-int/2addr v3, v5

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x82

    new-array v0, v5, [I

    .line 92
    aget-byte v1, p1, v1

    shr-int/2addr v1, v4

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x83

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0xb

    .line 93
    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v2, v3

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x84

    new-array v0, v5, [I

    .line 94
    aget-byte v1, p1, v1

    shr-int/2addr v1, v10

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x85

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0xc

    .line 95
    aget-byte v2, p1, v1

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v5

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x86

    new-array v0, v5, [I

    .line 96
    aget-byte v1, p1, v1

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x87

    new-array v0, v5, [I

    add-int/2addr p2, v7

    .line 97
    aget-byte v1, p1, p2

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x88

    new-array v0, v5, [I

    .line 98
    aget-byte v1, p1, p2

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x89

    new-array v0, v5, [I

    .line 99
    aget-byte p1, p1, p2

    shr-int/2addr p1, v10

    and-int/2addr p1, v5

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_10
    add-int/lit8 p3, p2, 0x3

    .line 100
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    add-int/2addr p2, v6

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    const/16 p2, 0x1545

    invoke-static {p3, p1, v4, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_8

    .line 101
    :cond_11
    sget p3, Lu0/b;->a0:I

    if-nez p3, :cond_12

    goto :goto_8

    :cond_12
    add-int/lit8 p3, p2, 0x2

    .line 102
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 103
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 104
    iput p2, p0, Lk0/gs;->c:I

    move p2, v4

    .line 105
    :goto_6
    iget-object p3, p0, Lk0/gs;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_14

    .line 106
    iget v0, p0, Lk0/gs;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_13

    if-eqz v0, :cond_14

    .line 107
    iput p2, p0, Lk0/gs;->b:I

    goto :goto_7

    :cond_13
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_14
    :goto_7
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_15

    .line 108
    array-length p1, p3

    if-ge p2, p1, :cond_17

    .line 109
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_15
    if-nez p1, :cond_17

    .line 110
    iget p1, p0, Lk0/gs;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_16

    if-eq p1, v3, :cond_16

    .line 111
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 112
    :cond_16
    iput v3, p0, Lk0/gs;->b:I

    :cond_17
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x23
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

    iget-object v1, p0, Lk0/gs;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/gs;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/gs;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x8b

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

    const/4 p3, 0x5

    const/16 p4, 0xe3

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v0, :cond_2

    const/16 p3, 0x3eb

    if-eq p1, p3, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_6

    .line 1
    array-length p1, p2

    if-lez p1, :cond_6

    .line 2
    sget p1, Lu0/b;->o:I

    if-ne p1, v4, :cond_1

    new-array p1, v1, [I

    .line 3
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    new-array p1, v1, [I

    .line 4
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_2
    if-eqz p2, :cond_6

    .line 5
    array-length p1, p2

    if-lez p1, :cond_6

    new-array p1, v1, [I

    aput p4, p1, v2

    const/16 p3, -0x60

    aput p3, p1, v4

    aput v4, p1, v3

    .line 6
    aget p2, p2, v2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_6

    .line 7
    array-length p1, p2

    if-lez p1, :cond_6

    new-array p1, p3, [I

    aput p4, p1, v2

    const/16 p3, -0x80

    aput p3, p1, v4

    aput v3, p1, v3

    .line 8
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_6

    .line 9
    array-length p1, p2

    if-lez p1, :cond_6

    new-array p1, p3, [I

    aput p4, p1, v2

    const/16 p3, -0x70

    aput p3, p1, v4

    aput v3, p1, v3

    .line 10
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    .line 11
    array-length p1, p2

    if-lez p1, :cond_6

    const/16 p1, 0x9

    new-array p1, p1, [I

    aput p4, p1, v2

    const/16 p4, -0x76

    aput p4, p1, v4

    const/4 p4, 0x6

    aput p4, p1, v3

    .line 12
    aget v2, p2, v2

    aput v2, p1, v0

    aget v2, p2, v4

    aput v2, p1, v1

    aget v2, p2, v3

    aput v2, p1, p3

    aget v0, p2, v0

    aput v0, p1, p4

    const/4 p4, 0x7

    aget v0, p2, v1

    aput v0, p1, p4

    const/16 p4, 0x8

    aget p2, p2, p3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_6
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        -0x60
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x60
        0x1
        0x1
    .end array-data
.end method

.method public final a3(II)V
    .locals 12

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/16 v2, -0x76

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
    const-wide/16 p1, 0x64

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
        -0x76
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
