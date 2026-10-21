.class public Lk0/is;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:B

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/is;->c:I

    const/16 v1, 0xb

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

    const/16 v2, 0xa

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/is;->d:[[I

    .line 4
    iput-byte v2, p0, Lk0/is;->e:B

    .line 5
    new-instance v0, Lk0/is$a;

    invoke-direct {v0, p0}, Lk0/is$a;-><init>(Lk0/is;)V

    iput-object v0, p0, Lk0/is;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/is$b;

    invoke-direct {v0, p0}, Lk0/is$b;-><init>(Lk0/is;)V

    iput-object v0, p0, Lk0/is;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/is$c;

    invoke-direct {v0, p0}, Lk0/is$c;-><init>(Lk0/is;)V

    iput-object v0, p0, Lk0/is;->h:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x10
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        -0x1
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_a
    .array-data 4
        0xb
        0xd
    .end array-data
.end method

.method public static synthetic b3(Lk0/is;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/is;->g:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 7

    if-eqz p1, :cond_8

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

    aget v0, p1, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "      value = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/16 v3, 0xc

    const/16 v4, 0xb

    const/16 v5, 0xa

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 4
    :pswitch_1
    aget p1, p1, v0

    if-eqz p1, :cond_1

    const/16 p1, 0xe

    .line 5
    invoke-virtual {p0, p1}, Lk0/is;->a3(I)V

    goto/16 :goto_0

    :cond_1
    const/16 p1, 0xf

    .line 6
    invoke-virtual {p0, p1}, Lk0/is;->a3(I)V

    goto/16 :goto_0

    .line 7
    :pswitch_2
    aget p1, p1, v0

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0, v3}, Lk0/is;->a3(I)V

    goto/16 :goto_0

    :cond_2
    const/16 p1, 0xd

    .line 9
    invoke-virtual {p0, p1}, Lk0/is;->a3(I)V

    goto/16 :goto_0

    .line 10
    :pswitch_3
    aget p1, p1, v0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 11
    invoke-virtual {p0, v5}, Lk0/is;->a3(I)V

    goto/16 :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0, v4}, Lk0/is;->a3(I)V

    goto/16 :goto_0

    .line 13
    :pswitch_4
    aget p1, p1, v0

    const/4 v1, 0x3

    if-eqz p1, :cond_4

    .line 14
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_8

    .line 15
    invoke-virtual {p0, v1}, Lk0/is;->a3(I)V

    goto :goto_0

    .line 16
    :cond_4
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v0, :cond_8

    .line 17
    invoke-virtual {p0, v1}, Lk0/is;->a3(I)V

    goto :goto_0

    .line 18
    :pswitch_5
    aget p1, p1, v0

    const/4 v1, 0x5

    const/16 v2, 0x41

    if-eqz p1, :cond_5

    .line 19
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_8

    .line 20
    invoke-virtual {p0, v1}, Lk0/is;->a3(I)V

    goto :goto_0

    .line 21
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v0, :cond_8

    .line 22
    invoke-virtual {p0, v1}, Lk0/is;->a3(I)V

    goto :goto_0

    .line 23
    :pswitch_6
    aget p1, p1, v0

    if-eqz p1, :cond_6

    .line 24
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-nez p1, :cond_8

    .line 25
    invoke-virtual {p0, v1}, Lk0/is;->a3(I)V

    goto :goto_0

    .line 26
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-ne p1, v0, :cond_8

    .line 27
    invoke-virtual {p0, v1}, Lk0/is;->a3(I)V

    goto :goto_0

    .line 28
    :pswitch_7
    aget p1, p1, v0

    if-eqz p1, :cond_7

    .line 29
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-nez p1, :cond_8

    .line 30
    invoke-virtual {p0, v1}, Lk0/is;->a3(I)V

    goto :goto_0

    .line 31
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-ne p1, v0, :cond_8

    .line 32
    invoke-virtual {p0, v0}, Lk0/is;->a3(I)V

    :cond_8
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
    iget-object v0, p0, Lk0/is;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/is;->f:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    .line 6
    iput v2, v0, Lk0/mt;->g:I

    .line 7
    iput v2, v0, Lk0/mt;->i:I

    const/4 v1, 0x0

    .line 8
    iput v1, v0, Lk0/mt;->b:I

    .line 9
    iput v1, v0, Lk0/mt;->c:I

    .line 10
    iput v1, v0, Lk0/mt;->d:I

    .line 11
    iput v1, v0, Lk0/mt;->o:I

    .line 12
    iput v1, v0, Lk0/mt;->q:I

    const/16 v1, 0xd

    new-array v1, v1, [I

    .line 13
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
        0x44
        0x43
        0x37
        0x38
    .end array-data
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0x20

    const/16 v5, 0x8

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v4, :cond_19

    const/16 v4, 0x23

    const/16 v9, 0x10

    const/16 v10, 0xa

    const/16 v11, 0xf

    const/4 v12, 0x4

    const/4 v13, 0x2

    if-eq v2, v4, :cond_d

    const/16 v4, 0x52

    if-eq v2, v4, :cond_c

    const/16 v4, 0x7d

    if-eq v2, v4, :cond_9

    const/16 v11, 0x7f

    if-eq v2, v11, :cond_8

    const/16 v14, 0x30

    if-eq v2, v14, :cond_7

    const/16 v14, 0x31

    const/4 v15, 0x5

    if-eq v2, v14, :cond_6

    const/16 v14, 0x42

    const v16, 0xff00

    if-eq v2, v14, :cond_5

    const/16 v4, 0x43

    if-eq v2, v4, :cond_4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 4
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 5
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 6
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 7
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 8
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 9
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 10
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 11
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 12
    aget-byte v4, v1, v2

    and-int/2addr v4, v3

    add-int/lit8 v5, p2, 0x3

    .line 13
    aget-byte v6, v1, v5

    and-int/2addr v6, v3

    add-int/lit8 v7, p2, 0x4

    .line 14
    aget-byte v9, v1, v7

    and-int/2addr v9, v3

    add-int/lit8 v10, p2, 0x5

    .line 15
    aget-byte v11, v1, v10

    and-int/2addr v11, v3

    .line 16
    sget v12, Ll0/c0;->g:I

    if-ne v12, v4, :cond_1

    sget v12, Ll0/c0;->h:I

    if-ne v12, v6, :cond_1

    sget v12, Ll0/c0;->i:I

    if-ne v12, v9, :cond_1

    sget v12, Ll0/c0;->j:I

    if-eq v12, v11, :cond_3

    .line 17
    :cond_1
    sget v12, Lu0/b;->o:I

    if-nez v12, :cond_3

    if-nez v4, :cond_2

    if-nez v6, :cond_2

    if-nez v9, :cond_2

    if-nez v11, :cond_2

    .line 18
    sget v12, Lu0/b;->p:I

    if-ne v12, v8, :cond_3

    .line 19
    sput v13, Ll0/c0;->k:I

    .line 20
    sget-object v8, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v8}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 21
    :cond_2
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 22
    :cond_3
    :goto_1
    sput v4, Ll0/c0;->g:I

    .line 23
    sput v6, Ll0/c0;->h:I

    .line 24
    sput v9, Ll0/c0;->i:I

    .line 25
    sput v11, Ll0/c0;->j:I

    .line 26
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 27
    aget-byte v2, v1, v5

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 28
    aget-byte v2, v1, v7

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 29
    aget-byte v1, v1, v10

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 30
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 31
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 32
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 33
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :cond_4
    const/16 v2, 0x80

    new-array v4, v8, [I

    add-int/lit8 v6, p2, 0x4

    .line 34
    aget-byte v6, v1, v6

    shl-int/2addr v6, v9

    const/high16 v10, 0xff0000

    and-int/2addr v6, v10

    add-int/lit8 v11, p2, 0x3

    aget-byte v11, v1, v11

    shl-int/2addr v11, v5

    and-int v11, v11, v16

    or-int/2addr v6, v11

    add-int/lit8 v11, p2, 0x2

    aget-byte v11, v1, v11

    and-int/2addr v11, v3

    or-int/2addr v6, v11

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v4, v8, [I

    add-int/lit8 v6, p2, 0x5

    .line 35
    aget-byte v6, v1, v6

    shl-int/2addr v6, v5

    and-int v6, v6, v16

    add-int/lit8 v11, p2, 0x6

    aget-byte v11, v1, v11

    and-int/2addr v11, v3

    or-int/2addr v6, v11

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v4, v8, [I

    add-int/lit8 v6, p2, 0x7

    .line 36
    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v4, v8, [I

    add-int/lit8 v6, p2, 0x8

    .line 37
    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v4, v8, [I

    add-int/lit8 v6, p2, 0x9

    .line 38
    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v4, v8, [I

    add-int/lit8 v6, p2, 0xa

    .line 39
    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v4, v8, [I

    add-int/lit8 v6, p2, 0xd

    .line 40
    aget-byte v6, v1, v6

    shl-int/2addr v6, v9

    and-int/2addr v6, v10

    add-int/lit8 v11, p2, 0xc

    aget-byte v11, v1, v11

    shl-int/2addr v11, v5

    and-int v11, v11, v16

    or-int/2addr v6, v11

    add-int/lit8 v11, p2, 0xb

    aget-byte v11, v1, v11

    and-int/2addr v11, v3

    or-int/2addr v6, v11

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v4, v8, [I

    add-int/lit8 v6, p2, 0xf

    .line 41
    aget-byte v6, v1, v6

    shl-int/2addr v6, v5

    and-int v6, v6, v16

    add-int/lit8 v11, p2, 0xe

    aget-byte v11, v1, v11

    and-int/2addr v11, v3

    or-int/2addr v6, v11

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v4, v8, [I

    add-int/lit8 v6, p2, 0x10

    .line 42
    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v4, v8, [I

    add-int/lit8 v6, p2, 0x11

    .line 43
    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v4, v8, [I

    add-int/lit8 v6, p2, 0x12

    .line 44
    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v4, v8, [I

    add-int/lit8 v6, p2, 0x13

    .line 45
    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v4, v8, [I

    add-int/lit8 v6, p2, 0x16

    .line 46
    aget-byte v6, v1, v6

    shl-int/2addr v6, v9

    and-int/2addr v6, v10

    add-int/lit8 v9, p2, 0x15

    aget-byte v9, v1, v9

    shl-int/2addr v9, v5

    and-int v9, v9, v16

    or-int/2addr v6, v9

    add-int/lit8 v9, p2, 0x14

    aget-byte v9, v1, v9

    and-int/2addr v9, v3

    or-int/2addr v6, v9

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v4, v8, [I

    add-int/lit8 v6, p2, 0x18

    .line 47
    aget-byte v6, v1, v6

    shl-int/lit8 v5, v6, 0x8

    and-int v5, v5, v16

    add-int/lit8 v6, p2, 0x17

    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x19

    .line 48
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_5
    const/16 v2, 0x7a

    new-array v6, v8, [I

    add-int/lit8 v9, p2, 0x2

    .line 49
    aget-byte v9, v1, v9

    and-int/2addr v9, v3

    aput v9, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v6, v8, [I

    add-int/lit8 v9, p2, 0x3

    .line 50
    aget-byte v9, v1, v9

    and-int/2addr v9, v3

    aput v9, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v6, v8, [I

    add-int/lit8 v9, p2, 0x4

    .line 51
    aget-byte v9, v1, v9

    and-int/2addr v9, v3

    aput v9, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    add-int/lit8 v6, p2, 0x6

    .line 52
    aget-byte v6, v1, v6

    shl-int/2addr v6, v5

    and-int v6, v6, v16

    add-int/lit8 v9, p2, 0x5

    aget-byte v9, v1, v9

    and-int/2addr v9, v3

    or-int/2addr v6, v9

    aput v6, v2, v7

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v4, v8, [I

    add-int/lit8 v6, p2, 0x8

    .line 53
    aget-byte v6, v1, v6

    shl-int/2addr v6, v5

    and-int v6, v6, v16

    add-int/lit8 v9, p2, 0x7

    aget-byte v9, v1, v9

    and-int/2addr v9, v3

    or-int/2addr v6, v9

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 54
    aget-byte v4, v1, v4

    shl-int/2addr v4, v5

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0xa

    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    or-int/2addr v1, v4

    aput v1, v2, v7

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_6
    const/16 v2, 0x62

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 55
    aget-byte v9, v1, v5

    shr-int/2addr v9, v15

    and-int/2addr v9, v8

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v4, v8, [I

    .line 56
    aget-byte v9, v1, v5

    shr-int/2addr v9, v12

    and-int/2addr v9, v8

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v4, v8, [I

    .line 57
    aget-byte v9, v1, v5

    shr-int/2addr v9, v13

    and-int/2addr v9, v6

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v4, v8, [I

    .line 58
    aget-byte v5, v1, v5

    shr-int/2addr v5, v7

    and-int/2addr v5, v6

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x3

    .line 59
    aget-byte v5, v1, v5

    shr-int/2addr v5, v7

    and-int/2addr v5, v3

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x4

    .line 60
    aget-byte v9, v1, v5

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v8

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v4, v8, [I

    .line 61
    aget-byte v9, v1, v5

    shr-int/lit8 v9, v9, 0x6

    and-int/2addr v9, v8

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v4, v8, [I

    .line 62
    aget-byte v9, v1, v5

    shr-int/2addr v9, v15

    and-int/2addr v9, v8

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v4, v8, [I

    .line 63
    aget-byte v9, v1, v5

    shr-int/2addr v9, v6

    and-int/2addr v9, v6

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v4, v8, [I

    .line 64
    aget-byte v9, v1, v5

    shr-int/2addr v9, v13

    and-int/2addr v9, v8

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v4, v8, [I

    .line 65
    aget-byte v5, v1, v5

    shr-int/2addr v5, v7

    and-int/2addr v5, v6

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x5

    .line 66
    aget-byte v9, v1, v5

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v8

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v4, v8, [I

    .line 67
    aget-byte v9, v1, v5

    shr-int/lit8 v9, v9, 0x6

    and-int/2addr v9, v8

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v4, v8, [I

    .line 68
    aget-byte v9, v1, v5

    shr-int/2addr v9, v15

    and-int/2addr v9, v8

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v4, v8, [I

    .line 69
    aget-byte v9, v1, v5

    shr-int/2addr v9, v12

    and-int/2addr v9, v8

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v4, v8, [I

    .line 70
    aget-byte v9, v1, v5

    shr-int/2addr v9, v6

    and-int/2addr v9, v8

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v4, v8, [I

    .line 71
    aget-byte v5, v1, v5

    shr-int/2addr v5, v7

    and-int/lit8 v5, v5, 0x7

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x6

    .line 72
    aget-byte v9, v1, v5

    shr-int/2addr v9, v15

    and-int/2addr v9, v8

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v4, v8, [I

    .line 73
    aget-byte v9, v1, v5

    shr-int/2addr v9, v12

    and-int/2addr v9, v8

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v4, v8, [I

    .line 74
    aget-byte v9, v1, v5

    shr-int/lit8 v6, v9, 0x3

    and-int/2addr v6, v8

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v4, v8, [I

    .line 75
    aget-byte v6, v1, v5

    shr-int/2addr v6, v13

    and-int/2addr v6, v8

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v4, v8, [I

    .line 76
    aget-byte v6, v1, v5

    shr-int/2addr v6, v8

    and-int/2addr v6, v8

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v4, v8, [I

    .line 77
    aget-byte v5, v1, v5

    shr-int/2addr v5, v7

    and-int/2addr v5, v8

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x7

    .line 78
    aget-byte v1, v1, v5

    shr-int/2addr v1, v7

    and-int/2addr v1, v3

    aput v1, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_7
    add-int/lit8 v2, p2, 0x3

    .line 79
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0x157c

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_9

    .line 80
    :cond_8
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_9
    add-int/lit8 v2, p2, 0x2

    .line 81
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    if-eq v2, v8, :cond_a

    goto/16 :goto_9

    :cond_a
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 82
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_b

    add-int/lit8 v2, p2, 0x3

    .line 83
    aget-byte v3, v1, v2

    shr-int/2addr v3, v6

    and-int/2addr v3, v8

    aget-byte v1, v1, v2

    shr-int/2addr v1, v12

    and-int/2addr v1, v8

    invoke-static {v3, v1, v7}, Ll0/c0;->b(III)V

    goto/16 :goto_9

    :cond_b
    add-int/lit8 v2, p2, 0x3

    .line 84
    aget-byte v3, v1, v2

    shr-int/2addr v3, v6

    and-int/2addr v3, v8

    aget-byte v1, v1, v2

    shr-int/2addr v1, v12

    and-int/2addr v1, v8

    invoke-static {v3, v1, v7}, Ll0/c0;->a(III)V

    goto/16 :goto_9

    :cond_c
    const/16 v2, 0x8f

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 85
    aget-byte v6, v1, v5

    shr-int/2addr v6, v12

    and-int/2addr v6, v11

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v4, v8, [I

    .line 86
    aget-byte v5, v1, v5

    shr-int/2addr v5, v7

    and-int/2addr v5, v11

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x3

    .line 87
    aget-byte v6, v1, v5

    shr-int/2addr v6, v12

    and-int/2addr v6, v11

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v4, v8, [I

    .line 88
    aget-byte v5, v1, v5

    shr-int/2addr v5, v7

    and-int/2addr v5, v11

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x4

    .line 89
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x5

    .line 90
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x6

    .line 91
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x7

    .line 92
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_d
    add-int/lit8 v2, p2, 0x2

    .line 93
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 94
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x4

    .line 95
    aget-byte v5, v1, v5

    new-array v14, v8, [I

    shr-int/lit8 v15, v2, 0x7

    and-int/2addr v15, v8

    aput v15, v14, v7

    .line 96
    invoke-static {v10, v14}, Lk0/qt;->y0(I[I)V

    new-array v14, v8, [I

    shr-int/lit8 v15, v2, 0x6

    and-int/2addr v15, v8

    aput v15, v14, v7

    const/16 v15, 0xb

    .line 97
    invoke-static {v15, v14}, Lk0/qt;->y0(I[I)V

    new-array v14, v8, [I

    shr-int/lit8 v15, v2, 0x5

    and-int/2addr v15, v8

    aput v15, v14, v7

    const/16 v15, 0xc

    .line 98
    invoke-static {v15, v14}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0x48

    new-array v15, v8, [I

    shr-int/lit8 v16, v2, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v7

    .line 99
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0x3f

    new-array v15, v8, [I

    shr-int/lit8 v16, v2, 0x3

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v7

    .line 100
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    new-array v14, v8, [I

    shr-int/lit8 v15, v2, 0x1

    and-int/2addr v15, v8

    aput v15, v14, v7

    .line 101
    invoke-static {v9, v14}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x41

    new-array v14, v8, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v8

    aput v2, v14, v7

    .line 102
    invoke-static {v9, v14}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v4, 0xff

    if-eq v2, v8, :cond_11

    if-eq v2, v13, :cond_10

    if-eq v2, v6, :cond_f

    if-eq v2, v12, :cond_e

    move v2, v7

    move v4, v2

    :goto_2
    move v6, v4

    goto :goto_3

    :cond_e
    move v4, v7

    move v2, v8

    move v6, v2

    goto :goto_3

    :cond_f
    move v2, v7

    move v4, v2

    move v6, v8

    goto :goto_3

    :cond_10
    move v2, v7

    move v4, v8

    goto :goto_2

    :cond_11
    move v2, v7

    move v6, v2

    move v4, v8

    :goto_3
    const/16 v9, 0x12

    new-array v12, v8, [I

    aput v2, v12, v7

    .line 103
    invoke-static {v9, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v9, v8, [I

    aput v4, v9, v7

    .line 104
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v8, [I

    aput v6, v4, v7

    .line 105
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v8, [I

    and-int/2addr v5, v11

    aput v5, v4, v7

    .line 106
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 107
    aget-byte v4, v1, v2

    and-int/2addr v4, v3

    add-int/lit8 v5, p2, 0x6

    .line 108
    aget-byte v6, v1, v5

    and-int/2addr v6, v3

    const-string v9, "persist.fyt.reversetemp"

    .line 109
    invoke-static {v9, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_12

    .line 110
    aget-byte v4, v1, v5

    and-int/2addr v4, v3

    .line 111
    aget-byte v1, v1, v2

    and-int/lit16 v6, v1, 0xff

    :cond_12
    and-int/lit16 v1, v4, 0xff

    const/16 v2, 0x1b

    if-eqz v1, :cond_15

    if-ne v1, v8, :cond_13

    goto :goto_4

    :cond_13
    if-ne v1, v11, :cond_14

    new-array v1, v8, [I

    const/4 v4, -0x3

    aput v4, v1, v7

    .line 112
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_14
    new-array v4, v8, [I

    mul-int/2addr v1, v10

    add-int/lit16 v1, v1, 0xa0

    aput v1, v4, v7

    .line 113
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_15
    :goto_4
    new-array v1, v8, [I

    const/4 v4, -0x2

    aput v4, v1, v7

    .line 114
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    :goto_5
    and-int/lit16 v1, v6, 0xff

    const/16 v2, 0x1c

    if-eqz v1, :cond_18

    if-ne v1, v8, :cond_16

    goto :goto_6

    :cond_16
    if-ne v1, v11, :cond_17

    new-array v1, v8, [I

    const/4 v3, -0x3

    aput v3, v1, v7

    .line 115
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_17
    new-array v3, v8, [I

    mul-int/2addr v1, v10

    add-int/lit16 v1, v1, 0xa0

    aput v1, v3, v7

    .line 116
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_18
    :goto_6
    new-array v1, v8, [I

    const/4 v3, -0x2

    aput v3, v1, v7

    .line 117
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 118
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 119
    aget-byte v1, v1, v4

    and-int/2addr v2, v3

    .line 120
    iput v2, v0, Lk0/is;->c:I

    move v2, v7

    .line 121
    :goto_7
    iget-object v4, v0, Lk0/is;->d:[[I

    array-length v6, v4

    if-ge v2, v6, :cond_1b

    .line 122
    iget v6, v0, Lk0/is;->c:I

    aget-object v9, v4, v2

    aget v9, v9, v7

    if-ne v6, v9, :cond_1a

    if-eqz v6, :cond_1b

    .line 123
    iput v2, v0, Lk0/is;->b:I

    goto :goto_8

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 124
    :cond_1b
    :goto_8
    iget v6, v0, Lk0/is;->c:I

    if-eq v6, v5, :cond_1e

    and-int/2addr v1, v3

    if-ne v1, v8, :cond_1c

    .line 125
    array-length v1, v4

    if-ge v2, v1, :cond_20

    .line 126
    aget-object v1, v4, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_1c
    if-nez v1, :cond_20

    .line 127
    iget v1, v0, Lk0/is;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_1d

    if-eq v1, v3, :cond_1d

    .line 128
    aget-object v1, v4, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 129
    :cond_1d
    iput v3, v0, Lk0/is;->b:I

    goto :goto_9

    :cond_1e
    if-ne v1, v8, :cond_20

    .line 130
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_1f

    .line 131
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto :goto_9

    .line 132
    :cond_1f
    invoke-static {v7}, Lk0/qt;->a(I)V

    :cond_20
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/is;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/is;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/is;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x97

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

    const/16 p4, 0xe3

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    .line 1
    array-length p1, p2

    if-lt p1, v4, :cond_3

    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0x84

    aput p4, p1, v3

    aput v4, p1, v4

    .line 2
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 3
    array-length p1, p2

    if-lt p1, v1, :cond_3

    const/4 p1, 0x6

    new-array p1, p1, [I

    aput p4, p1, v2

    const/16 p4, 0x83

    aput p4, p1, v3

    aput v1, p1, v4

    .line 4
    aget p4, p2, v2

    aput p4, p1, v1

    aget p4, p2, v3

    aput p4, p1, p3

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 5
    array-length p1, p2

    if-lt p1, v4, :cond_3

    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0x90

    aput p4, p1, v3

    aput v4, p1, v4

    .line 6
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_3
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

    const/16 v5, -0x7c

    aput v5, v1, v4

    const/4 v6, 0x2

    aput v6, v1, v6

    const/4 v7, 0x3

    aput p1, v1, v7

    const/4 v8, 0x4

    aput v4, v1, v8

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v9, 0xc8

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
