.class public Lk0/m4;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static o:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:I

.field public i:Lo1/g0;

.field public final j:I

.field public k:B

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;


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
    iput v0, p0, Lk0/m4;->c:I

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

    const/4 v8, 0x6

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v9, 0x7

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v10, 0x8

    aput-object v3, v1, v10

    iput-object v1, p0, Lk0/m4;->d:[[I

    .line 4
    iput v0, p0, Lk0/m4;->f:I

    new-array v1, v9, [[I

    new-array v3, v2, [I

    .line 5
    fill-array-data v3, :array_9

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    aput-object v3, v1, v7

    new-array v2, v2, [I

    fill-array-data v2, :array_f

    aput-object v2, v1, v8

    iput-object v1, p0, Lk0/m4;->g:[[I

    .line 6
    iput v0, p0, Lk0/m4;->h:I

    .line 7
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/m4;->i:Lo1/g0;

    .line 8
    iput v4, p0, Lk0/m4;->j:I

    .line 9
    iput-byte v7, p0, Lk0/m4;->k:B

    .line 10
    new-instance v0, Lk0/m4$a;

    invoke-direct {v0, p0}, Lk0/m4$a;-><init>(Lk0/m4;)V

    iput-object v0, p0, Lk0/m4;->l:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/m4$b;

    invoke-direct {v0, p0}, Lk0/m4$b;-><init>(Lk0/m4;)V

    iput-object v0, p0, Lk0/m4;->m:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lk0/m4$c;

    invoke-direct {v0, p0}, Lk0/m4$c;-><init>(Lk0/m4;)V

    iput-object v0, p0, Lk0/m4;->n:Ljava/lang/Runnable;

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
        0x21
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x20
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1d
    .end array-data

    :array_6
    .array-data 4
        0x7
        0xc
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x15
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_b
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_c
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_d
    .array-data 4
        0x5
        0x2
    .end array-data

    :array_e
    .array-data 4
        0x24
        0x12
    .end array-data

    :array_f
    .array-data 4
        0x25
        0x1a
    .end array-data
.end method

.method public static synthetic b3(Lk0/m4;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/m4;->m:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/m4;->i:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/m4;->i:Lo1/g0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/m4;->c3(I)V

    .line 3
    iget-object v0, p0, Lk0/m4;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v3, "com.syu.canbus"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 5
    iput v1, v0, Lk0/mt;->e:I

    .line 6
    iput v1, v0, Lk0/mt;->f:I

    .line 7
    iput v1, v0, Lk0/mt;->g:I

    .line 8
    iput v2, v0, Lk0/mt;->o:I

    .line 9
    iput v2, v0, Lk0/mt;->e:I

    .line 10
    iput v1, v0, Lk0/mt;->f:I

    .line 11
    iput v2, v0, Lk0/mt;->g:I

    .line 12
    iput v1, v0, Lk0/mt;->i:I

    .line 13
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 14
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 15
    :cond_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/m4;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 15

    move-object v0, p0

    add-int/lit8 v1, p2, 0x0

    .line 1
    aget-byte v1, p1, v1

    const/4 v2, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_20

    const/16 v6, 0x10

    const/4 v7, 0x7

    const/4 v8, 0x4

    const/4 v9, 0x2

    if-eq v1, v9, :cond_14

    if-eq v1, v2, :cond_13

    if-eq v1, v8, :cond_10

    const/4 v6, 0x6

    if-eq v1, v6, :cond_3

    const/16 v3, 0x26

    if-eq v1, v3, :cond_2

    const/16 v3, 0x3b

    if-eq v1, v3, :cond_0

    goto/16 :goto_e

    :cond_0
    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    if-ne v1, v6, :cond_28

    add-int/lit8 v1, p2, 0x3

    .line 3
    aget-byte v1, p1, v1

    if-ne v1, v5, :cond_1

    .line 4
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto/16 :goto_e

    .line 5
    :cond_1
    invoke-static {v4}, Lk0/qt;->a(I)V

    goto/16 :goto_e

    :cond_2
    add-int/lit8 v1, p2, 0x2

    .line 6
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    const/16 v3, 0x1d97

    const/16 v5, 0x1928

    invoke-static {v1, v2, v3, v4, v5}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_e

    :cond_3
    add-int/lit8 v1, p2, 0x2

    .line 7
    aget-byte v1, p1, v1

    add-int/lit8 v6, p2, 0x3

    .line 8
    aget-byte v6, p1, v6

    and-int/2addr v1, v3

    .line 9
    iput v1, v0, Lk0/m4;->c:I

    move v1, v4

    .line 10
    :goto_0
    iget-object v10, v0, Lk0/m4;->d:[[I

    array-length v11, v10

    if-ge v1, v11, :cond_5

    .line 11
    iget v11, v0, Lk0/m4;->c:I

    aget-object v12, v10, v1

    aget v12, v12, v4

    if-ne v11, v12, :cond_4

    if-eqz v11, :cond_5

    .line 12
    iput v1, v0, Lk0/m4;->b:I

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_5
    :goto_1
    iget v11, v0, Lk0/m4;->c:I

    if-eq v11, v5, :cond_e

    if-eq v11, v9, :cond_c

    if-eq v11, v2, :cond_a

    if-eq v11, v8, :cond_8

    and-int/lit16 v2, v6, 0xff

    if-ne v2, v5, :cond_6

    .line 14
    array-length v2, v10

    if-ge v1, v2, :cond_28

    .line 15
    aget-object v1, v10, v1

    aget v1, v1, v5

    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_6
    if-nez v2, :cond_28

    .line 16
    iget v1, v0, Lk0/m4;->b:I

    array-length v2, v10

    if-ge v1, v2, :cond_7

    if-eq v1, v3, :cond_7

    .line 17
    aget-object v1, v10, v1

    aget v1, v1, v5

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 18
    :cond_7
    iput v3, v0, Lk0/m4;->b:I

    goto/16 :goto_e

    :cond_8
    move v1, v4

    :goto_2
    and-int/lit16 v2, v6, 0xff

    const/16 v7, 0x1e

    if-ge v1, v2, :cond_9

    .line 19
    invoke-static {v7, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 20
    :cond_9
    invoke-static {v7, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_a
    move v1, v4

    :goto_3
    and-int/lit16 v2, v6, 0xff

    const/16 v7, 0x1f

    if-ge v1, v2, :cond_b

    .line 21
    invoke-static {v7, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 22
    :cond_b
    invoke-static {v7, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_c
    move v1, v4

    :goto_4
    and-int/lit16 v2, v6, 0xff

    const/16 v7, 0x8

    if-ge v1, v2, :cond_d

    .line 23
    invoke-static {v7, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 24
    :cond_d
    invoke-static {v7, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_e
    move v1, v4

    :goto_5
    and-int/lit16 v2, v6, 0xff

    if-ge v1, v2, :cond_f

    .line 25
    invoke-static {v7, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 26
    :cond_f
    invoke-static {v7, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_10
    add-int/lit8 v1, p2, 0x3

    .line 27
    aget-byte v1, p1, v1

    const-string v3, "persist.syu.reversefrontdoor"

    .line 28
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_11

    new-array v3, v5, [I

    shr-int/lit8 v7, v1, 0x0

    and-int/2addr v7, v5

    aput v7, v3, v4

    .line 29
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v5, [I

    shr-int/lit8 v7, v1, 0x1

    and-int/2addr v7, v5

    aput v7, v3, v4

    .line 30
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_11
    new-array v3, v5, [I

    shr-int/lit8 v7, v1, 0x1

    and-int/2addr v7, v5

    aput v7, v3, v4

    .line 31
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v5, [I

    shr-int/lit8 v7, v1, 0x0

    and-int/2addr v7, v5

    aput v7, v3, v4

    .line 32
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    :goto_6
    new-array v3, v5, [I

    shr-int/lit8 v7, v1, 0x2

    and-int/2addr v7, v5

    aput v7, v3, v4

    .line 33
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v5

    aput v3, v2, v4

    .line 34
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v5

    aput v3, v2, v4

    const/4 v3, 0x5

    .line 35
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/2addr v1, v3

    and-int/2addr v1, v5

    aput v1, v2, v4

    .line 36
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    .line 37
    sget v1, Lk0/m4;->o:I

    if-ne v1, v5, :cond_28

    .line 38
    iget v1, v0, Lk0/m4;->h:I

    add-int/lit8 v2, p2, 0x5

    aget-byte v3, p1, v2

    if-eq v1, v3, :cond_28

    .line 39
    aget-byte v1, p1, v2

    iput v1, v0, Lk0/m4;->h:I

    if-ne v1, v6, :cond_12

    .line 40
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 41
    invoke-static {}, Lk0/qt;->t()V

    goto/16 :goto_e

    .line 42
    :cond_12
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 43
    invoke-static {}, Lk0/qt;->f()V

    goto/16 :goto_e

    .line 44
    :cond_13
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_28

    add-int/lit8 v1, p2, 0x2

    .line 45
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lk0/m4;->a3(I)I

    move-result v1

    and-int/2addr v1, v3

    invoke-static {v1}, Lu0/d;->D2(I)V

    add-int/lit8 v1, p2, 0x3

    .line 46
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lk0/m4;->a3(I)I

    move-result v1

    and-int/2addr v1, v3

    invoke-static {v1}, Lu0/d;->E2(I)V

    add-int/lit8 v1, p2, 0x4

    .line 47
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lk0/m4;->a3(I)I

    move-result v1

    and-int/2addr v1, v3

    invoke-static {v1}, Lu0/d;->F2(I)V

    add-int/lit8 v1, p2, 0x5

    .line 48
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lk0/m4;->a3(I)I

    move-result v1

    and-int/2addr v1, v3

    invoke-static {v1}, Lu0/d;->G2(I)V

    add-int/lit8 v1, p2, 0x6

    .line 49
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lk0/m4;->a3(I)I

    move-result v1

    and-int/2addr v1, v3

    invoke-static {v1}, Lu0/d;->R2(I)V

    add-int/lit8 v1, p2, 0x7

    .line 50
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lk0/m4;->a3(I)I

    move-result v1

    and-int/2addr v1, v3

    invoke-static {v1}, Lu0/d;->S2(I)V

    add-int/lit8 v1, p2, 0x8

    .line 51
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lk0/m4;->a3(I)I

    move-result v1

    and-int/2addr v1, v3

    invoke-static {v1}, Lu0/d;->T2(I)V

    add-int/lit8 v1, p2, 0x9

    .line 52
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lk0/m4;->a3(I)I

    move-result v1

    and-int/2addr v1, v3

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_e

    :cond_14
    add-int/lit8 v1, p2, 0x2

    .line 53
    aget-byte v1, p1, v1

    add-int/lit8 v3, p2, 0x5

    .line 54
    aget-byte v3, p1, v3

    add-int/lit8 v10, p2, 0x6

    .line 55
    aget-byte v10, p1, v10

    shr-int/lit8 v11, v1, 0x0

    and-int/lit8 v11, v11, 0xf

    const/16 v12, 0x15

    new-array v13, v5, [I

    aput v11, v13, v4

    .line 56
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    shr-int/2addr v1, v8

    and-int/lit8 v1, v1, 0xf

    const/16 v8, 0x14

    const/16 v11, 0x12

    const/16 v12, 0x41

    packed-switch v1, :pswitch_data_0

    new-array v1, v5, [I

    aput v4, v1, v4

    .line 57
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    aput v4, v1, v4

    .line 58
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    aput v4, v1, v4

    .line 59
    invoke-static {v12, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_0
    new-array v1, v5, [I

    aput v4, v1, v4

    .line 60
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    aput v5, v1, v4

    .line 61
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    aput v9, v1, v4

    .line 62
    invoke-static {v12, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :pswitch_1
    new-array v1, v5, [I

    aput v4, v1, v4

    .line 63
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    aput v4, v1, v4

    .line 64
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    aput v5, v1, v4

    .line 65
    invoke-static {v12, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :pswitch_2
    new-array v1, v5, [I

    aput v4, v1, v4

    .line 66
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    aput v5, v1, v4

    .line 67
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    aput v5, v1, v4

    .line 68
    invoke-static {v12, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :pswitch_3
    new-array v1, v5, [I

    aput v4, v1, v4

    .line 69
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    aput v5, v1, v4

    .line 70
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    aput v4, v1, v4

    .line 71
    invoke-static {v12, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :pswitch_4
    new-array v1, v5, [I

    aput v5, v1, v4

    .line 72
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    aput v5, v1, v4

    .line 73
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    aput v4, v1, v4

    .line 74
    invoke-static {v12, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :pswitch_5
    new-array v1, v5, [I

    aput v5, v1, v4

    .line 75
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    aput v4, v1, v4

    .line 76
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    aput v4, v1, v4

    .line 77
    invoke-static {v12, v1}, Lk0/qt;->y0(I[I)V

    :goto_7
    add-int/lit8 v1, p2, 0x3

    .line 78
    aget-byte v8, p1, v1

    add-int/lit8 v11, p2, 0x4

    .line 79
    aget-byte v13, p1, v11

    const-string v14, "persist.fyt.reversetemp"

    .line 80
    invoke-static {v14, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 81
    aget-byte v8, p1, v11

    .line 82
    aget-byte v13, p1, v1

    :cond_15
    shr-int/lit8 v1, v8, 0x0

    and-int/2addr v1, v5

    shr-int/2addr v8, v5

    and-int/lit8 v8, v8, 0x3f

    mul-int/lit8 v8, v8, 0xa

    if-ne v1, v5, :cond_16

    add-int/lit8 v8, v8, 0x5

    :cond_16
    const/16 v1, 0x1b

    new-array v11, v5, [I

    aput v8, v11, v4

    .line 83
    invoke-static {v1, v11}, Lk0/qt;->y0(I[I)V

    .line 84
    sget v1, Lk0/nt;->a:I

    const v11, 0x70097

    const/16 v14, 0x1c

    if-ne v1, v11, :cond_17

    new-array v1, v5, [I

    aput v8, v1, v4

    .line 85
    invoke-static {v14, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_17
    shr-int/lit8 v1, v13, 0x0

    and-int/2addr v1, v5

    shr-int/lit8 v8, v13, 0x1

    and-int/lit8 v8, v8, 0x3f

    mul-int/lit8 v8, v8, 0xa

    if-ne v1, v5, :cond_18

    add-int/lit8 v8, v8, 0x5

    :cond_18
    new-array v1, v5, [I

    aput v8, v1, v4

    .line 86
    invoke-static {v14, v1}, Lk0/qt;->y0(I[I)V

    :goto_8
    shr-int/lit8 v1, v3, 0x0

    and-int/2addr v1, v2

    const/16 v8, 0xb

    if-eq v1, v5, :cond_1b

    if-eq v1, v9, :cond_1a

    if-eq v1, v2, :cond_19

    new-array v1, v5, [I

    aput v4, v1, v4

    .line 87
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_19
    new-array v1, v5, [I

    aput v9, v1, v4

    .line 88
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_1a
    new-array v1, v5, [I

    aput v5, v1, v4

    .line 89
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_1b
    new-array v1, v5, [I

    aput v4, v1, v4

    .line 90
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    :goto_9
    shr-int/lit8 v1, v3, 0x2

    and-int/2addr v1, v2

    const/16 v2, 0xc

    if-eqz v1, :cond_1d

    if-eq v1, v5, :cond_1c

    if-eq v1, v9, :cond_1d

    goto :goto_a

    :cond_1c
    new-array v1, v5, [I

    aput v5, v1, v4

    .line 91
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_1d
    new-array v1, v5, [I

    aput v4, v1, v4

    .line 92
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    :goto_a
    shr-int/lit8 v1, v3, 0x4

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_1e

    new-array v1, v5, [I

    aput v5, v1, v4

    .line 93
    invoke-static {v12, v1}, Lk0/qt;->y0(I[I)V

    :cond_1e
    const/16 v1, 0xe

    new-array v2, v5, [I

    shr-int/lit8 v8, v3, 0x5

    and-int/2addr v8, v5

    aput v8, v2, v4

    .line 94
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v2, v5, [I

    shr-int/lit8 v8, v3, 0x6

    and-int/2addr v8, v5

    aput v8, v2, v4

    .line 95
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    shr-int/lit8 v2, v3, 0x7

    and-int/2addr v2, v5

    aput v2, v1, v4

    .line 96
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x35

    new-array v2, v5, [I

    shr-int/lit8 v3, v10, 0x0

    and-int/2addr v3, v5

    aput v3, v2, v4

    .line 97
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x63

    new-array v2, v5, [I

    shr-int/lit8 v3, v10, 0x1

    and-int/2addr v3, v5

    aput v3, v2, v4

    .line 98
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    .line 99
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_28

    add-int/lit8 v1, p2, 0x7

    .line 100
    aget-byte v1, p1, v1

    and-int/lit16 v2, v1, 0xff

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1f

    not-int v1, v2

    add-int/2addr v1, v5

    and-int/lit8 v1, v1, 0x7f

    mul-int/lit8 v1, v1, 0xa

    rsub-int v1, v1, 0x3e8

    goto :goto_b

    :cond_1f
    mul-int/lit8 v2, v2, 0xa

    add-int/lit16 v1, v2, 0x3e8

    .line 101
    :goto_b
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_e

    :cond_20
    add-int/lit8 v1, p2, 0x2

    .line 102
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 103
    aget-byte v2, p1, v2

    and-int/2addr v1, v3

    .line 104
    iput v1, v0, Lk0/m4;->f:I

    move v1, v4

    .line 105
    :goto_c
    iget-object v6, v0, Lk0/m4;->g:[[I

    array-length v7, v6

    if-ge v1, v7, :cond_22

    .line 106
    iget v7, v0, Lk0/m4;->f:I

    aget-object v8, v6, v1

    aget v8, v8, v4

    if-ne v7, v8, :cond_21

    if-eqz v7, :cond_22

    .line 107
    iput v1, v0, Lk0/m4;->e:I

    goto :goto_d

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 108
    :cond_22
    :goto_d
    iget v7, v0, Lk0/m4;->f:I

    const/16 v8, 0x30

    if-eq v7, v8, :cond_27

    const/16 v8, 0x31

    if-eq v7, v8, :cond_26

    packed-switch v7, :pswitch_data_1

    and-int/2addr v2, v3

    if-ne v2, v5, :cond_23

    .line 109
    array-length v2, v6

    if-ge v1, v2, :cond_28

    .line 110
    aget-object v1, v6, v1

    aget v1, v1, v5

    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_23
    if-nez v2, :cond_28

    .line 111
    iget v1, v0, Lk0/m4;->e:I

    array-length v2, v6

    if-ge v1, v2, :cond_24

    if-eq v1, v3, :cond_24

    .line 112
    aget-object v1, v6, v1

    aget v1, v1, v5

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 113
    :cond_24
    iput v3, v0, Lk0/m4;->e:I

    goto/16 :goto_e

    .line 114
    :pswitch_6
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-eqz v1, :cond_28

    and-int/lit16 v1, v2, 0xff

    if-ne v1, v5, :cond_28

    .line 115
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x254

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto :goto_e

    .line 116
    :pswitch_7
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-eqz v1, :cond_28

    and-int/lit16 v1, v2, 0xff

    if-ne v1, v5, :cond_28

    .line 117
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x253

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto :goto_e

    .line 118
    :pswitch_8
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-eqz v1, :cond_28

    and-int/lit16 v1, v2, 0xff

    if-ne v1, v5, :cond_28

    const-string v1, "com.syu.fourcamera2"

    .line 119
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 120
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x266

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto :goto_e

    .line 121
    :cond_25
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x24e

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto :goto_e

    .line 122
    :cond_26
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-eqz v1, :cond_28

    and-int/lit16 v1, v2, 0xff

    if-ne v1, v5, :cond_28

    .line 123
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x250

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto :goto_e

    .line 124
    :cond_27
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-eqz v1, :cond_28

    and-int/lit16 v1, v2, 0xff

    if-ne v1, v5, :cond_28

    .line 125
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x24f

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    :cond_28
    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/m4;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/m4;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/m4;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x64

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
    .locals 1

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 1
    array-length p1, p2

    if-lez p1, :cond_2

    .line 2
    aget p1, p2, p3

    invoke-virtual {p0, p1}, Lk0/m4;->c3(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 v0, 0xe3

    aput v0, p1, p3

    const/16 v0, -0x7d

    aput v0, p1, p4

    const/4 v0, 0x2

    aput v0, p1, v0

    const/4 v0, 0x3

    .line 3
    aget p3, p2, p3

    aput p3, p1, v0

    const/4 p3, 0x4

    aget p2, p2, p4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a3(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 p1, 0xa

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c3(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 1
    :cond_1
    :goto_0
    sput p1, Lk0/m4;->o:I

    const/16 v2, 0x62

    new-array v3, v1, [I

    aput p1, v3, v0

    .line 2
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/m4;->i:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/m4;->o:I

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lk0/m4;->i:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method
