.class public Lk0/ql;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static A:I

.field public static B:I

.field public static C:I

.field public static D:I

.field public static E:I

.field public static F:I

.field public static w:I

.field public static x:I

.field public static y:I

.field public static z:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:I

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Lo1/g0;

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ql;->c:I

    const/16 v1, 0x8

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v6, 0x3

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v7, 0x4

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v8, 0x5

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v9, 0x6

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v10, 0x7

    aput-object v4, v2, v10

    iput-object v2, p0, Lk0/ql;->d:[[I

    .line 4
    iput v0, p0, Lk0/ql;->f:I

    new-array v2, v9, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_8

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    aput-object v4, v2, v8

    iput-object v2, p0, Lk0/ql;->g:[[I

    .line 6
    iput v0, p0, Lk0/ql;->h:I

    .line 7
    iput v0, p0, Lk0/ql;->i:I

    .line 8
    new-instance v0, Lk0/ql$a;

    invoke-direct {v0, p0}, Lk0/ql$a;-><init>(Lk0/ql;)V

    iput-object v0, p0, Lk0/ql;->j:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/ql$b;

    invoke-direct {v0, p0}, Lk0/ql$b;-><init>(Lk0/ql;)V

    iput-object v0, p0, Lk0/ql;->k:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x20

    invoke-direct {v0, v2, v4}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/ql;->l:Lo1/g0;

    .line 11
    iput v5, p0, Lk0/ql;->m:I

    .line 12
    iput v3, p0, Lk0/ql;->n:I

    .line 13
    iput v6, p0, Lk0/ql;->o:I

    .line 14
    iput v7, p0, Lk0/ql;->p:I

    .line 15
    iput v8, p0, Lk0/ql;->q:I

    .line 16
    iput v9, p0, Lk0/ql;->r:I

    .line 17
    iput v10, p0, Lk0/ql;->s:I

    .line 18
    iput v1, p0, Lk0/ql;->t:I

    const/16 v0, 0x9

    .line 19
    iput v0, p0, Lk0/ql;->u:I

    const/16 v0, 0xa

    .line 20
    iput v0, p0, Lk0/ql;->v:I

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
        0x24
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x25
        -0x1
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_a
    .array-data 4
        0x17
        0x7
    .end array-data

    :array_b
    .array-data 4
        0x18
        0x8
    .end array-data

    :array_c
    .array-data 4
        0x19
        0x1f
    .end array-data

    :array_d
    .array-data 4
        0x1a
        0x1e
    .end array-data
.end method

.method public static synthetic a3(Lk0/ql;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/ql;->l:Lo1/g0;

    return-object p0
.end method

.method public static synthetic b3(Lk0/ql;IIIIIIII)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p8}, Lk0/ql;->d3(IIIIIIII)V

    return-void
.end method

.method public static synthetic c3(Lk0/ql;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/ql;->e3(II)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/ql;->l:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ql;->j:Ljava/lang/Runnable;

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

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lk0/mt;->h:I

    .line 8
    iput v1, v0, Lk0/mt;->l:I

    .line 9
    sget v3, Lk0/nt;->a:I

    const v4, 0xf401c7

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iput v2, v0, Lk0/mt;->l:I

    .line 11
    :goto_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    .line 12
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 13
    iput v2, v0, Lk0/mt;->q:I

    goto :goto_1

    .line 14
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    :goto_1
    return-void
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v9, :cond_28

    const/16 v11, 0x8

    const/4 v12, 0x7

    const/4 v13, 0x4

    if-eq v2, v5, :cond_1b

    const/4 v14, -0x3

    const/4 v15, -0x2

    const/16 v10, 0x1f

    const/16 v3, 0x1b

    if-eq v2, v6, :cond_c

    if-eq v2, v3, :cond_9

    const/16 v3, 0x30

    if-eq v2, v3, :cond_8

    const/16 v3, 0x26

    if-eq v2, v3, :cond_7

    const/16 v3, 0x27

    if-eq v2, v3, :cond_6

    const/16 v3, 0x36

    if-eq v2, v3, :cond_5

    const/16 v3, 0x37

    if-eq v2, v3, :cond_4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_13

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 4
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 5
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 6
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 7
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 8
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 9
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v9

    aput v1, v2, v8

    .line 10
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 11
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    add-int/lit8 v5, p2, 0x3

    .line 12
    aget-byte v6, v1, v5

    and-int/2addr v6, v7

    add-int/lit8 v10, p2, 0x4

    .line 13
    aget-byte v11, v1, v10

    and-int/2addr v11, v7

    add-int/lit8 v4, p2, 0x5

    .line 14
    aget-byte v12, v1, v4

    and-int/2addr v12, v7

    if-nez v3, :cond_1

    if-nez v6, :cond_1

    if-nez v11, :cond_1

    if-nez v12, :cond_1

    .line 15
    invoke-static {v8}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 16
    :cond_1
    sget v8, Ll0/c0;->g:I

    if-ne v8, v3, :cond_2

    sget v8, Ll0/c0;->h:I

    if-ne v8, v6, :cond_2

    sget v8, Ll0/c0;->i:I

    if-ne v8, v11, :cond_2

    sget v8, Ll0/c0;->j:I

    if-eq v8, v12, :cond_3

    .line 17
    :cond_2
    sget v8, Lu0/b;->o:I

    if-nez v8, :cond_3

    .line 18
    invoke-static {v9}, Lu0/d;->C2(I)V

    .line 19
    sput v13, Ll0/c0;->k:I

    .line 20
    sget-object v8, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v8}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 21
    :cond_3
    :goto_1
    sput v3, Ll0/c0;->g:I

    .line 22
    sput v6, Ll0/c0;->h:I

    .line 23
    sput v11, Ll0/c0;->i:I

    .line 24
    sput v12, Ll0/c0;->j:I

    .line 25
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 26
    aget-byte v2, v1, v5

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 27
    aget-byte v2, v1, v10

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 28
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->b1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_13

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 29
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 30
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 31
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 32
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->b1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_13

    :cond_4
    add-int/lit8 v2, p2, 0x2

    .line 33
    aget-byte v2, v1, v2

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_13

    :pswitch_3
    const/16 v2, 0x8b

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 34
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_4
    const/16 v2, 0x8a

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 35
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_5
    const/16 v2, 0x89

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 36
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_6
    const/16 v2, 0x88

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 37
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_7
    const/16 v2, 0x87

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 38
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_8
    const/16 v2, 0x86

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 39
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_9
    const/16 v2, 0x85

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 40
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_a
    const/16 v2, 0x84

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 41
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_b
    const/16 v2, 0x83

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 42
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_c
    const/16 v2, 0x82

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 43
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_5
    const/16 v2, 0x63

    new-array v3, v9, [I

    add-int/lit8 v7, p2, 0x2

    .line 44
    aget-byte v10, v1, v7

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v6

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v9, [I

    .line 45
    aget-byte v10, v1, v7

    shr-int/2addr v10, v13

    and-int/2addr v10, v6

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v9, [I

    .line 46
    aget-byte v10, v1, v7

    shr-int/2addr v10, v5

    and-int/2addr v10, v6

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v9, [I

    .line 47
    aget-byte v10, v1, v7

    shr-int/2addr v10, v9

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v9, [I

    .line 48
    aget-byte v7, v1, v7

    shr-int/2addr v7, v8

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v9, [I

    add-int/lit8 v7, p2, 0x3

    .line 49
    aget-byte v10, v1, v7

    shr-int/2addr v10, v12

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v9, [I

    .line 50
    aget-byte v10, v1, v7

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v9, [I

    .line 51
    aget-byte v10, v1, v7

    shr-int/2addr v10, v4

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v9, [I

    .line 52
    aget-byte v10, v1, v7

    shr-int/2addr v10, v13

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v9, [I

    .line 53
    aget-byte v10, v1, v7

    shr-int/2addr v10, v6

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v9, [I

    .line 54
    aget-byte v10, v1, v7

    shr-int/2addr v10, v9

    and-int/2addr v10, v6

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v9, [I

    .line 55
    aget-byte v10, v1, v7

    shr-int/2addr v10, v8

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x42

    new-array v3, v9, [I

    .line 56
    aget-byte v7, v1, v7

    shr-int/2addr v7, v8

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v9, [I

    add-int/lit8 v7, p2, 0x5

    .line 57
    aget-byte v10, v1, v7

    shr-int/2addr v10, v12

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v9, [I

    .line 58
    aget-byte v10, v1, v7

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v9, [I

    .line 59
    aget-byte v10, v1, v7

    shr-int/lit8 v4, v10, 0x5

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v9, [I

    .line 60
    aget-byte v4, v1, v7

    shr-int/2addr v4, v13

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v9, [I

    .line 61
    aget-byte v4, v1, v7

    shr-int/2addr v4, v6

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v9, [I

    .line 62
    aget-byte v4, v1, v7

    shr-int/2addr v4, v5

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v9, [I

    .line 63
    aget-byte v1, v1, v7

    shr-int/2addr v1, v8

    and-int/2addr v1, v9

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_6
    const/16 v2, 0x6f

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 64
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 65
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_7
    add-int/lit8 v2, p2, 0x2

    .line 66
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x1000

    const/16 v4, 0x3fc

    invoke-static {v2, v1, v3, v8, v4}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_13

    .line 67
    :cond_8
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_9
    const/16 v2, 0x2a

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 68
    aget-byte v11, v1, v4

    shr-int/2addr v11, v8

    and-int/2addr v11, v9

    aput v11, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v3, v9, [I

    .line 69
    aget-byte v11, v1, v4

    shr-int/lit8 v5, v11, 0x2

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2e

    new-array v3, v9, [I

    .line 70
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v3, v9, [I

    .line 71
    aget-byte v4, v1, v4

    shr-int/2addr v4, v13

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 72
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    const/16 v4, 0x28

    if-nez v3, :cond_a

    new-array v2, v9, [I

    aput v15, v2, v8

    .line 73
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    .line 74
    :cond_a
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    if-ne v3, v10, :cond_b

    new-array v2, v9, [I

    aput v14, v2, v8

    .line 75
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_b
    new-array v3, v9, [I

    .line 76
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    aput v2, v3, v8

    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v2, 0x2c

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 77
    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_c
    const/16 v2, 0x15

    new-array v5, v9, [I

    add-int/lit8 v16, p2, 0x2

    .line 78
    aget-byte v17, v1, v16

    shr-int/lit8 v17, v17, 0x0

    and-int/lit8 v17, v17, 0xf

    aput v17, v5, v8

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v5, v9, [I

    .line 79
    aget-byte v17, v1, v16

    shr-int/lit8 v17, v17, 0x4

    and-int/lit8 v17, v17, 0x1

    aput v17, v5, v8

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v5, v9, [I

    .line 80
    aget-byte v17, v1, v16

    shr-int/lit8 v17, v17, 0x5

    and-int/lit8 v17, v17, 0x1

    aput v17, v5, v8

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v5, v9, [I

    .line 81
    aget-byte v16, v1, v16

    shr-int/lit8 v16, v16, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v5, v8

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 82
    aget-byte v5, v1, v2

    and-int/lit8 v5, v5, 0xf

    if-eq v5, v6, :cond_11

    if-eq v5, v13, :cond_10

    if-eq v5, v4, :cond_f

    if-eq v5, v12, :cond_e

    if-eq v5, v11, :cond_d

    move v5, v8

    move v12, v5

    :goto_3
    move/from16 v16, v12

    goto :goto_4

    :cond_d
    move v12, v8

    move v5, v9

    move/from16 v16, v5

    goto :goto_4

    :cond_e
    move v12, v8

    move/from16 v16, v12

    move v5, v9

    goto :goto_4

    :cond_f
    move v5, v8

    move/from16 v16, v5

    move v12, v9

    goto :goto_4

    :cond_10
    move v5, v8

    move v12, v9

    goto :goto_3

    :cond_11
    move v5, v8

    move v12, v5

    move/from16 v16, v9

    :goto_4
    new-array v6, v9, [I

    aput v5, v6, v8

    const/16 v5, 0x12

    .line 83
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x13

    new-array v6, v9, [I

    aput v12, v6, v8

    .line 84
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x14

    new-array v6, v9, [I

    aput v16, v6, v8

    .line 85
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xe

    new-array v6, v9, [I

    .line 86
    aget-byte v2, v1, v2

    shr-int/2addr v2, v4

    and-int/2addr v2, v9

    aput v2, v6, v8

    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 87
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/16 v4, 0x1c

    if-eqz v2, :cond_16

    add-int/lit8 v2, p2, 0x4

    .line 88
    aget-byte v5, v1, v2

    and-int/2addr v5, v7

    if-nez v5, :cond_12

    new-array v2, v9, [I

    aput v15, v2, v8

    .line 89
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    .line 90
    :cond_12
    aget-byte v5, v1, v2

    and-int/2addr v5, v7

    if-ne v5, v10, :cond_13

    new-array v2, v9, [I

    aput v14, v2, v8

    .line 91
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_13
    new-array v5, v9, [I

    .line 92
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    aput v2, v5, v8

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    :goto_5
    add-int/lit8 v2, p2, 0x5

    .line 93
    aget-byte v4, v1, v2

    and-int/2addr v4, v7

    if-nez v4, :cond_14

    new-array v2, v9, [I

    aput v15, v2, v8

    .line 94
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    .line 95
    :cond_14
    aget-byte v4, v1, v2

    and-int/2addr v4, v7

    if-ne v4, v10, :cond_15

    new-array v2, v9, [I

    aput v14, v2, v8

    .line 96
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_15
    new-array v4, v9, [I

    .line 97
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    aput v2, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_16
    add-int/lit8 v2, p2, 0x4

    .line 98
    aget-byte v5, v1, v2

    and-int/2addr v5, v7

    if-nez v5, :cond_17

    new-array v2, v9, [I

    aput v15, v2, v8

    .line 99
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    .line 100
    :cond_17
    aget-byte v5, v1, v2

    and-int/2addr v5, v7

    if-ne v5, v10, :cond_18

    new-array v2, v9, [I

    aput v14, v2, v8

    .line 101
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_18
    new-array v5, v9, [I

    .line 102
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    aput v2, v5, v8

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    :goto_6
    add-int/lit8 v2, p2, 0x5

    .line 103
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    if-nez v3, :cond_19

    new-array v2, v9, [I

    aput v15, v2, v8

    .line 104
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    .line 105
    :cond_19
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    if-ne v3, v10, :cond_1a

    new-array v2, v9, [I

    aput v14, v2, v8

    .line 106
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_1a
    new-array v3, v9, [I

    .line 107
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    aput v2, v3, v8

    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :goto_7
    const/16 v2, 0x1d

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x6

    .line 108
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v9, [I

    .line 109
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 110
    aget-byte v2, v1, v2

    mul-int/lit8 v2, v2, 0xa

    add-int/lit16 v2, v2, 0x3e8

    .line 111
    invoke-static {v2}, Lu0/d;->B3(I)V

    const/16 v2, 0xd

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x8

    .line 112
    aget-byte v5, v1, v4

    const/4 v6, 0x2

    shr-int/2addr v5, v6

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 113
    aget-byte v1, v1, v4

    const/4 v3, 0x3

    shr-int/2addr v1, v3

    and-int/2addr v1, v9

    aput v1, v2, v8

    const/16 v1, 0x43

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_1b
    move v3, v6

    add-int/lit8 v2, p2, 0x2

    .line 114
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 115
    aget-byte v1, v1, v4

    and-int/2addr v2, v7

    .line 116
    iput v2, v0, Lk0/ql;->f:I

    move v2, v8

    .line 117
    :goto_8
    iget-object v3, v0, Lk0/ql;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1d

    .line 118
    iget v4, v0, Lk0/ql;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v8

    if-ne v4, v5, :cond_1c

    if-eqz v4, :cond_1d

    .line 119
    iput v2, v0, Lk0/ql;->e:I

    goto :goto_9

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 120
    :cond_1d
    :goto_9
    iget v4, v0, Lk0/ql;->f:I

    packed-switch v4, :pswitch_data_2

    and-int/2addr v1, v7

    if-ne v1, v9, :cond_26

    .line 121
    array-length v1, v3

    if-ge v2, v1, :cond_33

    .line 122
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    .line 123
    :pswitch_d
    sget v2, Lu0/b;->D:I

    if-eq v2, v9, :cond_1f

    move v2, v8

    :goto_a
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_1e

    const/4 v3, 0x3

    .line 124
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1e
    const/4 v3, 0x3

    .line 125
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :cond_1f
    move v2, v8

    :goto_b
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_20

    const/16 v3, 0x43

    .line 126
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_20
    const/16 v3, 0x43

    .line 127
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    .line 128
    :pswitch_e
    sget v2, Lu0/b;->D:I

    if-eq v2, v9, :cond_22

    move v2, v8

    :goto_c
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_21

    .line 129
    invoke-static {v13, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 130
    :cond_21
    invoke-static {v13, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :cond_22
    move v2, v8

    :goto_d
    and-int/lit16 v3, v1, 0xff

    const/16 v4, 0x44

    if-ge v2, v3, :cond_23

    .line 131
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 132
    :cond_23
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :pswitch_f
    move v2, v8

    :goto_e
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_24

    .line 133
    invoke-static {v11, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 134
    :cond_24
    invoke-static {v11, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :pswitch_10
    move v2, v8

    :goto_f
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_25

    .line 135
    invoke-static {v12, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 136
    :cond_25
    invoke-static {v12, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :cond_26
    if-nez v1, :cond_33

    .line 137
    iget v1, v0, Lk0/ql;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_27

    if-eq v1, v7, :cond_27

    .line 138
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 139
    :cond_27
    iput v7, v0, Lk0/ql;->e:I

    goto/16 :goto_13

    :cond_28
    add-int/lit8 v2, p2, 0x2

    .line 140
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v5, p2, 0x3

    .line 141
    aget-byte v1, v1, v5

    and-int/2addr v2, v7

    .line 142
    iput v2, v0, Lk0/ql;->c:I

    move v2, v8

    .line 143
    :goto_10
    iget-object v3, v0, Lk0/ql;->d:[[I

    array-length v5, v3

    if-ge v2, v5, :cond_2a

    .line 144
    iget v5, v0, Lk0/ql;->c:I

    aget-object v6, v3, v2

    aget v6, v6, v8

    if-ne v5, v6, :cond_29

    if-eqz v5, :cond_2a

    .line 145
    iput v2, v0, Lk0/ql;->b:I

    goto :goto_11

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 146
    :cond_2a
    :goto_11
    iget v5, v0, Lk0/ql;->c:I

    const/16 v6, 0x24

    if-eq v5, v6, :cond_31

    const/16 v6, 0x25

    if-eq v5, v6, :cond_2d

    and-int/2addr v1, v7

    if-ne v1, v9, :cond_2b

    .line 147
    array-length v1, v3

    if-ge v2, v1, :cond_33

    .line 148
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :cond_2b
    if-nez v1, :cond_33

    .line 149
    iget v1, v0, Lk0/ql;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_2c

    if-eq v1, v7, :cond_2c

    .line 150
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 151
    :cond_2c
    iput v7, v0, Lk0/ql;->b:I

    goto :goto_13

    .line 152
    :cond_2d
    sget v2, Lk0/nt;->a:I

    const v3, 0xf401c7

    if-eq v2, v3, :cond_2e

    and-int/2addr v1, v7

    if-ne v1, v9, :cond_33

    const/16 v1, 0x18

    .line 153
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 154
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_13

    .line 155
    :cond_2e
    iget v2, v0, Lk0/ql;->h:I

    if-eq v2, v1, :cond_33

    .line 156
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v2, 0x2

    if-ne v1, v2, :cond_30

    .line 157
    iget v2, v0, Lk0/ql;->h:I

    if-ne v2, v9, :cond_30

    .line 158
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    .line 159
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    goto :goto_12

    :cond_2f
    const/4 v2, 0x2

    if-ne v1, v2, :cond_30

    .line 160
    iget v2, v0, Lk0/ql;->h:I

    if-ne v2, v9, :cond_30

    .line 161
    invoke-static {}, Lo1/u;->z()I

    .line 162
    :cond_30
    :goto_12
    iput v1, v0, Lk0/ql;->h:I

    goto :goto_13

    :cond_31
    and-int/2addr v1, v7

    if-ne v1, v9, :cond_33

    .line 163
    sget v1, Lh0/c;->E:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_32

    if-eq v1, v4, :cond_32

    const/16 v1, 0x12

    .line 164
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 165
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_13

    :cond_32
    const/16 v1, 0x1a

    .line 166
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 167
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    :cond_33
    :goto_13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ql;->l:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ql;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/ql;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x81

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
    .locals 19

    move/from16 v0, p1

    const/16 v1, 0xe3

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v0, :cond_6

    if-eq v0, v6, :cond_5

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x6

    if-eq v0, v7, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v4, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    move-object/from16 v8, p0

    goto/16 :goto_1

    .line 1
    :cond_1
    sget v0, Lk0/nt;->U:I

    if-ne v0, v6, :cond_0

    .line 2
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    const/16 v1, 0x3e9

    aget v2, p2, v5

    invoke-static {v0, v1, v2}, Lo1/x;->x([Lo1/x;II)V

    goto :goto_0

    :cond_2
    new-array v0, v8, [I

    aput v1, v0, v5

    const/16 v1, 0x86

    aput v1, v0, v6

    aput v2, v0, v7

    .line 3
    aget v1, p2, v5

    aput v1, v0, v3

    aget v1, p2, v6

    aput v1, v0, v4

    aget v1, p2, v7

    aput v1, v0, v2

    aget v1, p2, v3

    aput v1, v0, v10

    aget v1, p2, v4

    aput v1, v0, v9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 4
    :cond_3
    aget v11, p2, v5

    aget v12, p2, v6

    aget v13, p2, v7

    aget v14, p2, v3

    aget v15, p2, v4

    aget v16, p2, v2

    aget v17, p2, v10

    aget v18, p2, v9

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v18}, Lk0/ql;->d3(IIIIIIII)V

    goto :goto_0

    :cond_4
    const/16 v0, 0xb

    new-array v0, v0, [I

    aput v1, v0, v5

    const/16 v1, 0xc6

    aput v1, v0, v6

    aput v8, v0, v7

    .line 5
    aget v1, p2, v5

    aput v1, v0, v3

    aget v1, p2, v6

    aput v1, v0, v4

    aget v1, p2, v7

    aput v1, v0, v2

    aget v1, p2, v3

    aput v1, v0, v10

    aget v1, p2, v4

    aput v1, v0, v9

    aget v1, p2, v2

    aput v1, v0, v8

    const/16 v1, 0x9

    aget v2, p2, v10

    aput v2, v0, v1

    const/16 v1, 0xa

    aget v2, p2, v9

    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 6
    aget v0, p2, v7

    and-int/lit8 v0, v0, 0xf

    aget v1, p2, v7

    shr-int/2addr v1, v4

    and-int/lit8 v1, v1, 0xf

    move-object/from16 v8, p0

    invoke-virtual {v8, v0, v1}, Lk0/ql;->e3(II)V

    goto :goto_1

    :cond_5
    move-object/from16 v8, p0

    new-array v0, v2, [I

    aput v1, v0, v5

    const/16 v1, 0x77

    aput v1, v0, v6

    aput v7, v0, v7

    .line 7
    aget v1, p2, v5

    aput v1, v0, v3

    aget v1, p2, v6

    aput v1, v0, v4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_6
    move-object/from16 v8, p0

    new-array v0, v2, [I

    aput v1, v0, v5

    const/16 v1, 0x71

    aput v1, v0, v6

    aput v7, v0, v7

    .line 8
    aget v1, p2, v5

    aput v1, v0, v3

    aget v1, p2, v6

    aput v1, v0, v4

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_1
    return-void
.end method

.method public final d3(IIIIIIII)V
    .locals 4

    .line 1
    sput p1, Lk0/ql;->w:I

    .line 2
    sput p2, Lk0/ql;->D:I

    .line 3
    sput p3, Lk0/ql;->x:I

    .line 4
    sput p4, Lk0/ql;->y:I

    .line 5
    sput p5, Lk0/ql;->z:I

    .line 6
    sput p6, Lk0/ql;->A:I

    .line 7
    sput p7, Lk0/ql;->B:I

    .line 8
    sput p8, Lk0/ql;->C:I

    const/4 p2, 0x1

    new-array p3, p2, [I

    const/4 p4, 0x0

    aput p1, p3, p4

    const/16 p1, 0x6f

    .line 9
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    new-array p1, p2, [I

    .line 10
    sget p3, Lk0/ql;->D:I

    aput p3, p1, p4

    const/16 p3, 0x70

    invoke-static {p3, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, p2, [I

    .line 11
    sget p3, Lk0/ql;->x:I

    aput p3, p1, p4

    const/16 p3, 0x71

    invoke-static {p3, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, p2, [I

    .line 12
    sget p3, Lk0/ql;->y:I

    aput p3, p1, p4

    const/16 p3, 0x72

    invoke-static {p3, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, p2, [I

    .line 13
    sget p3, Lk0/ql;->z:I

    aput p3, p1, p4

    const/16 p3, 0x73

    invoke-static {p3, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, p2, [I

    .line 14
    sget p3, Lk0/ql;->A:I

    aput p3, p1, p4

    const/16 p3, 0x74

    invoke-static {p3, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, p2, [I

    .line 15
    sget p3, Lk0/ql;->B:I

    aput p3, p1, p4

    const/16 p3, 0x75

    invoke-static {p3, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, p2, [I

    .line 16
    sget p3, Lk0/ql;->C:I

    aput p3, p1, p4

    const/16 p3, 0x76

    invoke-static {p3, p1}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xb

    new-array p1, p1, [I

    const/16 p3, 0xe3

    aput p3, p1, p4

    const/16 p3, 0xc4

    aput p3, p1, p2

    const/4 p3, 0x2

    const/16 p5, 0x8

    aput p5, p1, p3

    .line 17
    sget p6, Lk0/ql;->w:I

    const/4 p7, 0x3

    aput p6, p1, p7

    sget p6, Lk0/ql;->D:I

    const/4 p8, 0x4

    aput p6, p1, p8

    sget p6, Lk0/ql;->x:I

    const/4 v0, 0x5

    aput p6, p1, v0

    sget p6, Lk0/ql;->y:I

    const/4 v1, 0x6

    aput p6, p1, v1

    sget p6, Lk0/ql;->z:I

    const/4 v2, 0x7

    aput p6, p1, v2

    sget p6, Lk0/ql;->A:I

    aput p6, p1, p5

    sget p6, Lk0/ql;->B:I

    const/16 v3, 0x9

    aput p6, p1, v3

    sget p6, Lk0/ql;->C:I

    const/16 v3, 0xa

    aput p6, p1, v3

    invoke-static {p1}, Lz/k;->s([I)V

    .line 18
    iget-object p1, p0, Lk0/ql;->l:Lo1/g0;

    invoke-virtual {p1, p2, p4}, Lo1/g0;->b(II)I

    move-result p1

    sget p6, Lk0/ql;->w:I

    if-eq p1, p6, :cond_0

    .line 19
    iget-object p1, p0, Lk0/ql;->l:Lo1/g0;

    invoke-virtual {p1, p2, p6}, Lo1/g0;->g(II)V

    .line 20
    :cond_0
    iget-object p1, p0, Lk0/ql;->l:Lo1/g0;

    invoke-virtual {p1, v2, p4}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/ql;->D:I

    if-eq p1, p2, :cond_1

    .line 21
    iget-object p1, p0, Lk0/ql;->l:Lo1/g0;

    invoke-virtual {p1, v2, p2}, Lo1/g0;->g(II)V

    .line 22
    :cond_1
    iget-object p1, p0, Lk0/ql;->l:Lo1/g0;

    invoke-virtual {p1, p3, p4}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/ql;->x:I

    if-eq p1, p2, :cond_2

    .line 23
    iget-object p1, p0, Lk0/ql;->l:Lo1/g0;

    invoke-virtual {p1, p3, p2}, Lo1/g0;->g(II)V

    .line 24
    :cond_2
    iget-object p1, p0, Lk0/ql;->l:Lo1/g0;

    invoke-virtual {p1, p7, p4}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/ql;->y:I

    if-eq p1, p2, :cond_3

    .line 25
    iget-object p1, p0, Lk0/ql;->l:Lo1/g0;

    invoke-virtual {p1, p7, p2}, Lo1/g0;->g(II)V

    .line 26
    :cond_3
    iget-object p1, p0, Lk0/ql;->l:Lo1/g0;

    invoke-virtual {p1, p8, p4}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/ql;->z:I

    if-eq p1, p2, :cond_4

    .line 27
    iget-object p1, p0, Lk0/ql;->l:Lo1/g0;

    invoke-virtual {p1, p8, p2}, Lo1/g0;->g(II)V

    .line 28
    :cond_4
    iget-object p1, p0, Lk0/ql;->l:Lo1/g0;

    invoke-virtual {p1, v0, p4}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/ql;->A:I

    if-eq p1, p2, :cond_5

    .line 29
    iget-object p1, p0, Lk0/ql;->l:Lo1/g0;

    invoke-virtual {p1, v0, p2}, Lo1/g0;->g(II)V

    .line 30
    :cond_5
    iget-object p1, p0, Lk0/ql;->l:Lo1/g0;

    invoke-virtual {p1, v1, p4}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/ql;->B:I

    if-eq p1, p2, :cond_6

    .line 31
    iget-object p1, p0, Lk0/ql;->l:Lo1/g0;

    invoke-virtual {p1, v1, p2}, Lo1/g0;->g(II)V

    .line 32
    :cond_6
    iget-object p1, p0, Lk0/ql;->l:Lo1/g0;

    invoke-virtual {p1, p5, p4}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/ql;->C:I

    if-eq p1, p2, :cond_7

    .line 33
    iget-object p1, p0, Lk0/ql;->l:Lo1/g0;

    invoke-virtual {p1, p5, p2}, Lo1/g0;->g(II)V

    :cond_7
    return-void
.end method

.method public final e3(II)V
    .locals 2

    .line 1
    sput p1, Lk0/ql;->E:I

    .line 2
    sput p2, Lk0/ql;->F:I

    const/4 p2, 0x1

    new-array v0, p2, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0x77

    .line 3
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    new-array p1, p2, [I

    .line 4
    sget p2, Lk0/ql;->F:I

    aput p2, p1, v1

    const/16 p2, 0x78

    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    .line 5
    iget-object p1, p0, Lk0/ql;->l:Lo1/g0;

    const/16 p2, 0x9

    invoke-virtual {p1, p2, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/ql;->E:I

    if-eq p1, v0, :cond_0

    .line 6
    iget-object p1, p0, Lk0/ql;->l:Lo1/g0;

    invoke-virtual {p1, p2, v0}, Lo1/g0;->g(II)V

    .line 7
    :cond_0
    iget-object p1, p0, Lk0/ql;->l:Lo1/g0;

    const/16 p2, 0xa

    invoke-virtual {p1, p2, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/ql;->F:I

    if-eq p1, v0, :cond_1

    .line 8
    iget-object p1, p0, Lk0/ql;->l:Lo1/g0;

    invoke-virtual {p1, p2, v0}, Lo1/g0;->g(II)V

    :cond_1
    return-void
.end method
