.class public Lk0/us;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Z

.field public g:I

.field public h:Z

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/us;->c:I

    const/16 v1, 0x1e

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

    new-array v2, v2, [I

    fill-array-data v2, :array_1d

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/us;->d:[[I

    .line 4
    iput v0, p0, Lk0/us;->e:I

    .line 5
    iput-boolean v0, p0, Lk0/us;->f:Z

    .line 6
    iput v0, p0, Lk0/us;->g:I

    .line 7
    iput-boolean v0, p0, Lk0/us;->h:Z

    .line 8
    iput v0, p0, Lk0/us;->i:I

    .line 9
    new-instance v1, Lk0/us$a;

    invoke-direct {v1, p0}, Lk0/us$a;-><init>(Lk0/us;)V

    iput-object v1, p0, Lk0/us;->j:Ljava/lang/Runnable;

    .line 10
    iput v0, p0, Lk0/us;->k:I

    .line 11
    new-instance v0, Lk0/us$b;

    invoke-direct {v0, p0}, Lk0/us$b;-><init>(Lk0/us;)V

    iput-object v0, p0, Lk0/us;->l:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lk0/us$c;

    invoke-direct {v0, p0}, Lk0/us$c;-><init>(Lk0/us;)V

    iput-object v0, p0, Lk0/us;->m:Ljava/lang/Runnable;

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
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x7
        0xc
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x22
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x23
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x20
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x21
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x1d
    .end array-data

    :array_c
    .array-data 4
        0x41
        0x6
    .end array-data

    :array_d
    .array-data 4
        0x44
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x49
        0x5
    .end array-data

    :array_f
    .array-data 4
        0x50
        0x8
    .end array-data

    :array_10
    .array-data 4
        0x51
        0x7
    .end array-data

    :array_11
    .array-data 4
        0x52
        0x1e
    .end array-data

    :array_12
    .array-data 4
        0x53
        0x1f
    .end array-data

    :array_13
    .array-data 4
        0x54
        0x8
    .end array-data

    :array_14
    .array-data 4
        0x55
        0x7
    .end array-data

    :array_15
    .array-data 4
        0x56
        0x1e
    .end array-data

    :array_16
    .array-data 4
        0x57
        0x1f
    .end array-data

    :array_17
    .array-data 4
        0x58
        0x12
    .end array-data

    :array_18
    .array-data 4
        0x59
        0x18
    .end array-data

    :array_19
    .array-data 4
        0x5a
        0x36
    .end array-data

    :array_1a
    .array-data 4
        0x5b
        0x2
    .end array-data

    :array_1b
    .array-data 4
        0x5c
        0x10
    .end array-data

    :array_1c
    .array-data 4
        0x5d
        0x5
    .end array-data

    :array_1d
    .array-data 4
        0x5e
        0x0
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
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/us;->l:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/us;->j:Ljava/lang/Runnable;

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

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    iput v2, v0, Lk0/mt;->l:I

    .line 8
    iput v1, v0, Lk0/mt;->b:I

    .line 9
    iput v1, v0, Lk0/mt;->c:I

    .line 10
    iput v1, v0, Lk0/mt;->d:I

    .line 11
    iput v1, v0, Lk0/mt;->o:I

    .line 12
    iput v1, v0, Lk0/mt;->h:I

    .line 13
    iput v1, v0, Lk0/mt;->p:I

    return-void
.end method

.method public U2([BII)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x26

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x27

    const/16 v6, 0x12

    const/16 v7, 0xa

    const/16 v8, 0xff

    const/4 v9, 0x1

    if-eq v2, v3, :cond_28

    const/16 v3, 0x45

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x6

    const/4 v15, 0x7

    const/4 v11, 0x2

    if-eq v2, v3, :cond_20

    const/16 v3, 0xc

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_10

    .line 2
    :pswitch_0
    iget v2, v0, Lk0/us;->g:I

    add-int/lit8 v3, p2, 0x2

    aget-byte v4, v1, v3

    shr-int/2addr v4, v15

    and-int/2addr v4, v9

    if-eq v2, v4, :cond_2e

    .line 3
    aget-byte v1, v1, v3

    shr-int/2addr v1, v15

    and-int/2addr v1, v9

    iput v1, v0, Lk0/us;->g:I

    if-ne v1, v9, :cond_1

    .line 4
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iput-boolean v9, v0, Lk0/us;->h:Z

    .line 6
    invoke-static {}, Lo1/u;->z()I

    .line 7
    :cond_0
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto/16 :goto_10

    :cond_1
    if-nez v1, :cond_2e

    .line 8
    iget-boolean v1, v0, Lk0/us;->h:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-static {v14, v5}, Ll0/b0;->l0(II)V

    .line 10
    invoke-static {v14, v9}, Ll0/b0;->l0(II)V

    .line 11
    :cond_2
    iput-boolean v5, v0, Lk0/us;->h:Z

    goto/16 :goto_10

    :pswitch_1
    add-int/lit8 v2, p2, 0x6

    .line 12
    aget-byte v3, v1, v2

    shr-int/2addr v3, v14

    and-int/2addr v3, v9

    aget-byte v4, v1, v2

    shr-int/2addr v4, v15

    and-int/2addr v4, v9

    aget-byte v1, v1, v2

    shr-int/2addr v1, v12

    and-int/2addr v1, v9

    invoke-static {v3, v4, v1}, Ll0/c0;->a(III)V

    goto/16 :goto_10

    .line 13
    :pswitch_2
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 14
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    const-string v3, "persist.syu.reversefrontdoor"

    .line 15
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    new-array v3, v9, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v9

    aput v6, v3, v5

    .line 16
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v9

    aput v6, v3, v5

    .line 17
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v3, v9, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v9

    aput v6, v3, v5

    .line 18
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v9

    aput v6, v3, v5

    .line 19
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v3, v9, [I

    shr-int/lit8 v6, v2, 0x5

    and-int/2addr v6, v9

    aput v6, v3, v5

    .line 20
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/2addr v6, v9

    aput v6, v3, v5

    .line 21
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v6, v2, 0x3

    and-int/2addr v6, v9

    aput v6, v3, v5

    .line 22
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v9

    aput v2, v3, v5

    .line 23
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    .line 24
    iget v2, v0, Lk0/us;->e:I

    add-int/lit8 v3, p2, 0x3

    aget-byte v4, v1, v3

    shr-int/2addr v4, v5

    and-int/2addr v4, v9

    if-eq v2, v4, :cond_2e

    .line 25
    aget-byte v1, v1, v3

    shr-int/2addr v1, v5

    and-int/2addr v1, v9

    iput v1, v0, Lk0/us;->e:I

    .line 26
    sget v2, Lu0/b;->r0:I

    if-nez v2, :cond_2e

    if-ne v1, v9, :cond_6

    .line 27
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x62

    new-array v2, v9, [I

    aput v9, v2, v5

    .line 28
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    .line 29
    iput-boolean v9, v0, Lk0/us;->f:Z

    const-string v1, "persist.lesc.video.ignore"

    const-string v2, "true"

    .line 30
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    .line 31
    invoke-static {v1, v2}, La/i;->a0(J)V

    .line 32
    invoke-static {}, Lo1/u;->z()I

    .line 33
    sget v1, Ly0/f;->x:I

    if-nez v1, :cond_4

    sget v1, Ly0/f;->c:I

    sget v2, Ly0/f;->R:I

    mul-int/2addr v1, v2

    sget v2, Ly0/f;->S:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    float-to-int v1, v1

    .line 34
    sget v2, Ly0/f;->c:I

    iput v2, v0, Lk0/us;->i:I

    .line 35
    invoke-static {v1}, Ly0/h;->t0(I)V

    .line 36
    :cond_5
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto/16 :goto_10

    :cond_6
    if-nez v1, :cond_2e

    .line 37
    iget v1, v0, Lk0/us;->i:I

    invoke-static {v1}, Ly0/h;->t0(I)V

    .line 38
    iget-boolean v1, v0, Lk0/us;->f:Z

    if-eqz v1, :cond_7

    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x62

    new-array v2, v9, [I

    aput v5, v2, v5

    .line 39
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const-wide/16 v1, 0x15e

    .line 40
    invoke-static {v1, v2}, La/i;->a0(J)V

    const-string v1, "persist.lesc.video.ignore"

    const-string v2, "false"

    .line 41
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "persist.fyt.fy_radartofront"

    .line 42
    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "com.syu.frontvideo"

    .line 43
    invoke-static {v1}, Lo1/u;->f(Ljava/lang/String;)I

    .line 44
    :cond_7
    iput-boolean v5, v0, Lk0/us;->f:Z

    goto/16 :goto_10

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 45
    aget-byte v3, v1, v2

    and-int/2addr v3, v8

    add-int/lit8 v4, p2, 0x3

    .line 46
    aget-byte v5, v1, v4

    and-int/2addr v5, v8

    add-int/lit8 v6, p2, 0x4

    .line 47
    aget-byte v7, v1, v6

    and-int/2addr v7, v8

    add-int/lit8 v10, p2, 0x5

    .line 48
    aget-byte v12, v1, v10

    and-int/2addr v12, v8

    .line 49
    sget v13, Ll0/c0;->g:I

    if-ne v13, v3, :cond_8

    sget v13, Ll0/c0;->h:I

    if-ne v13, v5, :cond_8

    sget v13, Ll0/c0;->i:I

    if-ne v13, v7, :cond_8

    sget v13, Ll0/c0;->j:I

    if-eq v13, v12, :cond_a

    :cond_8
    if-nez v3, :cond_9

    if-nez v5, :cond_9

    if-nez v7, :cond_9

    if-nez v12, :cond_9

    .line 50
    sget v13, Lu0/b;->p:I

    if-ne v13, v9, :cond_a

    .line 51
    sput v11, Ll0/c0;->k:I

    .line 52
    sget-object v9, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v9}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 53
    :cond_9
    invoke-static {v9}, Lu0/d;->C2(I)V

    .line 54
    :cond_a
    :goto_2
    sput v3, Ll0/c0;->g:I

    .line 55
    sput v5, Ll0/c0;->h:I

    .line 56
    sput v7, Ll0/c0;->i:I

    .line 57
    sput v12, Ll0/c0;->j:I

    .line 58
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 59
    aget-byte v2, v1, v4

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 60
    aget-byte v2, v1, v6

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 61
    aget-byte v1, v1, v10

    and-int/2addr v1, v8

    invoke-static {v1}, Ll0/c0;->L0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_10

    :pswitch_5
    add-int/lit8 v2, p2, 0x6

    .line 62
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 63
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 64
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 65
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    invoke-static {v1}, Ll0/c0;->L0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_10

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 66
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    add-int/lit8 v16, p2, 0x3

    .line 67
    aget-byte v11, v1, v16

    and-int/2addr v11, v8

    add-int/lit8 v16, p2, 0x4

    .line 68
    aget-byte v13, v1, v16

    and-int/2addr v13, v8

    add-int/lit8 v17, p2, 0x5

    .line 69
    aget-byte v4, v1, v17

    and-int/2addr v4, v8

    add-int/lit8 v18, p2, 0x6

    .line 70
    aget-byte v14, v1, v18

    and-int/2addr v14, v8

    new-array v10, v9, [I

    shr-int/lit8 v19, v2, 0x7

    and-int/lit8 v19, v19, 0x1

    aput v19, v10, v5

    .line 71
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xb

    new-array v12, v9, [I

    shr-int/lit8 v20, v2, 0x6

    and-int/lit8 v20, v20, 0x1

    aput v20, v12, v5

    .line 72
    invoke-static {v10, v12}, Lk0/qt;->y0(I[I)V

    new-array v10, v9, [I

    shr-int/lit8 v12, v2, 0x5

    and-int/2addr v12, v9

    aput v12, v10, v5

    .line 73
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x10

    new-array v10, v9, [I

    shr-int/lit8 v12, v2, 0x4

    and-int/2addr v12, v9

    aput v12, v10, v5

    .line 74
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x41

    new-array v10, v9, [I

    shr-int/lit8 v12, v2, 0x3

    and-int/2addr v12, v9

    aput v12, v10, v5

    .line 75
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x36

    new-array v10, v9, [I

    shr-int/lit8 v12, v2, 0x2

    and-int/2addr v12, v9

    aput v12, v10, v5

    .line 76
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x3e

    new-array v10, v9, [I

    shr-int/lit8 v12, v2, 0x1

    and-int/2addr v12, v9

    aput v12, v10, v5

    .line 77
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x34

    new-array v10, v9, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v9

    aput v2, v10, v5

    .line 78
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v11, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v5

    .line 79
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v9, [I

    shr-int/lit8 v6, v11, 0x6

    and-int/2addr v6, v9

    aput v6, v3, v5

    .line 80
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v9, [I

    shr-int/lit8 v6, v11, 0x5

    and-int/2addr v6, v9

    aput v6, v3, v5

    .line 81
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v9, [I

    shr-int/lit8 v6, v11, 0x0

    and-int/lit8 v6, v6, 0xf

    aput v6, v3, v5

    .line 82
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x8

    .line 83
    aget-byte v10, v1, v6

    shr-int/2addr v10, v15

    and-int/2addr v10, v9

    aput v10, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 84
    aget-byte v2, v1, v6

    shr-int/2addr v2, v15

    and-int/2addr v2, v9

    const-string v3, "persist.fyt.reversetemp"

    .line 85
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 86
    aget-byte v3, v1, v17

    and-int/lit16 v13, v3, 0xff

    .line 87
    aget-byte v3, v1, v16

    and-int/lit16 v4, v3, 0xff

    :cond_b
    const/16 v3, 0x1b

    if-eqz v13, :cond_e

    if-eq v13, v8, :cond_d

    if-ne v2, v9, :cond_c

    new-array v10, v9, [I

    mul-int/2addr v13, v7

    aput v13, v10, v5

    .line 88
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_c
    new-array v10, v9, [I

    const/4 v11, 0x5

    mul-int/2addr v13, v11

    aput v13, v10, v5

    .line 89
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    new-array v10, v9, [I

    const/4 v11, -0x3

    aput v11, v10, v5

    .line 90
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_e
    new-array v10, v9, [I

    const/4 v11, -0x2

    aput v11, v10, v5

    .line 91
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v3, 0x1c

    if-eqz v14, :cond_11

    if-eq v14, v8, :cond_10

    if-ne v2, v9, :cond_f

    new-array v2, v9, [I

    mul-int/2addr v4, v7

    aput v4, v2, v5

    .line 92
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_f
    new-array v2, v9, [I

    const/4 v7, 0x5

    mul-int/2addr v4, v7

    aput v4, v2, v5

    .line 93
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_10
    new-array v2, v9, [I

    const/4 v4, -0x3

    aput v4, v2, v5

    .line 94
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_11
    new-array v2, v9, [I

    const/4 v4, -0x2

    aput v4, v2, v5

    .line 95
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v2, 0x1d

    new-array v3, v9, [I

    .line 96
    aget-byte v4, v1, v18

    const/4 v7, 0x6

    shr-int/2addr v4, v7

    const/4 v7, 0x3

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 97
    aget-byte v3, v1, v18

    const/4 v4, 0x4

    shr-int/2addr v3, v4

    and-int/2addr v3, v7

    aput v3, v2, v5

    const/16 v3, 0x1e

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x5d

    new-array v3, v9, [I

    .line 98
    aget-byte v4, v1, v18

    const/4 v8, 0x2

    shr-int/2addr v4, v8

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x5e

    new-array v3, v9, [I

    .line 99
    aget-byte v4, v1, v18

    shr-int/2addr v4, v5

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x7

    .line 100
    aget-byte v4, v1, v3

    const/4 v7, 0x4

    shr-int/2addr v4, v7

    and-int/lit8 v4, v4, 0xf

    aput v4, v2, v5

    const/16 v4, 0x1f

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v4, v9, [I

    .line 101
    aget-byte v3, v1, v3

    shr-int/2addr v3, v5

    and-int/lit8 v3, v3, 0xf

    aput v3, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v3, v9, [I

    .line 102
    aget-byte v4, v1, v6

    const/4 v7, 0x2

    shr-int/2addr v4, v7

    and-int/2addr v4, v9

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x50

    new-array v3, v9, [I

    .line 103
    aget-byte v4, v1, v6

    shr-int/2addr v4, v9

    and-int/2addr v4, v9

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x21

    new-array v3, v9, [I

    .line 104
    aget-byte v1, v1, v6

    shr-int/2addr v1, v5

    and-int/2addr v1, v9

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 105
    aget-byte v2, v1, v2

    const/4 v4, 0x3

    add-int/lit8 v7, p2, 0x3

    .line 106
    aget-byte v1, v1, v7

    and-int/2addr v2, v8

    .line 107
    iput v2, v0, Lk0/us;->c:I

    move v2, v5

    .line 108
    :goto_5
    iget-object v4, v0, Lk0/us;->d:[[I

    array-length v7, v4

    if-ge v2, v7, :cond_13

    .line 109
    iget v7, v0, Lk0/us;->c:I

    aget-object v10, v4, v2

    aget v10, v10, v5

    if-ne v7, v10, :cond_12

    if-eqz v7, :cond_13

    .line 110
    iput v2, v0, Lk0/us;->b:I

    goto :goto_6

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 111
    :cond_13
    :goto_6
    iget v7, v0, Lk0/us;->c:I

    const/4 v10, 0x6

    if-eq v7, v10, :cond_1d

    if-eq v7, v15, :cond_1a

    packed-switch v7, :pswitch_data_2

    and-int/2addr v1, v8

    if-eqz v1, :cond_14

    .line 112
    array-length v1, v4

    if-ge v2, v1, :cond_2e

    .line 113
    aget-object v1, v4, v2

    aget v1, v1, v9

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_14
    if-nez v1, :cond_2e

    .line 114
    iget v1, v0, Lk0/us;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_15

    if-eq v1, v8, :cond_15

    .line 115
    aget-object v1, v4, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 116
    :cond_15
    iput v8, v0, Lk0/us;->b:I

    goto/16 :goto_10

    :pswitch_8
    move v2, v5

    :goto_7
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_16

    const/16 v3, 0x1f

    .line 117
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    const/16 v3, 0x1f

    .line 118
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :pswitch_9
    move v2, v5

    :goto_8
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_17

    const/16 v3, 0x1e

    .line 119
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_17
    const/16 v3, 0x1e

    .line 120
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :pswitch_a
    move v2, v5

    :goto_9
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_18

    .line 121
    invoke-static {v15, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 122
    :cond_18
    invoke-static {v15, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :pswitch_b
    move v2, v5

    :goto_a
    and-int/lit16 v3, v1, 0xff

    const/16 v4, 0x8

    if-ge v2, v3, :cond_19

    .line 123
    invoke-static {v4, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 124
    :cond_19
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_1a
    and-int/2addr v1, v8

    if-ne v1, v9, :cond_2e

    .line 125
    sget v1, Lh0/c;->E:I

    const/16 v2, 0x1a

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1c

    const/4 v4, 0x4

    if-eq v1, v4, :cond_1c

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1c

    .line 126
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1}, Lu0/i;->r3()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 127
    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    .line 128
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    .line 129
    :cond_1b
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    .line 130
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    .line 131
    :cond_1c
    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    .line 132
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_1d
    and-int/2addr v1, v8

    if-ne v1, v9, :cond_2e

    .line 133
    sget v1, Lh0/c;->E:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1f

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1f

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1f

    .line 134
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1}, Lu0/i;->r3()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 135
    invoke-static {v6, v5}, Ll0/b0;->l0(II)V

    .line 136
    invoke-static {v6, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_1e
    const/16 v1, 0xd

    .line 137
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 138
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    .line 139
    :cond_1f
    invoke-static {v6, v5}, Ll0/b0;->l0(II)V

    .line 140
    invoke-static {v6, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_20
    add-int/lit8 v2, p2, 0x2

    .line 141
    aget-byte v3, v1, v2

    and-int/2addr v3, v8

    const/16 v4, 0x28

    if-eqz v3, :cond_24

    const/16 v6, 0xfe

    if-eq v3, v6, :cond_23

    if-eq v3, v8, :cond_22

    .line 142
    sget-object v3, Lk0/nt;->g:[I

    const/16 v6, 0x25

    aget v3, v3, v6

    if-ne v3, v9, :cond_21

    new-array v3, v9, [I

    .line 143
    aget-byte v2, v1, v2

    mul-int/2addr v2, v7

    aput v2, v3, v5

    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_21
    new-array v3, v9, [I

    .line 144
    aget-byte v2, v1, v2

    const/4 v6, 0x5

    mul-int/2addr v2, v6

    aput v2, v3, v5

    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_22
    new-array v2, v9, [I

    const/4 v3, -0x1

    aput v3, v2, v5

    .line 145
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_23
    new-array v2, v9, [I

    const/4 v3, -0x3

    aput v3, v2, v5

    .line 146
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_24
    new-array v2, v9, [I

    const/4 v3, -0x2

    aput v3, v2, v5

    .line 147
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_b
    const/16 v2, 0x2c

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 148
    aget-byte v6, v1, v4

    const/4 v7, 0x4

    shr-int/2addr v6, v7

    and-int/lit8 v6, v6, 0xf

    aput v6, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 149
    aget-byte v2, v1, v4

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-eq v2, v3, :cond_27

    const/4 v3, 0x3

    if-eq v2, v3, :cond_26

    if-eq v2, v7, :cond_25

    move v2, v5

    :goto_c
    move v3, v2

    goto :goto_d

    :cond_25
    move v2, v5

    move v3, v9

    goto :goto_d

    :cond_26
    move v2, v9

    goto :goto_c

    :cond_27
    move v3, v5

    move v2, v9

    :goto_d
    const/16 v4, 0x2e

    new-array v6, v9, [I

    aput v2, v6, v5

    .line 150
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v4, v9, [I

    aput v3, v4, v5

    .line 151
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2a

    new-array v3, v9, [I

    const/4 v4, 0x4

    add-int/lit8 v4, p2, 0x4

    .line 152
    aget-byte v6, v1, v4

    shr-int/2addr v6, v15

    and-int/2addr v6, v9

    aput v6, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v9, [I

    .line 153
    aget-byte v1, v1, v4

    const/4 v4, 0x6

    shr-int/2addr v1, v4

    and-int/2addr v1, v9

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_28
    add-int/lit8 v2, p2, 0x2

    .line 154
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    if-nez v2, :cond_29

    .line 155
    invoke-static {v5}, Lu0/d;->A3(I)V

    goto :goto_10

    :cond_29
    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 156
    aget-byte v1, v1, v3

    if-ne v1, v9, :cond_2b

    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_2a

    rsub-int v1, v2, 0x100

    mul-int/2addr v1, v6

    rsub-int v1, v1, 0x528

    goto :goto_e

    :cond_2a
    mul-int/2addr v2, v6

    add-int/lit16 v1, v2, 0x528

    .line 157
    :goto_e
    div-int/2addr v1, v7

    mul-int/2addr v1, v7

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x1

    goto :goto_f

    :cond_2b
    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_2c

    rsub-int v1, v2, 0x100

    mul-int/2addr v1, v7

    rsub-int v1, v1, 0x3e8

    goto :goto_f

    :cond_2c
    and-int/lit16 v1, v2, 0xff

    mul-int/2addr v1, v7

    add-int/lit16 v1, v1, 0x3e8

    .line 158
    :goto_f
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto :goto_10

    :cond_2d
    add-int/lit8 v2, p2, 0x2

    .line 159
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x2980

    invoke-static {v2, v1, v5, v3}, Lk0/qt;->i(IIZI)V

    :cond_2e
    :goto_10
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x50
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/us;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/us;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/us;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x63

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

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    invoke-static {p2, v4}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget p1, Lk0/nt;->U:I

    if-ne p1, v4, :cond_0

    .line 3
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x3e9

    aget p2, p2, v3

    invoke-static {p1, p3, p2}, Lo1/x;->x([Lo1/x;II)V

    goto/16 :goto_0

    .line 4
    :pswitch_1
    invoke-static {p2, v4}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p3, 0x89

    aput p3, p1, v4

    aput v4, p1, v2

    .line 5
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    invoke-static {p2, v4}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p3, 0x88

    aput p3, p1, v4

    aput v4, p1, v2

    .line 7
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 8
    :pswitch_3
    invoke-static {p2, v4}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p3, 0x86

    aput p3, p1, v4

    aput v4, p1, v2

    .line 9
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 10
    :pswitch_4
    invoke-static {p2, p3}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    new-array p1, p1, [I

    aput p4, p1, v3

    const/16 p4, 0x85

    aput p4, p1, v4

    aput p3, p1, v2

    .line 11
    aget p4, p2, v3

    aput p4, p1, v1

    aget p4, p2, v4

    aput p4, p1, v0

    aget p4, p2, v2

    aput p4, p1, p3

    const/4 p3, 0x6

    aget p4, p2, v1

    aput p4, p1, p3

    const/4 p3, 0x7

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 12
    :pswitch_5
    invoke-static {p2, v2}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, p3, [I

    aput p4, p1, v3

    const/16 p3, 0x83

    aput p3, p1, v4

    aput v2, p1, v2

    .line 13
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 14
    :pswitch_6
    invoke-static {p2, v2}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, p3, [I

    aput p4, p1, v3

    const/16 p3, 0x82

    aput p3, p1, v4

    aput v2, p1, v2

    .line 15
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_0
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
