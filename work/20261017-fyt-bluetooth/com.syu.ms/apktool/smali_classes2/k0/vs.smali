.class public Lk0/vs;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static t:I

.field public static u:I

.field public static v:I

.field public static w:I


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:I

.field public g:I

.field public h:[[I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public m:Lo1/g0;

.field public n:I

.field public o:I

.field public p:Ljava/lang/Runnable;

.field public q:I

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/vs;->b:I

    .line 3
    iput v0, p0, Lk0/vs;->c:I

    .line 4
    iput v0, p0, Lk0/vs;->d:I

    .line 5
    iput-boolean v0, p0, Lk0/vs;->e:Z

    .line 6
    iput v0, p0, Lk0/vs;->g:I

    const/16 v1, 0x10

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 7
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

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v7, 0x5

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v7, 0x6

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v7, 0x7

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v7, 0x8

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v7, 0x9

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v7, 0xa

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v7, 0xb

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v7, 0xc

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v7, 0xd

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v7, 0xe

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v7, 0xf

    aput-object v3, v1, v7

    iput-object v1, p0, Lk0/vs;->h:[[I

    .line 8
    iput v4, p0, Lk0/vs;->i:I

    .line 9
    iput v2, p0, Lk0/vs;->j:I

    .line 10
    iput v5, p0, Lk0/vs;->k:I

    .line 11
    iput v6, p0, Lk0/vs;->l:I

    .line 12
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/vs;->m:Lo1/g0;

    .line 13
    iput v0, p0, Lk0/vs;->n:I

    .line 14
    iput v0, p0, Lk0/vs;->o:I

    .line 15
    new-instance v1, Lk0/vs$a;

    invoke-direct {v1, p0}, Lk0/vs$a;-><init>(Lk0/vs;)V

    iput-object v1, p0, Lk0/vs;->p:Ljava/lang/Runnable;

    .line 16
    iput v0, p0, Lk0/vs;->q:I

    .line 17
    new-instance v0, Lk0/vs$b;

    invoke-direct {v0, p0}, Lk0/vs$b;-><init>(Lk0/vs;)V

    iput-object v0, p0, Lk0/vs;->r:Ljava/lang/Runnable;

    .line 18
    new-instance v0, Lk0/vs$c;

    invoke-direct {v0, p0}, Lk0/vs$c;-><init>(Lk0/vs;)V

    iput-object v0, p0, Lk0/vs;->s:Ljava/lang/Runnable;

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
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_6
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_7
    .array-data 4
        0x11
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_9
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_a
    .array-data 4
        0x17
        0xc
    .end array-data

    :array_b
    .array-data 4
        0x18
        0xd
    .end array-data

    :array_c
    .array-data 4
        0x20
        0x22
    .end array-data

    :array_d
    .array-data 4
        0x21
        0x23
    .end array-data

    :array_e
    .array-data 4
        0x22
        0x20
    .end array-data

    :array_f
    .array-data 4
        0x23
        0x21
    .end array-data
.end method

.method public static synthetic a3(Lk0/vs;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/vs;->m:Lo1/g0;

    return-object p0
.end method

.method public static synthetic b3(Lk0/vs;IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lk0/vs;->d3(IIII)V

    return-void
.end method

.method public static synthetic c3(Lk0/vs;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/vs;->e3(II)V

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
    iget-object v0, p0, Lk0/vs;->m:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/vs;->r:Ljava/lang/Runnable;

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

    .line 8
    iput v2, v0, Lk0/mt;->l:I

    const/4 v1, 0x0

    .line 9
    iput v1, v0, Lk0/mt;->b:I

    .line 10
    iput v1, v0, Lk0/mt;->c:I

    .line 11
    iput v1, v0, Lk0/mt;->d:I

    .line 12
    iput v1, v0, Lk0/mt;->o:I

    .line 13
    iput v1, v0, Lk0/mt;->h:I

    .line 14
    iput v1, v0, Lk0/mt;->p:I

    .line 15
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Lk0/vs;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x29

    const/4 v4, 0x3

    const/16 v5, 0xff

    const/4 v6, 0x1

    if-eq v2, v3, :cond_25

    const/16 v3, 0x30

    const/4 v7, 0x2

    if-eq v2, v3, :cond_24

    const/16 v3, 0x31

    const/16 v8, 0xf

    const/16 v9, 0xb

    const/4 v10, 0x4

    const/4 v11, 0x0

    if-eq v2, v3, :cond_23

    const/16 v3, 0xc

    const/16 v12, 0xa

    const/4 v13, 0x5

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_f

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v3, v1, v2

    const-string v5, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v5, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    new-array v5, v6, [I

    shr-int/lit8 v8, v3, 0x7

    and-int/2addr v8, v6

    aput v8, v5, v11

    .line 4
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v6, [I

    shr-int/lit8 v8, v3, 0x6

    and-int/2addr v8, v6

    aput v8, v5, v11

    .line 5
    invoke-static {v6, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v5, v6, [I

    shr-int/lit8 v8, v3, 0x6

    and-int/2addr v8, v6

    aput v8, v5, v11

    .line 6
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v6, [I

    shr-int/lit8 v8, v3, 0x7

    and-int/2addr v8, v6

    aput v8, v5, v11

    .line 7
    invoke-static {v6, v5}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v5, v6, [I

    shr-int/lit8 v8, v3, 0x5

    and-int/2addr v8, v6

    aput v8, v5, v11

    .line 8
    invoke-static {v10, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v6, [I

    shr-int/lit8 v8, v3, 0x4

    and-int/2addr v8, v6

    aput v8, v5, v11

    .line 9
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v6, [I

    shr-int/lit8 v8, v3, 0x3

    and-int/2addr v8, v6

    aput v8, v5, v11

    .line 10
    invoke-static {v13, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v6, [I

    shr-int/2addr v3, v7

    and-int/2addr v3, v6

    aput v3, v5, v11

    .line 11
    invoke-static {v11, v5}, Lk0/qt;->y0(I[I)V

    .line 12
    iget v3, v0, Lk0/vs;->b:I

    aget-byte v5, v1, v2

    shr-int/2addr v5, v11

    and-int/2addr v5, v4

    if-ne v3, v5, :cond_1

    iget v3, v0, Lk0/vs;->c:I

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    shr-int/2addr v5, v11

    and-int/2addr v5, v6

    if-eq v3, v5, :cond_7

    .line 13
    :cond_1
    aget-byte v2, v1, v2

    shr-int/2addr v2, v11

    and-int/2addr v2, v4

    iput v2, v0, Lk0/vs;->b:I

    add-int/lit8 v3, p2, 0x3

    .line 14
    aget-byte v3, v1, v3

    shr-int/2addr v3, v11

    and-int/2addr v3, v6

    iput v3, v0, Lk0/vs;->c:I

    .line 15
    sget v5, Lu0/b;->r0:I

    if-nez v5, :cond_7

    if-eq v2, v6, :cond_4

    if-ne v3, v6, :cond_2

    goto :goto_1

    :cond_2
    if-nez v2, :cond_7

    if-nez v3, :cond_7

    .line 16
    iget v2, v0, Lk0/vs;->d:I

    invoke-static {v2}, Ly0/h;->t0(I)V

    .line 17
    iget-boolean v2, v0, Lk0/vs;->e:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x62

    new-array v3, v6, [I

    aput v11, v3, v11

    .line 18
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-wide/16 v2, 0x15e

    .line 19
    invoke-static {v2, v3}, La/i;->a0(J)V

    const-string v2, "persist.lesc.video.ignore"

    const-string v3, "false"

    .line 20
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_3
    iput-boolean v11, v0, Lk0/vs;->e:Z

    goto :goto_3

    .line 22
    :cond_4
    :goto_1
    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v2, 0x62

    new-array v3, v6, [I

    aput v6, v3, v11

    .line 23
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 24
    iput-boolean v6, v0, Lk0/vs;->e:Z

    const-string v2, "persist.lesc.video.ignore"

    const-string v3, "true"

    .line 25
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    .line 26
    invoke-static {v2, v3}, La/i;->a0(J)V

    .line 27
    invoke-static {}, Lo1/u;->z()I

    .line 28
    sget v2, Ly0/f;->x:I

    if-nez v2, :cond_5

    sget v2, Ly0/f;->c:I

    sget v3, Ly0/f;->R:I

    mul-int/2addr v2, v3

    sget v3, Ly0/f;->S:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    float-to-int v2, v2

    .line 29
    sget v3, Ly0/f;->c:I

    iput v3, v0, Lk0/vs;->d:I

    .line 30
    invoke-static {v2}, Ly0/h;->t0(I)V

    .line 31
    :cond_6
    invoke-static {v11}, Lu0/d;->C2(I)V

    :cond_7
    :goto_3
    add-int/lit8 v2, p2, 0x3

    .line 32
    aget-byte v3, v1, v2

    shr-int/2addr v3, v6

    and-int/2addr v3, v6

    aget-byte v4, v1, v2

    shr-int/2addr v4, v11

    and-int/2addr v4, v6

    aget-byte v1, v1, v2

    shr-int/2addr v1, v7

    and-int/2addr v1, v6

    invoke-static {v3, v4, v1}, Ll0/c0;->a(III)V

    goto/16 :goto_f

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 33
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    add-int/lit8 v4, p2, 0x3

    .line 34
    aget-byte v7, v1, v4

    and-int/2addr v7, v5

    add-int/lit8 v8, p2, 0x4

    .line 35
    aget-byte v9, v1, v8

    and-int/2addr v9, v5

    add-int/lit8 v10, p2, 0x5

    .line 36
    aget-byte v12, v1, v10

    and-int/2addr v12, v5

    if-nez v3, :cond_8

    if-nez v7, :cond_8

    if-nez v9, :cond_8

    if-nez v12, :cond_8

    .line 37
    invoke-static {v11}, Lu0/d;->C2(I)V

    goto :goto_4

    .line 38
    :cond_8
    sget v11, Ll0/c0;->g:I

    if-ne v11, v3, :cond_9

    sget v11, Ll0/c0;->h:I

    if-ne v11, v7, :cond_9

    sget v11, Ll0/c0;->i:I

    if-ne v11, v9, :cond_9

    sget v11, Ll0/c0;->j:I

    if-eq v11, v12, :cond_a

    .line 39
    :cond_9
    iget v11, v0, Lk0/vs;->b:I

    if-nez v11, :cond_a

    .line 40
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 41
    sput v13, Ll0/c0;->k:I

    .line 42
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 43
    :cond_a
    :goto_4
    sput v3, Ll0/c0;->g:I

    .line 44
    sput v7, Ll0/c0;->h:I

    .line 45
    sput v9, Ll0/c0;->i:I

    .line 46
    sput v12, Ll0/c0;->j:I

    .line 47
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 48
    aget-byte v2, v1, v4

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 49
    aget-byte v2, v1, v8

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 50
    aget-byte v1, v1, v10

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_f

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 51
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 52
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 53
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 54
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_f

    :pswitch_3
    new-array v2, v6, [I

    add-int/lit8 v14, p2, 0x2

    .line 55
    aget-byte v15, v1, v14

    shr-int/lit8 v15, v15, 0x7

    and-int/2addr v15, v6

    aput v15, v2, v11

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 56
    aget-byte v15, v1, v14

    shr-int/lit8 v15, v15, 0x6

    and-int/2addr v15, v6

    aput v15, v2, v11

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 57
    aget-byte v9, v1, v14

    shr-int/2addr v9, v13

    and-int/2addr v9, v6

    aput v9, v2, v11

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 58
    aget-byte v3, v1, v14

    shr-int/2addr v3, v10

    and-int/2addr v3, v6

    aput v3, v2, v11

    const/16 v3, 0x10

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v9, v6, [I

    .line 59
    aget-byte v15, v1, v14

    shr-int/2addr v15, v4

    and-int/2addr v15, v6

    aput v15, v9, v11

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v9, v6, [I

    .line 60
    aget-byte v15, v1, v14

    shr-int/2addr v15, v7

    and-int/2addr v15, v6

    aput v15, v9, v11

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v9, v6, [I

    .line 61
    aget-byte v15, v1, v14

    shr-int/2addr v15, v6

    and-int/2addr v15, v6

    aput v15, v9, v11

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 62
    aget-byte v9, v1, v14

    shr-int/2addr v9, v11

    and-int/2addr v9, v6

    aput v9, v2, v11

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v9, v6, [I

    add-int/lit8 v14, p2, 0x3

    .line 63
    aget-byte v15, v1, v14

    shr-int/lit8 v15, v15, 0x7

    and-int/2addr v15, v6

    aput v15, v9, v11

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v9, v6, [I

    .line 64
    aget-byte v15, v1, v14

    shr-int/lit8 v15, v15, 0x6

    and-int/2addr v15, v6

    aput v15, v9, v11

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v9, v6, [I

    .line 65
    aget-byte v15, v1, v14

    shr-int/2addr v15, v13

    and-int/2addr v15, v6

    aput v15, v9, v11

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v9, v6, [I

    .line 66
    aget-byte v15, v1, v14

    shr-int/lit8 v10, v15, 0x4

    and-int/2addr v10, v6

    aput v10, v9, v11

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v9, v6, [I

    .line 67
    aget-byte v10, v1, v14

    shr-int/2addr v10, v11

    and-int/2addr v8, v10

    aput v8, v9, v11

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 68
    aget-byte v8, v1, v2

    and-int/2addr v8, v5

    add-int/lit8 v9, p2, 0x5

    .line 69
    aget-byte v10, v1, v9

    and-int/2addr v10, v5

    const-string v14, "persist.fyt.reversetemp"

    .line 70
    invoke-static {v14, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 71
    aget-byte v8, v1, v9

    and-int/2addr v8, v5

    .line 72
    aget-byte v2, v1, v2

    and-int/lit16 v10, v2, 0xff

    :cond_b
    const/4 v2, -0x2

    const/16 v9, 0x7f

    const/16 v14, 0x1b

    if-eqz v8, :cond_e

    if-eq v8, v9, :cond_d

    const/16 v15, 0x4a

    if-lt v8, v15, :cond_c

    const/16 v15, 0x6a

    if-gt v8, v15, :cond_c

    new-array v15, v6, [I

    sub-int/2addr v8, v3

    mul-int/2addr v8, v12

    aput v8, v15, v11

    .line 73
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_c
    new-array v15, v6, [I

    mul-int/2addr v8, v13

    aput v8, v15, v11

    .line 74
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_d
    new-array v8, v6, [I

    const/4 v15, -0x3

    aput v15, v8, v11

    .line 75
    invoke-static {v14, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_e
    new-array v8, v6, [I

    aput v2, v8, v11

    .line 76
    invoke-static {v14, v8}, Lk0/qt;->y0(I[I)V

    :goto_5
    const/16 v8, 0x1c

    if-eqz v10, :cond_11

    if-eq v10, v9, :cond_10

    const/16 v14, 0x4a

    if-lt v10, v14, :cond_f

    const/16 v14, 0x6a

    if-gt v10, v14, :cond_f

    new-array v14, v6, [I

    sub-int/2addr v10, v3

    mul-int/2addr v10, v12

    aput v10, v14, v11

    .line 77
    invoke-static {v8, v14}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_f
    new-array v14, v6, [I

    mul-int/2addr v10, v13

    aput v10, v14, v11

    .line 78
    invoke-static {v8, v14}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_10
    new-array v10, v6, [I

    const/4 v14, -0x3

    aput v14, v10, v11

    .line 79
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_11
    new-array v10, v6, [I

    aput v2, v10, v11

    .line 80
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    :goto_6
    const/16 v8, 0x2a

    new-array v10, v6, [I

    add-int/lit8 v14, p2, 0x6

    .line 81
    aget-byte v15, v1, v14

    shr-int/lit8 v15, v15, 0x7

    and-int/2addr v15, v6

    aput v15, v10, v11

    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x2b

    new-array v10, v6, [I

    .line 82
    aget-byte v15, v1, v14

    shr-int/lit8 v15, v15, 0x6

    and-int/2addr v15, v6

    aput v15, v10, v11

    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x2c

    new-array v10, v6, [I

    .line 83
    aget-byte v15, v1, v14

    shr-int/2addr v15, v4

    and-int/lit8 v15, v15, 0x7

    aput v15, v10, v11

    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    .line 84
    aget-byte v8, v1, v14

    shr-int/2addr v8, v7

    and-int/2addr v8, v6

    if-ne v8, v6, :cond_12

    move v8, v6

    :goto_7
    move v10, v8

    goto :goto_8

    .line 85
    :cond_12
    aget-byte v8, v1, v14

    shr-int/2addr v8, v6

    and-int/2addr v8, v6

    if-ne v8, v6, :cond_13

    move v8, v6

    move v10, v11

    goto :goto_8

    .line 86
    :cond_13
    aget-byte v8, v1, v14

    shr-int/2addr v8, v11

    and-int/2addr v8, v6

    if-ne v8, v6, :cond_14

    move v10, v6

    move v8, v11

    goto :goto_8

    :cond_14
    move v8, v11

    goto :goto_7

    :goto_8
    const/16 v14, 0x2e

    new-array v15, v6, [I

    aput v8, v15, v11

    .line 87
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x2f

    new-array v14, v6, [I

    aput v10, v14, v11

    .line 88
    invoke-static {v8, v14}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v8, p2, 0x8

    .line 89
    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    const/16 v10, 0x28

    if-eqz v8, :cond_17

    if-eq v8, v9, :cond_16

    const/16 v2, 0x4a

    if-lt v8, v2, :cond_15

    const/16 v2, 0x6a

    if-gt v8, v2, :cond_15

    new-array v2, v6, [I

    sub-int/2addr v8, v3

    mul-int/2addr v8, v12

    aput v8, v2, v11

    .line 90
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_15
    new-array v2, v6, [I

    mul-int/2addr v8, v13

    aput v8, v2, v11

    .line 91
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_16
    new-array v2, v6, [I

    const/4 v3, -0x3

    aput v3, v2, v11

    .line 92
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_17
    new-array v3, v6, [I

    aput v2, v3, v11

    .line 93
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    :goto_9
    const/16 v2, 0x1d

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x9

    .line 94
    aget-byte v9, v1, v8

    shr-int/2addr v9, v7

    and-int/2addr v9, v4

    aput v9, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v6, [I

    .line 95
    aget-byte v8, v1, v8

    shr-int/2addr v8, v11

    and-int/2addr v8, v4

    aput v8, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1f

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0xa

    .line 96
    aget-byte v9, v1, v8

    shr-int/2addr v9, v7

    and-int/2addr v9, v4

    aput v9, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v6, [I

    .line 97
    aget-byte v8, v1, v8

    shr-int/2addr v8, v11

    and-int/2addr v8, v4

    aput v8, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xb

    .line 98
    aget-byte v3, v1, v2

    shr-int/2addr v3, v6

    and-int/2addr v3, v4

    if-ne v3, v7, :cond_18

    const/16 v3, 0x25

    new-array v4, v6, [I

    aput v6, v4, v11

    .line 99
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_18
    const/16 v3, 0x25

    new-array v4, v6, [I

    aput v11, v4, v11

    .line 100
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :goto_a
    const/16 v3, 0x43

    new-array v4, v6, [I

    .line 101
    aget-byte v2, v1, v2

    shr-int/2addr v2, v11

    and-int/2addr v2, v6

    aput v2, v4, v11

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 102
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    if-eq v1, v5, :cond_1b

    if-nez v1, :cond_19

    goto :goto_c

    :cond_19
    const-string v2, "persist.fyt.temperature"

    .line 103
    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_1a

    mul-int/lit8 v1, v1, 0x12

    add-int/lit16 v1, v1, 0x258

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_1a
    mul-int/2addr v1, v12

    add-int/lit16 v1, v1, 0x258

    .line 104
    :goto_b
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_f

    .line 105
    :cond_1b
    :goto_c
    invoke-static {v11}, Lu0/d;->B3(I)V

    goto/16 :goto_f

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 106
    aget-byte v2, v1, v2

    add-int/lit8 v7, p2, 0x3

    .line 107
    aget-byte v1, v1, v7

    and-int/2addr v2, v5

    .line 108
    iput v2, v0, Lk0/vs;->g:I

    move v2, v11

    .line 109
    :goto_d
    iget-object v7, v0, Lk0/vs;->h:[[I

    array-length v8, v7

    if-ge v2, v8, :cond_1d

    .line 110
    iget v8, v0, Lk0/vs;->g:I

    aget-object v9, v7, v2

    aget v9, v9, v11

    if-ne v8, v9, :cond_1c

    if-eqz v8, :cond_1d

    .line 111
    iput v2, v0, Lk0/vs;->f:I

    goto :goto_e

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 112
    :cond_1d
    :goto_e
    iget v8, v0, Lk0/vs;->g:I

    if-eq v8, v12, :cond_20

    and-int/2addr v1, v5

    if-ne v1, v6, :cond_1e

    .line 113
    array-length v1, v7

    if-ge v2, v1, :cond_26

    .line 114
    aget-object v1, v7, v2

    aget v1, v1, v6

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_1e
    if-nez v1, :cond_26

    .line 115
    iget v1, v0, Lk0/vs;->f:I

    array-length v2, v7

    if-ge v1, v2, :cond_1f

    if-eq v1, v5, :cond_1f

    .line 116
    aget-object v1, v7, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 117
    :cond_1f
    iput v5, v0, Lk0/vs;->f:I

    goto/16 :goto_f

    :cond_20
    and-int/2addr v1, v5

    if-ne v1, v6, :cond_26

    .line 118
    sget v1, Lh0/c;->E:I

    const/16 v2, 0x1a

    if-eq v1, v4, :cond_22

    if-eq v1, v10, :cond_22

    if-eq v1, v13, :cond_22

    .line 119
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1}, Lu0/i;->r3()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 120
    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    .line 121
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    .line 122
    :cond_21
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    .line 123
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    .line 124
    :cond_22
    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    .line 125
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_23
    const/16 v2, 0x63

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 126
    aget-byte v7, v1, v7

    and-int/2addr v7, v5

    aput v7, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x4

    .line 127
    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x8

    const v12, 0xff00

    and-int/2addr v7, v12

    add-int/lit8 v13, p2, 0x3

    aget-byte v13, v1, v13

    and-int/2addr v13, v5

    or-int/2addr v7, v13

    aput v7, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x6

    .line 128
    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v12

    add-int/lit8 v13, p2, 0x5

    aget-byte v13, v1, v13

    and-int/2addr v13, v5

    or-int/2addr v7, v13

    aput v7, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x8

    .line 129
    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v12

    add-int/lit8 v13, p2, 0x7

    aget-byte v13, v1, v13

    and-int/2addr v13, v5

    or-int/2addr v7, v13

    aput v7, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0xa

    .line 130
    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v12

    add-int/lit8 v12, p2, 0x9

    aget-byte v12, v1, v12

    and-int/2addr v5, v12

    or-int/2addr v5, v7

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v6, [I

    add-int/lit8 v5, p2, 0xb

    .line 131
    aget-byte v7, v1, v5

    shr-int/2addr v7, v10

    and-int/2addr v7, v8

    aput v7, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v6, [I

    .line 132
    aget-byte v1, v1, v5

    shr-int/2addr v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    .line 133
    :cond_24
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_f

    :cond_25
    add-int/lit8 v2, p2, 0x2

    .line 134
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v5

    const/16 v3, 0x21c

    invoke-static {v2, v1, v6, v3}, Lk0/qt;->i(IIZI)V

    :cond_26
    :goto_f
    return-void

    nop

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
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/vs;->m:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/vs;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/vs;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Lk0/vs;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6e

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

    const/16 p3, 0x8

    const/4 p4, 0x5

    const/16 v0, 0xe3

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    sget p1, Lk0/nt;->U:I

    if-ne p1, v5, :cond_0

    .line 2
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x3e9

    aget p2, p2, v4

    invoke-static {p1, p3, p2}, Lo1/x;->x([Lo1/x;II)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p2, v4

    aget p2, p2, v5

    invoke-virtual {p0, p1, p2}, Lk0/vs;->e3(II)V

    goto :goto_0

    .line 4
    :pswitch_2
    aget p1, p2, v4

    aget p3, p2, v5

    aget p4, p2, v3

    aget p2, p2, v2

    invoke-virtual {p0, p1, p3, p4, p2}, Lk0/vs;->d3(IIII)V

    goto :goto_0

    :pswitch_3
    new-array p1, p3, [I

    aput v0, p1, v4

    const/16 p3, 0xa2

    aput p3, p1, v5

    aput p4, p1, v3

    .line 5
    aget p3, p2, v4

    aput p3, p1, v2

    aget p3, p2, v5

    aput p3, p1, v1

    aget p3, p2, v3

    aput p3, p1, p4

    const/4 p3, 0x6

    aget p4, p2, v2

    aput p4, p1, p3

    const/4 p3, 0x7

    aget p2, p2, v1

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_4
    new-array p1, v1, [I

    aput v0, p1, v4

    const/16 p3, 0xaf

    aput p3, p1, v5

    aput v5, p1, v3

    .line 6
    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 7
    :pswitch_5
    aget p1, p2, v4

    iput p1, p0, Lk0/vs;->n:I

    new-array p2, v1, [I

    aput v0, p2, v4

    const/16 p4, 0xa1

    aput p4, p2, v5

    aput v5, p2, v3

    .line 8
    iget p4, p0, Lk0/vs;->o:I

    shl-int/2addr p4, v2

    and-int/2addr p3, p4

    and-int/2addr p1, v5

    or-int/2addr p1, p3

    aput p1, p2, v2

    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array p1, p4, [I

    aput v0, p1, v4

    const/16 p3, 0xe8

    aput p3, p1, v5

    aput v3, p1, v3

    .line 9
    aget p3, p2, v4

    aput p3, p1, v2

    aget p2, p2, v5

    aput p2, p1, v1

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

.method public final d3(IIII)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    shl-int/lit8 v2, p2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    and-int/lit16 v4, p1, 0xff

    or-int/2addr v2, v4

    const/4 v4, 0x0

    aput v2, v1, v4

    const/16 v5, 0x6a

    .line 1
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    shl-int/lit8 v5, p4, 0x8

    and-int/2addr v3, v5

    and-int/lit16 v5, p3, 0xff

    or-int/2addr v3, v5

    aput v3, v1, v4

    const/16 v5, 0x6b

    .line 2
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    sput v2, Lk0/vs;->t:I

    .line 4
    sput v3, Lk0/vs;->u:I

    const/4 v1, 0x7

    new-array v1, v1, [I

    const/16 v2, 0xe3

    aput v2, v1, v4

    const/16 v2, 0xa3

    aput v2, v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x4

    aput v3, v1, v2

    const/4 v5, 0x3

    aput p1, v1, v5

    aput p2, v1, v3

    const/4 p1, 0x5

    aput p3, v1, p1

    const/4 p1, 0x6

    aput p4, v1, p1

    .line 5
    invoke-static {v1}, Lz/k;->s([I)V

    .line 6
    iget-object p1, p0, Lk0/vs;->m:Lo1/g0;

    invoke-virtual {p1, v0, v4}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/vs;->t:I

    if-eq p1, p2, :cond_0

    .line 7
    iget-object p1, p0, Lk0/vs;->m:Lo1/g0;

    invoke-virtual {p1, v0, p2}, Lo1/g0;->g(II)V

    .line 8
    :cond_0
    iget-object p1, p0, Lk0/vs;->m:Lo1/g0;

    invoke-virtual {p1, v2, v4}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/vs;->u:I

    if-eq p1, p2, :cond_1

    .line 9
    iget-object p1, p0, Lk0/vs;->m:Lo1/g0;

    invoke-virtual {p1, v2, p2}, Lo1/g0;->g(II)V

    :cond_1
    return-void
.end method

.method public final e3(II)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x6c

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput p2, v1, v2

    const/16 v3, 0x6d

    .line 2
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    sput p1, Lk0/vs;->v:I

    .line 4
    sput p2, Lk0/vs;->w:I

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, 0xa4

    aput v3, v1, v0

    const/4 v0, 0x2

    aput v0, v1, v0

    const/4 v0, 0x3

    aput p1, v1, v0

    const/4 p1, 0x4

    aput p2, v1, p1

    .line 5
    invoke-static {v1}, Lz/k;->s([I)V

    .line 6
    iget-object p2, p0, Lk0/vs;->m:Lo1/g0;

    invoke-virtual {p2, v0, v2}, Lo1/g0;->b(II)I

    move-result p2

    sget v1, Lk0/vs;->v:I

    if-eq p2, v1, :cond_0

    .line 7
    iget-object p2, p0, Lk0/vs;->m:Lo1/g0;

    invoke-virtual {p2, v0, v1}, Lo1/g0;->g(II)V

    .line 8
    :cond_0
    iget-object p2, p0, Lk0/vs;->m:Lo1/g0;

    invoke-virtual {p2, p1, v2}, Lo1/g0;->b(II)I

    move-result p2

    sget v0, Lk0/vs;->w:I

    if-eq p2, v0, :cond_1

    .line 9
    iget-object p2, p0, Lk0/vs;->m:Lo1/g0;

    invoke-virtual {p2, p1, v0}, Lo1/g0;->g(II)V

    :cond_1
    return-void
.end method
