.class public Lk0/xq;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static D:I = 0xff

.field public static E:I = 0x14

.field public static F:I = 0x24

.field public static G:I = 0x0

.field public static H:I = 0x1

.field public static I:I = 0x1


# instance fields
.field public A:I

.field public B:Ljava/lang/Runnable;

.field public C:Ljava/lang/Runnable;

.field public b:I

.field public c:I

.field public d:Z

.field public e:I

.field public f:I

.field public g:[[I

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;

.field public o:I

.field public p:Ljava/lang/Runnable;

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Z

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public z:Lo1/g0;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/xq;->b:I

    .line 3
    iput v0, p0, Lk0/xq;->c:I

    .line 4
    iput-boolean v0, p0, Lk0/xq;->d:Z

    .line 5
    iput v0, p0, Lk0/xq;->f:I

    const/16 v1, 0x12

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 6
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

    const/16 v5, 0xb

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v6, 0xc

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v6, 0xd

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v7, 0xe

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v7, 0xf

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v8, 0x10

    aput-object v3, v1, v8

    new-array v2, v2, [I

    fill-array-data v2, :array_11

    const/16 v3, 0x11

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/xq;->g:[[I

    .line 7
    iput v0, p0, Lk0/xq;->h:I

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lk0/xq;->i:I

    .line 9
    iput v1, p0, Lk0/xq;->j:I

    .line 10
    iput-boolean v0, p0, Lk0/xq;->k:Z

    .line 11
    new-instance v1, Lk0/xq$c;

    invoke-direct {v1, p0}, Lk0/xq$c;-><init>(Lk0/xq;)V

    iput-object v1, p0, Lk0/xq;->l:Ljava/lang/Runnable;

    .line 12
    new-instance v1, Lk0/xq$d;

    invoke-direct {v1, p0}, Lk0/xq$d;-><init>(Lk0/xq;)V

    iput-object v1, p0, Lk0/xq;->m:Ljava/lang/Runnable;

    .line 13
    new-instance v1, Lk0/xq$e;

    invoke-direct {v1, p0}, Lk0/xq$e;-><init>(Lk0/xq;)V

    iput-object v1, p0, Lk0/xq;->n:Ljava/lang/Runnable;

    .line 14
    iput v0, p0, Lk0/xq;->o:I

    .line 15
    new-instance v1, Lk0/xq$f;

    invoke-direct {v1, p0}, Lk0/xq$f;-><init>(Lk0/xq;)V

    iput-object v1, p0, Lk0/xq;->p:Ljava/lang/Runnable;

    .line 16
    iput v0, p0, Lk0/xq;->q:I

    .line 17
    iput-boolean v0, p0, Lk0/xq;->r:Z

    .line 18
    iput-boolean v0, p0, Lk0/xq;->s:Z

    .line 19
    iput-boolean v0, p0, Lk0/xq;->t:Z

    .line 20
    iput v4, p0, Lk0/xq;->u:I

    .line 21
    iput v5, p0, Lk0/xq;->v:I

    .line 22
    iput v6, p0, Lk0/xq;->w:I

    .line 23
    iput v7, p0, Lk0/xq;->x:I

    const/16 v1, 0x17

    .line 24
    iput v1, p0, Lk0/xq;->y:I

    .line 25
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/xq;->z:Lo1/g0;

    .line 26
    iput v0, p0, Lk0/xq;->A:I

    .line 27
    new-instance v0, Lk0/xq$g;

    invoke-direct {v0, p0}, Lk0/xq$g;-><init>(Lk0/xq;)V

    iput-object v0, p0, Lk0/xq;->B:Ljava/lang/Runnable;

    .line 28
    new-instance v0, Lk0/xq$h;

    invoke-direct {v0, p0}, Lk0/xq$h;-><init>(Lk0/xq;)V

    iput-object v0, p0, Lk0/xq;->C:Ljava/lang/Runnable;

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
        0xc
        0x5
    .end array-data

    :array_a
    .array-data 4
        0xd
        0x1d
    .end array-data

    :array_b
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_c
    .array-data 4
        0x16
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x17
        0x2
    .end array-data

    :array_e
    .array-data 4
        0x18
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x21
        0x37
    .end array-data

    :array_10
    .array-data 4
        0x42
        0x1f
    .end array-data

    :array_11
    .array-data 4
        0x43
        0x1e
    .end array-data
.end method

.method public static synthetic b3(Lk0/xq;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/xq;->a3(Z)V

    return-void
.end method

.method public static synthetic c3()I
    .locals 1

    .line 1
    sget v0, Lk0/xq;->F:I

    return v0
.end method

.method public static synthetic d3(Lk0/xq;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/xq;->z:Lo1/g0;

    return-object p0
.end method

.method public static synthetic e3(Lk0/xq;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/xq;->m3(I)V

    return-void
.end method

.method public static synthetic f3(Lk0/xq;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/xq;->j3(I)V

    return-void
.end method

.method public static synthetic g3(Lk0/xq;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/xq;->n3(I)V

    return-void
.end method

.method public static synthetic h3(Lk0/xq;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/xq;->l3(I)V

    return-void
.end method

.method public static synthetic i3(Lk0/xq;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/xq;->k3(I)V

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
    iget-object v0, p0, Lk0/xq;->z:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/xq;->B:Ljava/lang/Runnable;

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

    .line 14
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Lk0/xq;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Ly0/g;->k:Lo1/z;

    new-instance v1, Lk0/xq$a;

    invoke-direct {v1, p0}, Lk0/xq$a;-><init>(Lk0/xq;)V

    invoke-virtual {v0, v1}, Lo1/z;->a(Lo1/p;)V

    .line 16
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/xq;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v0, Lu0/c;->z:Lo1/y;

    iget-object v1, p0, Lk0/xq;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/xq;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/16 v5, 0xff

    const/4 v6, 0x1

    if-eq v2, v3, :cond_21

    const/16 v7, 0x35

    const/16 v8, 0x10

    const/16 v10, 0xc

    const/16 v11, 0x8

    const/4 v12, 0x4

    const/4 v13, 0x5

    const/4 v14, 0x0

    if-eq v2, v7, :cond_18

    const/16 v7, 0x39

    if-eq v2, v7, :cond_17

    const/16 v7, 0x7f

    if-eq v2, v7, :cond_16

    const/4 v15, 0x7

    const/4 v7, 0x6

    const/4 v9, 0x3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v14

    .line 4
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v14

    .line 5
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v14

    .line 6
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v14

    .line 7
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v6

    aput v3, v2, v14

    .line 8
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v6

    aput v3, v2, v14

    .line 9
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v6

    aput v3, v2, v14

    .line 10
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v6

    aput v1, v2, v14

    .line 11
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 12
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    add-int/lit8 v4, p2, 0x3

    .line 13
    aget-byte v7, v1, v4

    and-int/2addr v7, v5

    add-int/lit8 v8, p2, 0x4

    .line 14
    aget-byte v9, v1, v8

    and-int/2addr v9, v5

    add-int/lit8 v10, p2, 0x5

    .line 15
    aget-byte v12, v1, v10

    and-int/2addr v12, v5

    if-nez v3, :cond_1

    if-nez v7, :cond_1

    if-nez v9, :cond_1

    if-nez v12, :cond_1

    .line 16
    invoke-static {v14}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 17
    :cond_1
    sget v13, Ll0/c0;->g:I

    if-ne v13, v3, :cond_2

    sget v13, Ll0/c0;->h:I

    if-ne v13, v7, :cond_2

    sget v13, Ll0/c0;->i:I

    if-ne v13, v9, :cond_2

    sget v13, Ll0/c0;->j:I

    if-eq v13, v12, :cond_3

    .line 18
    :cond_2
    invoke-static {}, Lo1/u;->a0()Z

    move-result v13

    if-nez v13, :cond_3

    iget v13, v0, Lk0/xq;->b:I

    if-nez v13, :cond_3

    .line 19
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 20
    sput v11, Ll0/c0;->k:I

    .line 21
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 22
    :cond_3
    :goto_1
    sput v3, Ll0/c0;->g:I

    .line 23
    sput v7, Ll0/c0;->h:I

    .line 24
    sput v9, Ll0/c0;->i:I

    .line 25
    sput v12, Ll0/c0;->j:I

    .line 26
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 27
    aget-byte v2, v1, v4

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 28
    aget-byte v2, v1, v8

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 29
    aget-byte v1, v1, v10

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->E1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_b

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 30
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 31
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 32
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 33
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->E1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_b

    :pswitch_3
    new-array v2, v6, [I

    add-int/lit8 v9, p2, 0x2

    .line 34
    aget-byte v16, v1, v9

    shr-int/lit8 v16, v16, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v2, v14

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 35
    aget-byte v3, v1, v9

    shr-int/2addr v3, v7

    and-int/2addr v3, v6

    aput v3, v2, v14

    const/16 v3, 0xb

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 36
    aget-byte v3, v1, v9

    shr-int/2addr v3, v13

    and-int/2addr v3, v6

    aput v3, v2, v14

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v3, v6, [I

    .line 37
    aget-byte v10, v1, v9

    shr-int/2addr v10, v12

    and-int/2addr v10, v6

    aput v10, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v6, [I

    .line 38
    aget-byte v10, v1, v9

    shr-int/2addr v10, v6

    and-int/2addr v10, v6

    aput v10, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 39
    aget-byte v3, v1, v9

    shr-int/2addr v3, v14

    and-int/2addr v3, v6

    aput v3, v2, v14

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v3, v6, [I

    .line 40
    aget-byte v8, v1, v9

    shr-int/2addr v8, v4

    and-int/2addr v8, v6

    aput v8, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x3

    .line 41
    aget-byte v9, v1, v8

    shr-int/2addr v9, v15

    and-int/2addr v9, v6

    aput v9, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v6, [I

    .line 42
    aget-byte v9, v1, v8

    shr-int/lit8 v7, v9, 0x6

    and-int/2addr v7, v6

    aput v7, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 43
    aget-byte v3, v1, v8

    shr-int/2addr v3, v13

    and-int/2addr v3, v6

    aput v3, v2, v14

    const/16 v3, 0x14

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 44
    aget-byte v3, v1, v8

    shr-int/2addr v3, v14

    and-int/lit8 v3, v3, 0xf

    aput v3, v2, v14

    const/16 v3, 0x15

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 45
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    add-int/lit8 v7, p2, 0x5

    .line 46
    aget-byte v8, v1, v7

    and-int/2addr v8, v5

    const-string v9, "persist.fyt.reversetemp"

    .line 47
    invoke-static {v9, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 48
    aget-byte v3, v1, v7

    and-int/2addr v3, v5

    .line 49
    aget-byte v2, v1, v2

    and-int/lit16 v8, v2, 0xff

    :cond_4
    const/4 v2, -0x3

    const/4 v7, -0x2

    const/16 v9, 0x1b

    if-eqz v3, :cond_6

    if-eq v3, v5, :cond_5

    new-array v10, v6, [I

    aput v3, v10, v14

    .line 50
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array v3, v6, [I

    aput v2, v3, v14

    .line 51
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array v3, v6, [I

    aput v7, v3, v14

    .line 52
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v3, 0x1c

    if-eqz v8, :cond_8

    if-eq v8, v5, :cond_7

    new-array v2, v6, [I

    aput v8, v2, v14

    .line 53
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_7
    new-array v5, v6, [I

    aput v2, v5, v14

    .line 54
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    new-array v2, v6, [I

    aput v7, v2, v14

    .line 55
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_3
    add-int/lit8 v2, p2, 0x8

    .line 56
    aget-byte v1, v1, v2

    shr-int/2addr v1, v4

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_22

    const/16 v1, 0x3e

    .line 57
    invoke-static {v1, v14}, Ll0/b0;->l0(II)V

    .line 58
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 59
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 60
    aget-byte v1, v1, v3

    and-int/2addr v2, v5

    .line 61
    iput v2, v0, Lk0/xq;->f:I

    move v2, v14

    .line 62
    :goto_4
    iget-object v3, v0, Lk0/xq;->g:[[I

    array-length v8, v3

    if-ge v2, v8, :cond_a

    .line 63
    iget v8, v0, Lk0/xq;->f:I

    aget-object v9, v3, v2

    aget v9, v9, v14

    if-ne v8, v9, :cond_9

    if-eqz v8, :cond_a

    .line 64
    iput v2, v0, Lk0/xq;->e:I

    goto :goto_5

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 65
    :cond_a
    :goto_5
    iget v8, v0, Lk0/xq;->f:I

    if-eq v8, v6, :cond_10

    if-eq v8, v4, :cond_f

    if-eq v8, v7, :cond_e

    const/16 v4, 0x15

    if-eq v8, v4, :cond_d

    packed-switch v8, :pswitch_data_1

    and-int/2addr v1, v5

    if-ne v1, v6, :cond_b

    .line 66
    array-length v1, v3

    if-ge v2, v1, :cond_22

    .line 67
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v14}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_b
    if-nez v1, :cond_22

    .line 68
    iget v1, v0, Lk0/xq;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_c

    if-eq v1, v5, :cond_c

    .line 69
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 70
    :cond_c
    iput v5, v0, Lk0/xq;->e:I

    goto/16 :goto_b

    :cond_d
    :pswitch_5
    and-int/2addr v1, v5

    if-ne v1, v6, :cond_22

    .line 71
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-nez v1, :cond_22

    .line 72
    invoke-static {}, Lo1/u;->z()I

    goto/16 :goto_b

    .line 73
    :cond_e
    sget v2, Lk0/xq;->H:I

    if-ne v2, v6, :cond_22

    and-int/2addr v1, v5

    if-ne v1, v6, :cond_22

    .line 74
    invoke-static {v10, v14}, Ll0/b0;->l0(II)V

    .line 75
    invoke-static {v10, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    .line 76
    :cond_f
    sget v2, Lk0/xq;->H:I

    if-ne v2, v6, :cond_22

    and-int/2addr v1, v5

    if-ne v1, v6, :cond_22

    .line 77
    invoke-static {v11, v14}, Ll0/b0;->l0(II)V

    .line 78
    invoke-static {v11, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    .line 79
    :cond_10
    sget v2, Lk0/xq;->H:I

    if-ne v2, v6, :cond_22

    and-int/2addr v1, v5

    if-ne v1, v6, :cond_22

    .line 80
    invoke-static {v15, v14}, Ll0/b0;->l0(II)V

    .line 81
    invoke-static {v15, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    .line 82
    :pswitch_6
    iget v2, v0, Lk0/xq;->b:I

    add-int/lit8 v3, p2, 0x2

    aget-byte v5, v1, v3

    shr-int/2addr v5, v4

    and-int/2addr v5, v6

    if-eq v2, v5, :cond_22

    .line 83
    aget-byte v1, v1, v3

    shr-int/2addr v1, v4

    and-int/2addr v1, v6

    iput v1, v0, Lk0/xq;->b:I

    .line 84
    sget v2, Lu0/b;->r0:I

    if-nez v2, :cond_22

    const-string v2, "persist.lesc.video.ignore"

    if-ne v1, v6, :cond_14

    if-ne v1, v6, :cond_11

    const-string v1, "true"

    .line 85
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x32

    .line 86
    invoke-static {v1, v2}, La/i;->a0(J)V

    .line 87
    :cond_11
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-nez v1, :cond_13

    .line 88
    iput-boolean v6, v0, Lk0/xq;->d:Z

    .line 89
    invoke-static {}, Lo1/u;->z()I

    .line 90
    sget v1, Ly0/f;->x:I

    if-nez v1, :cond_12

    sget v1, Ly0/f;->c:I

    sget v2, Ly0/f;->R:I

    mul-int/2addr v1, v2

    sget v2, Ly0/f;->S:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    goto :goto_6

    :cond_12
    const/4 v1, 0x0

    :goto_6
    float-to-int v1, v1

    .line 91
    sget v2, Ly0/f;->c:I

    iput v2, v0, Lk0/xq;->c:I

    .line 92
    invoke-static {v1}, Ly0/h;->t0(I)V

    .line 93
    :cond_13
    invoke-static {v14}, Lu0/d;->C2(I)V

    goto/16 :goto_b

    :cond_14
    if-nez v1, :cond_22

    const-wide/16 v3, 0x64

    .line 94
    invoke-static {v3, v4}, La/i;->a0(J)V

    .line 95
    iget-boolean v1, v0, Lk0/xq;->d:Z

    if-eqz v1, :cond_15

    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 96
    invoke-static {v7, v14}, Ll0/b0;->l0(II)V

    .line 97
    invoke-static {v7, v6}, Ll0/b0;->l0(II)V

    .line 98
    iget v1, v0, Lk0/xq;->c:I

    invoke-static {v1}, Ly0/h;->t0(I)V

    :cond_15
    const-string v1, "false"

    .line 99
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iput-boolean v14, v0, Lk0/xq;->d:Z

    goto/16 :goto_b

    .line 101
    :cond_16
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 102
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    add-int/2addr v1, v6

    const/16 v2, 0x76

    new-array v3, v6, [I

    aput v1, v3, v14

    .line 103
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_18
    const/16 v2, 0x62

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 104
    aget-byte v9, v1, v7

    shr-int/lit8 v4, v9, 0x2

    and-int/2addr v4, v6

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v6, [I

    .line 105
    aget-byte v4, v1, v7

    shr-int/2addr v4, v12

    and-int/2addr v4, v6

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v6, [I

    .line 106
    aget-byte v4, v1, v7

    shr-int/2addr v4, v13

    and-int/2addr v4, v6

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 107
    aget-byte v2, v1, v7

    shr-int/2addr v2, v13

    and-int/2addr v2, v6

    .line 108
    aget-byte v3, v1, v7

    shr-int/2addr v3, v12

    and-int/2addr v3, v6

    .line 109
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v4

    if-eqz v4, :cond_1f

    sget-boolean v4, Ll0/c0;->p:Z

    if-nez v4, :cond_1f

    if-nez v2, :cond_19

    if-ne v3, v6, :cond_19

    move v4, v6

    goto :goto_7

    :cond_19
    move v4, v14

    :goto_7
    if-ne v2, v6, :cond_1a

    if-nez v3, :cond_1a

    move v7, v6

    goto :goto_8

    :cond_1a
    move v7, v14

    :goto_8
    if-ne v2, v6, :cond_1b

    if-ne v3, v6, :cond_1b

    move v2, v6

    goto :goto_9

    :cond_1b
    move v2, v14

    .line 110
    :goto_9
    sput v14, Ll0/c0;->t:I

    .line 111
    sput v14, Ll0/c0;->r:I

    .line 112
    sput v14, Ll0/c0;->v:I

    const/16 v3, 0x14

    if-eqz v4, :cond_1c

    .line 113
    sput v3, Ll0/c0;->t:I

    :cond_1c
    if-eqz v7, :cond_1d

    .line 114
    sput v3, Ll0/c0;->r:I

    :cond_1d
    if-eqz v2, :cond_1e

    .line 115
    sput v3, Ll0/c0;->v:I

    .line 116
    :cond_1e
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v3

    const/16 v9, 0x1000

    invoke-virtual {v3, v9, v4}, Lu0/i;->g4(IZ)V

    .line 117
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, v4, v7}, Lu0/i;->g4(IZ)V

    const/16 v3, 0x8b

    new-array v4, v6, [I

    aput v2, v4, v14

    .line 118
    invoke-static {v3, v4}, Lu0/d;->I3(I[I)V

    :cond_1f
    add-int/lit8 v2, p2, 0x8

    .line 119
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    if-eqz v2, :cond_20

    mul-int/2addr v2, v13

    add-int/lit16 v2, v2, 0x258

    .line 120
    invoke-static {v2}, Lu0/d;->A3(I)V

    goto :goto_a

    .line 121
    :cond_20
    invoke-static {v14}, Lu0/d;->A3(I)V

    :goto_a
    const/16 v2, 0x69

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 122
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x6

    .line 123
    aget-byte v4, v1, v4

    shl-int/2addr v4, v11

    const v7, 0xff00

    and-int/2addr v4, v7

    add-int/lit8 v9, p2, 0x7

    aget-byte v9, v1, v9

    and-int/2addr v9, v5

    or-int/2addr v4, v9

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x4

    .line 124
    aget-byte v4, v1, v4

    shl-int/2addr v4, v11

    and-int/2addr v4, v7

    add-int/lit8 v9, p2, 0x5

    aget-byte v9, v1, v9

    and-int/2addr v9, v5

    or-int/2addr v4, v9

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x9

    .line 125
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x18

    const/high16 v6, -0x1000000

    and-int/2addr v4, v6

    add-int/lit8 v6, p2, 0xa

    aget-byte v6, v1, v6

    shl-int/2addr v6, v8

    const/high16 v8, 0xff0000

    and-int/2addr v6, v8

    or-int/2addr v4, v6

    add-int/lit8 v6, p2, 0xb

    aget-byte v6, v1, v6

    shl-int/2addr v6, v11

    and-int/2addr v6, v7

    or-int/2addr v4, v6

    add-int/lit8 v6, p2, 0xc

    aget-byte v1, v1, v6

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_21
    add-int/lit8 v2, p2, 0x3

    .line 126
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    add-int/lit8 v4, p2, 0x2

    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    const/16 v4, 0x1e0

    invoke-static {v2, v3, v1, v4}, Lk0/qt;->j(IIII)V

    :cond_22
    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/xq;->z:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/xq;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/xq;->C:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Lk0/xq;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/xq;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/xq;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->z:Lo1/y;

    iget-object v1, p0, Lk0/xq;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Ly0/g;->k:Lo1/z;

    new-instance v1, Lk0/xq$b;

    invoke-direct {v1, p0}, Lk0/xq$b;-><init>(Lk0/xq;)V

    invoke-virtual {v0, v1}, Lo1/z;->d(Lo1/p;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x78

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

    const/4 p3, 0x5

    const/16 p4, 0xe3

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    const/4 v5, 0x6

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v5, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    aget p1, p2, v4

    if-nez p1, :cond_1

    const-string p1, "persist.lesc.video.ignore"

    .line 2
    invoke-static {p1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    sget p1, Lk0/xq;->E:I

    invoke-static {p1}, Ly0/h;->u0(I)V

    .line 4
    :cond_1
    sget p1, Lk0/nt;->U:I

    if-ne p1, v3, :cond_b

    .line 5
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x3e9

    aget p2, p2, v4

    invoke-static {p1, p3, p2}, Lo1/x;->x([Lo1/x;II)V

    goto/16 :goto_0

    :cond_2
    new-array p1, v0, [I

    aput p4, p1, v4

    const/16 p3, 0xa9

    aput p3, p1, v3

    aput v3, p1, v2

    .line 6
    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_3
    new-array p1, v5, [I

    aput p4, p1, v4

    const/16 p4, 0x82

    aput p4, p1, v3

    aput v1, p1, v2

    .line 7
    aget p4, p2, v4

    aput p4, p1, v1

    aget p4, p2, v3

    aput p4, p1, v0

    aget p2, p2, v2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_4
    const/16 p1, 0x8

    new-array p1, p1, [I

    aput p4, p1, v4

    const/16 p4, 0xa7

    aput p4, p1, v3

    aput p3, p1, v2

    .line 8
    aget p4, p2, v4

    aput p4, p1, v1

    aget p4, p2, v3

    aput p4, p1, v0

    aget p4, p2, v2

    aput p4, p1, p3

    aget p3, p2, v1

    aput p3, p1, v5

    const/4 p3, 0x7

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 9
    :cond_5
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xfd

    if-ne p1, v5, :cond_6

    .line 10
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/xq;->m3(I)V

    goto :goto_0

    .line 11
    :cond_6
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xf4

    if-ne p1, v5, :cond_7

    .line 12
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/xq;->k3(I)V

    goto :goto_0

    .line 13
    :cond_7
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xfc

    if-ne p1, v5, :cond_8

    .line 14
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/xq;->j3(I)V

    goto :goto_0

    .line 15
    :cond_8
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xf7

    if-ne p1, v5, :cond_9

    .line 16
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/xq;->n3(I)V

    goto :goto_0

    .line 17
    :cond_9
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xfa

    if-ne p1, v5, :cond_a

    .line 18
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/xq;->l3(I)V

    goto :goto_0

    :cond_a
    new-array p1, p3, [I

    aput p4, p1, v4

    const/16 p3, 0xa8

    aput p3, p1, v3

    aput v2, p1, v2

    .line 19
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_b
    :goto_0
    return-void
.end method

.method public final a3(Z)V
    .locals 4

    .line 1
    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoundChangeTo 1111111=== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lk0/xq;->s:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lk0/xq;->s:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 4
    :cond_1
    iput-boolean p1, p0, Lk0/xq;->s:Z

    .line 5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoundChangeTo 222222=== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lk0/xq;->s:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const-string v0, "ro.fyt.platform"

    const-string v1, ""

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "6521"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    .line 8
    invoke-static {v2}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    goto :goto_2

    .line 9
    :cond_2
    invoke-static {v3}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    goto :goto_2

    :cond_3
    const-string v1, "6316"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "6312"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "6315"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "6318"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "6319"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    if-eqz p1, :cond_6

    .line 12
    invoke-static {v0, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    .line 13
    :cond_6
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    :cond_7
    :goto_0
    const/16 v0, 0xe

    if-eqz p1, :cond_8

    .line 14
    invoke-static {v0, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    .line 15
    :cond_8
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    :cond_9
    :goto_1
    const/16 v0, 0xd

    if-eqz p1, :cond_a

    .line 16
    invoke-static {v0, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    .line 17
    :cond_a
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    :goto_2
    return-void
.end method

.method public final j3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v1, 0x72

    .line 1
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/xq;->F:I

    .line 3
    iget-object p1, p0, Lk0/xq;->z:Lo1/g0;

    const/16 v0, 0xb

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/xq;->F:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/xq;->z:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final k3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x77

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/xq;->I:I

    .line 3
    iget-object p1, p0, Lk0/xq;->z:Lo1/g0;

    const/16 v1, 0x17

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v3, Lk0/xq;->I:I

    if-eq p1, v3, :cond_0

    .line 4
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget v3, Lk0/xq;->I:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "%d"

    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.sys.allscreenon"

    .line 5
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lk0/xq;->z:Lo1/g0;

    sget v0, Lk0/xq;->I:I

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final l3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x75

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/xq;->G:I

    .line 3
    sget p1, Lk0/nt;->a:I

    const v1, 0x3b01c8

    if-ne p1, v1, :cond_0

    const/4 p1, 0x4

    new-array p1, p1, [I

    const/16 v1, 0xe3

    aput v1, p1, v2

    const/16 v1, 0xaa

    aput v1, p1, v0

    const/4 v1, 0x2

    aput v0, p1, v1

    const/4 v0, 0x3

    .line 4
    sget v1, Lk0/xq;->G:I

    aput v1, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lk0/xq;->z:Lo1/g0;

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/xq;->G:I

    if-eq p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Lk0/xq;->z:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_1
    return-void
.end method

.method public final m3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v1, 0x71

    .line 1
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/xq;->E:I

    .line 3
    iget-object p1, p0, Lk0/xq;->z:Lo1/g0;

    const/16 v0, 0xa

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/xq;->E:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/xq;->z:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final n3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v2, 0x73

    .line 1
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/xq;->H:I

    .line 3
    iget-object p1, p0, Lk0/xq;->z:Lo1/g0;

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/xq;->H:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/xq;->z:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
