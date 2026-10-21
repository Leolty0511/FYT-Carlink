.class public Lk0/wf;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:B

.field public g:I

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/wf;->c:I

    const/4 v1, 0x6

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

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/wf;->d:[[I

    .line 4
    iput v0, p0, Lk0/wf;->e:I

    .line 5
    iput-byte v3, p0, Lk0/wf;->f:B

    .line 6
    iput v0, p0, Lk0/wf;->g:I

    .line 7
    new-instance v0, Lk0/wf$a;

    invoke-direct {v0, p0}, Lk0/wf$a;-><init>(Lk0/wf;)V

    iput-object v0, p0, Lk0/wf;->h:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_2
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_3
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_4
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x14
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
    .locals 7

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/wf;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    .line 4
    iput v3, v0, Lk0/mt;->e:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    .line 6
    iput v2, v0, Lk0/mt;->g:I

    .line 7
    iput v3, v0, Lk0/mt;->j:I

    .line 8
    iput v3, v0, Lk0/mt;->o:I

    .line 9
    sget v4, Lk0/nt;->c:I

    const/16 v5, 0x13

    const/16 v6, 0xc

    if-eq v4, v5, :cond_1

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 11
    iput v3, v0, Lk0/mt;->e:I

    .line 12
    iput v2, v0, Lk0/mt;->f:I

    .line 13
    iput v2, v0, Lk0/mt;->g:I

    .line 14
    iput v2, v0, Lk0/mt;->i:I

    .line 15
    iput v2, v0, Lk0/mt;->l:I

    .line 16
    iput v3, v0, Lk0/mt;->j:I

    .line 17
    iput v3, v0, Lk0/mt;->o:I

    new-array v0, v6, [I

    .line 18
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 19
    :cond_1
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 20
    iput v3, v0, Lk0/mt;->e:I

    .line 21
    iput v2, v0, Lk0/mt;->f:I

    .line 22
    iput v2, v0, Lk0/mt;->g:I

    .line 23
    iput v2, v0, Lk0/mt;->i:I

    .line 24
    iput v3, v0, Lk0/mt;->l:I

    .line 25
    iput v3, v0, Lk0/mt;->j:I

    .line 26
    iput v3, v0, Lk0/mt;->o:I

    new-array v0, v6, [I

    .line 27
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x72
        0x9
        0x3
        0x7
        0x2
        0x1
        0x3
        0xf3
        0xe3
        0xf7
        0xfb
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x72
        0x9
        0x3
        0x7
        0x1
        0x1
        0x3
        0xf3
        0xe3
        0xfb
        0xfb
    .end array-data
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x1a

    const/16 v4, 0xa

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_1f

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x24

    const/16 v8, 0x3a

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-eq v2, v3, :cond_18

    const/16 v3, 0x28

    const/16 v12, 0xb

    if-eq v2, v3, :cond_12

    const/16 v3, 0x29

    const/4 v4, 0x7

    if-eq v2, v3, :cond_10

    const/16 v3, 0x30

    if-eq v2, v3, :cond_f

    const/16 v3, 0x31

    if-eq v2, v3, :cond_e

    const v13, 0xff00

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_9

    .line 2
    :pswitch_0
    sget v2, Lk0/nt;->c:I

    if-eq v2, v8, :cond_0

    goto/16 :goto_9

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 4
    aget-byte v3, v1, v2

    invoke-static {v3}, Ll0/c0;->e1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->S2(I)V

    .line 5
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 6
    aget-byte v1, v1, v2

    invoke-static {v1}, Ll0/c0;->e1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    .line 7
    :pswitch_1
    sget v2, Lk0/nt;->c:I

    if-eq v2, v8, :cond_1

    goto/16 :goto_9

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 8
    aget-byte v3, v1, v2

    invoke-static {v3}, Ll0/c0;->e1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->D2(I)V

    .line 9
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 10
    aget-byte v3, v1, v2

    invoke-static {v3}, Ll0/c0;->e1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->F2(I)V

    .line 11
    aget-byte v1, v1, v2

    invoke-static {v1}, Ll0/c0;->e1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 12
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 13
    aget-byte v4, v1, v4

    add-int/lit8 v4, p2, 0x4

    .line 14
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 15
    aget-byte v5, v1, v5

    add-int/lit8 v8, p2, 0x6

    .line 16
    aget-byte v8, v1, v8

    add-int/lit8 v10, p2, 0x7

    .line 17
    aget-byte v10, v1, v10

    add-int/lit8 v14, p2, 0x8

    .line 18
    aget-byte v14, v1, v14

    add-int/lit8 v15, p2, 0x9

    .line 19
    aget-byte v1, v1, v15

    .line 20
    iget v15, v0, Lk0/wf;->e:I

    if-eq v15, v2, :cond_4

    .line 21
    iput v2, v0, Lk0/wf;->e:I

    const/4 v15, 0x0

    if-ne v2, v7, :cond_2

    .line 22
    sget-object v12, Lk0/nt;->f:[Lo1/x;

    const/16 v9, 0x7d

    new-array v3, v7, [I

    aput v7, v3, v6

    invoke-static {v12, v9, v3, v15, v15}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne v2, v11, :cond_3

    .line 23
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v9, 0x7c

    new-array v12, v7, [I

    aput v7, v12, v6

    invoke-static {v3, v9, v12, v15, v15}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne v2, v12, :cond_4

    const-string v3, "com.syu.carui.ActivityDJ_LexusDVD_ES_H"

    .line 24
    invoke-virtual {v0, v3}, Lk0/wf;->b3(Ljava/lang/String;)V

    :cond_4
    :goto_0
    if-eq v2, v7, :cond_5

    if-eq v2, v11, :cond_6

    const/16 v3, 0x11

    if-eq v2, v3, :cond_6

    goto/16 :goto_9

    :cond_5
    const/16 v2, 0x62

    new-array v3, v7, [I

    and-int/lit16 v9, v4, 0xff

    aput v9, v3, v6

    .line 25
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v7, [I

    and-int/lit16 v9, v14, 0xff

    aput v9, v3, v6

    .line 26
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    shl-int/lit8 v2, v5, 0x8

    and-int/2addr v2, v13

    and-int/lit16 v3, v8, 0xff

    or-int/2addr v2, v3

    const/16 v3, 0x63

    new-array v9, v7, [I

    const v11, 0xffff

    and-int/2addr v2, v11

    aput v2, v9, v6

    .line 27
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    :cond_6
    const/16 v2, 0x6b

    new-array v3, v7, [I

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v6

    .line 28
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v7, [I

    and-int/lit16 v4, v5, 0xff

    aput v4, v3, v6

    .line 29
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v7, [I

    and-int/lit16 v4, v8, 0xff

    aput v4, v3, v6

    .line 30
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v7, [I

    shr-int/lit8 v4, v10, 0x0

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 31
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v7, [I

    shr-int/lit8 v4, v10, 0x1

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 32
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v7, [I

    shr-int/lit8 v4, v10, 0x2

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 33
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v7, [I

    shr-int/lit8 v4, v10, 0x4

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 34
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v7, [I

    const/4 v4, 0x5

    shr-int/lit8 v4, v10, 0x5

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 35
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v7, [I

    and-int/lit16 v4, v14, 0xff

    aput v4, v3, v6

    .line 36
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v7, [I

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v6

    .line 37
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    .line 38
    :pswitch_3
    sget v2, Lk0/nt;->c:I

    if-eq v2, v8, :cond_7

    goto/16 :goto_9

    :cond_7
    const/16 v2, 0x7e

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x2

    .line 39
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x3

    .line 40
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x4

    .line 41
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x5

    .line 42
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x6

    .line 43
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 44
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_4
    add-int/lit8 v2, p2, 0x3

    .line 45
    aget-byte v3, v1, v2

    if-ne v3, v7, :cond_22

    .line 46
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v7, :cond_22

    add-int/lit8 v3, p2, 0x2

    .line 47
    aget-byte v8, v1, v3

    if-eq v8, v10, :cond_d

    aget-byte v8, v1, v3

    const/4 v9, 0x5

    if-ne v8, v9, :cond_8

    goto :goto_3

    .line 48
    :cond_8
    aget-byte v8, v1, v3

    if-ne v8, v4, :cond_9

    const-string v1, "com.syu.carinfo.daojun.lexus.djLexusCd"

    .line 49
    invoke-virtual {v0, v1}, Lk0/wf;->a3(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 50
    :cond_9
    aget-byte v4, v1, v3

    .line 51
    aget-byte v2, v1, v2

    and-int/lit16 v2, v4, 0xff

    .line 52
    iput v2, v0, Lk0/wf;->c:I

    move v2, v6

    .line 53
    :goto_1
    iget-object v4, v0, Lk0/wf;->d:[[I

    array-length v8, v4

    if-ge v2, v8, :cond_b

    .line 54
    iget v8, v0, Lk0/wf;->c:I

    aget-object v9, v4, v2

    aget v9, v9, v6

    if-ne v8, v9, :cond_a

    if-eqz v8, :cond_b

    .line 55
    iput v2, v0, Lk0/wf;->b:I

    goto :goto_2

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 56
    :cond_b
    :goto_2
    array-length v8, v4

    if-ge v2, v8, :cond_c

    .line 57
    aget-object v4, v4, v2

    aget v4, v4, v7

    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    .line 58
    iget-object v4, v0, Lk0/wf;->d:[[I

    aget-object v2, v4, v2

    aget v2, v2, v7

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 59
    :cond_c
    aget-byte v2, v1, v3

    if-le v2, v5, :cond_22

    .line 60
    aget-byte v1, v1, v3

    invoke-virtual {v0, v1}, Lk0/wf;->c3(B)V

    goto/16 :goto_9

    :cond_d
    :goto_3
    const-string v1, "com.syu.carinfo.daojun.lexus.djLexusRadio"

    .line 61
    invoke-virtual {v0, v1}, Lk0/wf;->a3(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_5
    const/16 v2, 0x64

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 62
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 63
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 64
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v5, p2, 0x8

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 65
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v5, p2, 0xa

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xb

    .line 66
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v5, p2, 0xc

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xd

    .line 67
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v5, p2, 0xe

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v4

    const v4, 0xffff

    and-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_e
    add-int/lit8 v2, p2, 0x2

    .line 68
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 69
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 70
    aget-byte v4, v1, v4

    const/4 v5, 0x5

    add-int/lit8 v5, p2, 0x5

    .line 71
    aget-byte v1, v1, v5

    const/16 v5, 0x78

    new-array v8, v7, [I

    shr-int/lit8 v9, v2, 0x4

    and-int/lit8 v9, v9, 0xf

    aput v9, v8, v6

    .line 72
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x79

    new-array v8, v7, [I

    shr-int/2addr v2, v6

    and-int/lit8 v2, v2, 0xf

    aput v2, v8, v6

    .line 73
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v5, v7, [I

    shr-int/lit8 v8, v3, 0x4

    and-int/lit8 v8, v8, 0xf

    aput v8, v5, v6

    .line 74
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v5, v7, [I

    shr-int/2addr v3, v6

    and-int/lit8 v3, v3, 0xf

    aput v3, v5, v6

    .line 75
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v7, [I

    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v6

    .line 76
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v7, [I

    shr-int/2addr v4, v6

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v6

    .line 77
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v7, [I

    shr-int/2addr v1, v6

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v6

    .line 78
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    .line 79
    :cond_f
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 80
    :cond_10
    sget v2, Lk0/nt;->c:I

    if-eq v2, v8, :cond_11

    goto/16 :goto_9

    :cond_11
    add-int/lit8 v2, p2, 0x2

    .line 81
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v6, v1, v3

    and-int/2addr v4, v6

    aget-byte v1, v1, v3

    shr-int/2addr v1, v5

    and-int/2addr v1, v7

    const/16 v3, 0x17c

    invoke-static {v2, v4, v1, v3}, Lk0/qt;->j(IIII)V

    goto/16 :goto_9

    :cond_12
    add-int/lit8 v2, p2, 0x2

    .line 82
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 83
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 84
    aget-byte v8, v1, v5

    add-int/lit8 v9, p2, 0x5

    .line 85
    aget-byte v10, v1, v9

    add-int/lit8 v11, p2, 0x6

    .line 86
    aget-byte v11, v1, v11

    new-array v13, v7, [I

    shr-int/lit8 v14, v2, 0x7

    and-int/2addr v14, v7

    aput v14, v13, v6

    .line 87
    invoke-static {v4, v13}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/lit8 v13, v2, 0x6

    and-int/2addr v13, v7

    aput v13, v4, v6

    .line 88
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/lit8 v12, v2, 0x5

    and-int/2addr v12, v7

    aput v12, v4, v6

    const/16 v12, 0xc

    .line 89
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/lit8 v12, v2, 0x4

    and-int/2addr v12, v7

    aput v12, v4, v6

    const/16 v12, 0xd

    .line 90
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xe

    new-array v12, v7, [I

    shr-int/lit8 v13, v2, 0x2

    and-int/2addr v13, v7

    aput v13, v12, v6

    .line 91
    invoke-static {v4, v12}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x41

    new-array v12, v7, [I

    shr-int/lit8 v13, v2, 0x1

    and-int/2addr v13, v7

    aput v13, v12, v6

    .line 92
    invoke-static {v4, v12}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x26

    new-array v12, v7, [I

    shr-int/2addr v2, v6

    and-int/2addr v2, v7

    aput v2, v12, v6

    .line 93
    invoke-static {v4, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v4, v7, [I

    shr-int/lit8 v12, v3, 0x7

    and-int/2addr v12, v7

    aput v12, v4, v6

    .line 94
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v7, [I

    shr-int/lit8 v12, v3, 0x6

    and-int/2addr v12, v7

    aput v12, v4, v6

    .line 95
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v7, [I

    shr-int/lit8 v12, v3, 0x5

    and-int/2addr v12, v7

    aput v12, v4, v6

    .line 96
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v4, v7, [I

    shr-int/lit8 v12, v11, 0x6

    and-int/2addr v12, v7

    aput v12, v4, v6

    .line 97
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v4, v7, [I

    shr-int/lit8 v12, v11, 0x2

    and-int/2addr v12, v7

    aput v12, v4, v6

    .line 98
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4b

    new-array v4, v7, [I

    shr-int/2addr v11, v7

    and-int/2addr v11, v7

    aput v11, v4, v6

    .line 99
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v7, [I

    and-int/lit8 v3, v3, 0xf

    aput v3, v4, v6

    .line 100
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 101
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 102
    aget-byte v2, v1, v9

    and-int/lit16 v8, v2, 0xff

    .line 103
    aget-byte v1, v1, v5

    and-int/lit16 v10, v1, 0xff

    :cond_13
    and-int/lit16 v1, v8, 0xff

    const/16 v2, 0x1b

    if-nez v8, :cond_14

    new-array v1, v7, [I

    const/4 v3, -0x2

    aput v3, v1, v6

    .line 104
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_14
    const/16 v3, 0x1f

    if-ne v8, v3, :cond_15

    new-array v1, v7, [I

    const/4 v3, -0x3

    aput v3, v1, v6

    .line 105
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_15
    new-array v3, v7, [I

    aput v1, v3, v6

    .line 106
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_4
    and-int/lit16 v1, v10, 0xff

    const/16 v2, 0x1c

    if-nez v10, :cond_16

    new-array v1, v7, [I

    const/4 v3, -0x2

    aput v3, v1, v6

    .line 107
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_16
    const/16 v3, 0x1f

    if-ne v10, v3, :cond_17

    new-array v1, v7, [I

    const/4 v3, -0x3

    aput v3, v1, v6

    .line 108
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_17
    new-array v3, v7, [I

    aput v1, v3, v6

    .line 109
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    .line 110
    :cond_18
    sget v2, Lk0/nt;->c:I

    if-eq v2, v8, :cond_19

    goto/16 :goto_9

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 111
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const-string v2, "persist.syu.reversefrontdoor"

    .line 112
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1a

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 113
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 114
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_1a
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 115
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 116
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_5
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 117
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 118
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v7

    aput v1, v2, v6

    const/4 v1, 0x5

    .line 119
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_1b
    add-int/lit8 v2, p2, 0x2

    .line 120
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 121
    aget-byte v1, v1, v3

    and-int/lit16 v2, v2, 0xff

    .line 122
    iput v2, v0, Lk0/wf;->c:I

    move v2, v6

    .line 123
    :goto_6
    iget-object v3, v0, Lk0/wf;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1d

    .line 124
    iget v4, v0, Lk0/wf;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v6

    if-ne v4, v5, :cond_1c

    if-eqz v4, :cond_1d

    .line 125
    iput v2, v0, Lk0/wf;->b:I

    goto :goto_7

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1d
    :goto_7
    and-int/lit16 v1, v1, 0xff

    if-ne v1, v7, :cond_1e

    .line 126
    array-length v1, v3

    if-ge v2, v1, :cond_22

    .line 127
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_1e
    if-nez v1, :cond_22

    .line 128
    array-length v1, v3

    if-gt v2, v1, :cond_22

    .line 129
    iget v1, v0, Lk0/wf;->b:I

    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_1f
    add-int/lit8 v2, p2, 0x3

    .line 130
    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xff

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_20

    rsub-int v1, v2, 0xff

    add-int/lit8 v2, v1, 0x1

    move v6, v7

    :cond_20
    if-eqz v6, :cond_21

    mul-int/2addr v2, v4

    rsub-int v1, v2, 0x3e8

    goto :goto_8

    :cond_21
    mul-int/2addr v2, v4

    add-int/lit16 v1, v2, 0x3e8

    .line 131
    :goto_8
    invoke-static {v1}, Lu0/d;->A3(I)V

    :cond_22
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1c
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
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/wf;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x8a

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

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "com.syu.carui.ActivityDJ_LexusDVD_ES_H"

    .line 1
    invoke-virtual {p0, p1}, Lk0/wf;->b3(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const/16 p1, 0xb

    new-array p1, p1, [I

    aput v0, p1, v4

    const/16 v0, 0xca

    aput v0, p1, v3

    const/16 v0, 0x8

    aput v0, p1, v2

    .line 2
    aget p2, p2, v4

    aput p2, p1, p4

    aput v4, p1, p3

    aput v4, p1, v1

    const/4 p2, 0x6

    aput v4, p1, p2

    const/4 p2, 0x7

    aput v4, p1, p2

    aput v4, p1, v0

    const/16 p2, 0x9

    aput v4, p1, p2

    const/16 p2, 0xa

    aput v4, p1, p2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_2
    new-array p1, v1, [I

    aput v0, p1, v4

    const/16 v0, 0x84

    aput v0, p1, v3

    aput v2, p1, v2

    .line 3
    aget v0, p2, v4

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    new-array p1, v1, [I

    aput v0, p1, v4

    const/16 v0, 0x8a

    aput v0, p1, v3

    aput v2, p1, v2

    .line 4
    aget v0, p2, v4

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 5
    :pswitch_4
    invoke-static {}, Lo1/u;->J()I

    goto :goto_0

    :pswitch_5
    new-array p1, v1, [I

    aput v0, p1, v4

    const/16 v0, 0x74

    aput v0, p1, v3

    aput v2, p1, v2

    .line 6
    aget v0, p2, v4

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array p1, v1, [I

    aput v0, p1, v4

    const/16 v0, 0x71

    aput v0, p1, v3

    aput v2, p1, v2

    .line 7
    aget v0, p2, v4

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a3(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.syu.canbus"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.category.DEFAULT"

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10620000

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final b3(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.syu.carui"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.category.DEFAULT"

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10620000

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final c3(B)V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/16 v5, 0x74

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
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

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
