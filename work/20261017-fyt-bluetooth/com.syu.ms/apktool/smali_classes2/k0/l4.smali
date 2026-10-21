.class public Lk0/l4;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static m:I = 0x1


# instance fields
.field public b:Lo1/g0;

.field public final c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:I

.field public h:Landroid/os/Handler;

.field public i:B

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    .line 2
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/l4;->b:Lo1/g0;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lk0/l4;->c:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lk0/l4;->e:I

    const/4 v2, 0x6

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_0

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    aput-object v0, v2, v3

    new-array v0, v3, [I

    fill-array-data v0, :array_3

    const/4 v1, 0x3

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_4

    const/4 v4, 0x4

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_5

    const/4 v3, 0x5

    aput-object v0, v2, v3

    iput-object v2, p0, Lk0/l4;->f:[[I

    .line 6
    iput v1, p0, Lk0/l4;->g:I

    .line 7
    new-instance v0, Lk0/l4$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lk0/l4$a;-><init>(Lk0/l4;Landroid/os/Looper;)V

    iput-object v0, p0, Lk0/l4;->h:Landroid/os/Handler;

    .line 8
    iput-byte v3, p0, Lk0/l4;->i:B

    .line 9
    new-instance v0, Lk0/l4$b;

    invoke-direct {v0, p0}, Lk0/l4$b;-><init>(Lk0/l4;)V

    iput-object v0, p0, Lk0/l4;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/l4$c;

    invoke-direct {v0, p0}, Lk0/l4$c;-><init>(Lk0/l4;)V

    iput-object v0, p0, Lk0/l4;->k:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/l4$d;

    invoke-direct {v0, p0}, Lk0/l4$d;-><init>(Lk0/l4;)V

    iput-object v0, p0, Lk0/l4;->l:Ljava/lang/Runnable;

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
.end method

.method public static synthetic d3(Lk0/l4;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/l4;->k:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic e3(Lk0/l4;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/l4;->b:Lo1/g0;

    return-object p0
.end method

.method public static synthetic f3(Lk0/l4;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/l4;->h3(I)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 5

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

    const/16 v2, 0x67

    const/4 v3, 0x3

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v4

    if-eqz p1, :cond_1

    const/16 p1, 0xe

    .line 4
    invoke-virtual {p0, p1}, Lk0/l4;->c3(I)V

    goto/16 :goto_0

    :cond_1
    const/16 p1, 0xf

    .line 5
    invoke-virtual {p0, p1}, Lk0/l4;->c3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v4

    if-eqz p1, :cond_2

    const/16 p1, 0xc

    .line 7
    invoke-virtual {p0, p1}, Lk0/l4;->c3(I)V

    goto/16 :goto_0

    :cond_2
    const/16 p1, 0xd

    .line 8
    invoke-virtual {p0, p1}, Lk0/l4;->c3(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget p1, p1, v4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x7

    .line 10
    invoke-virtual {p0, p1}, Lk0/l4;->c3(I)V

    goto/16 :goto_0

    :cond_3
    const/4 p1, 0x6

    .line 11
    invoke-virtual {p0, p1}, Lk0/l4;->c3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    aget v0, p1, v4

    if-ne v0, v4, :cond_4

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    shr-int/2addr p1, v1

    and-int/2addr p1, v3

    if-ne p1, v4, :cond_9

    .line 14
    invoke-virtual {p0, v3}, Lk0/l4;->c3(I)V

    goto/16 :goto_0

    .line 15
    :cond_4
    aget p1, p1, v4

    if-nez p1, :cond_9

    .line 16
    sget-object p1, Lk0/nt;->g:[I

    aget v0, p1, v2

    shr-int/2addr v0, v1

    and-int/2addr v0, v3

    if-eq v0, v1, :cond_5

    aget p1, p1, v2

    shr-int/2addr p1, v1

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_9

    .line 17
    :cond_5
    invoke-virtual {p0, v3}, Lk0/l4;->c3(I)V

    goto :goto_0

    .line 18
    :pswitch_5
    aget p1, p1, v4

    const/4 v0, 0x5

    if-eqz p1, :cond_6

    .line 19
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    shr-int/2addr p1, v0

    and-int/2addr p1, v4

    if-nez p1, :cond_9

    .line 20
    invoke-virtual {p0, v0}, Lk0/l4;->c3(I)V

    goto :goto_0

    .line 21
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    shr-int/2addr p1, v0

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_9

    .line 22
    invoke-virtual {p0, v0}, Lk0/l4;->c3(I)V

    goto :goto_0

    .line 23
    :pswitch_6
    aget p1, p1, v4

    const/16 v0, 0x68

    if-eqz p1, :cond_7

    .line 24
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    and-int/2addr p1, v4

    if-nez p1, :cond_9

    .line 25
    invoke-virtual {p0, v4}, Lk0/l4;->c3(I)V

    goto :goto_0

    .line 26
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_9

    .line 27
    invoke-virtual {p0, v4}, Lk0/l4;->c3(I)V

    goto :goto_0

    .line 28
    :pswitch_7
    aget p1, p1, v4

    const/16 v0, 0x8

    if-eqz p1, :cond_8

    .line 29
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    and-int/2addr p1, v3

    if-ne p1, v4, :cond_9

    .line 30
    invoke-virtual {p0, v0}, Lk0/l4;->c3(I)V

    goto :goto_0

    .line 31
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    and-int/2addr p1, v3

    if-ne p1, v1, :cond_9

    .line 32
    invoke-virtual {p0, v0}, Lk0/l4;->c3(I)V

    :cond_9
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public S2()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/l4;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/l4;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    sget v0, Lk0/nt;->a:I

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lk0/l4;->g:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const-string v5, "com.syu.canbus"

    const/4 v6, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lk0/l4;->b:Lo1/g0;

    invoke-virtual {v0, v6, v6}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/l4;->h3(I)V

    .line 7
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 8
    iput v6, v0, Lk0/mt;->g:I

    .line 9
    iput v6, v0, Lk0/mt;->i:I

    new-array v1, v4, [I

    .line 10
    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Lk0/l4;->b:Lo1/g0;

    invoke-virtual {v0, v6, v6}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/l4;->h3(I)V

    .line 12
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_2

    .line 13
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 14
    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 16
    iput v6, v0, Lk0/mt;->i:I

    .line 17
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v6, v0, Lk0/mt;->g:I

    new-array v1, v4, [I

    .line 18
    fill-array-data v1, :array_1

    iput-object v1, v0, Lk0/mt;->m:[I

    .line 19
    :goto_1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/l4;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x22
        0x23
        0x25
        0x26
        0x27
        0x29
        0x2a
    .end array-data

    :array_1
    .array-data 4
        0x22
        0x23
        0x25
        0x26
        0x27
        0x29
        0x2a
    .end array-data
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0x4f

    const/16 v4, 0x8

    const/4 v5, 0x5

    const/4 v6, 0x7

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/16 v10, 0xff

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v2, v3, :cond_1a

    const/16 v3, -0x10

    if-eq v2, v3, :cond_16

    if-eq v2, v9, :cond_14

    const/4 v3, 0x6

    if-eq v2, v3, :cond_7

    const/16 v3, 0x76

    if-eq v2, v3, :cond_2

    const/16 v3, 0x32

    if-eq v2, v3, :cond_1

    const/16 v3, 0x33

    if-eq v2, v3, :cond_0

    goto/16 :goto_c

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x1e50

    const/16 v4, 0x1478

    invoke-static {v2, v1, v3, v12, v4}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_c

    .line 3
    :cond_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_21

    add-int/lit8 v2, p2, 0x2

    .line 4
    aget-byte v3, v1, v2

    invoke-virtual {v0, v3}, Lk0/l4;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->D2(I)V

    .line 5
    aget-byte v2, v1, v2

    invoke-virtual {v0, v2}, Lk0/l4;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 6
    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0x7f

    invoke-virtual {v0, v3}, Lk0/l4;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->F2(I)V

    .line 7
    aget-byte v2, v1, v2

    and-int/lit8 v2, v2, 0x7f

    invoke-virtual {v0, v2}, Lk0/l4;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->G2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 8
    aget-byte v2, v1, v2

    invoke-virtual {v0, v2}, Lk0/l4;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 9
    aget-byte v2, v1, v2

    and-int/lit8 v2, v2, 0x7f

    invoke-virtual {v0, v2}, Lk0/l4;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 10
    aget-byte v2, v1, v2

    invoke-virtual {v0, v2}, Lk0/l4;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 11
    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x7f

    invoke-virtual {v0, v1}, Lk0/l4;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_c

    :cond_2
    const/16 v2, 0x62

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x2

    .line 12
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 13
    sget v2, Ln0/j4;->b:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    iget v2, v0, Lk0/l4;->g:I

    if-ne v2, v7, :cond_6

    add-int/lit8 v2, p2, 0x5

    .line 15
    aget-byte v2, v1, v2

    if-eq v2, v12, :cond_5

    if-ne v2, v9, :cond_4

    goto :goto_0

    .line 16
    :cond_4
    invoke-static {}, Lk0/qt;->f()V

    goto :goto_1

    .line 17
    :cond_5
    :goto_0
    invoke-static {}, Lk0/qt;->t()V

    .line 18
    :cond_6
    :goto_1
    invoke-static/range {p1 .. p3}, Lo1/b0;->h([BII)V

    goto/16 :goto_c

    :cond_7
    add-int/lit8 v2, p2, 0x2

    .line 19
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 20
    aget-byte v1, v1, v3

    and-int/2addr v2, v10

    .line 21
    iput v2, v0, Lk0/l4;->e:I

    move v2, v11

    .line 22
    :goto_2
    iget-object v3, v0, Lk0/l4;->f:[[I

    array-length v5, v3

    if-ge v2, v5, :cond_9

    .line 23
    iget v5, v0, Lk0/l4;->e:I

    aget-object v13, v3, v2

    aget v13, v13, v11

    if-ne v5, v13, :cond_8

    if-eqz v5, :cond_9

    .line 24
    iput v2, v0, Lk0/l4;->d:I

    goto :goto_3

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 25
    :cond_9
    :goto_3
    iget v5, v0, Lk0/l4;->e:I

    if-eq v5, v12, :cond_12

    if-eq v5, v9, :cond_10

    if-eq v5, v8, :cond_e

    if-eq v5, v7, :cond_c

    and-int/2addr v1, v10

    if-ne v1, v12, :cond_a

    .line 26
    array-length v1, v3

    if-ge v2, v1, :cond_21

    .line 27
    aget-object v1, v3, v2

    aget v1, v1, v12

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :cond_a
    if-nez v1, :cond_21

    .line 28
    iget v1, v0, Lk0/l4;->d:I

    array-length v2, v3

    if-ge v1, v2, :cond_b

    if-eq v1, v10, :cond_b

    .line 29
    aget-object v1, v3, v1

    aget v1, v1, v12

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 30
    :cond_b
    iput v10, v0, Lk0/l4;->d:I

    goto/16 :goto_c

    :cond_c
    move v2, v11

    :goto_4
    and-int/lit16 v3, v1, 0xff

    const/16 v4, 0x1e

    if-ge v2, v3, :cond_d

    .line 31
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 32
    :cond_d
    invoke-static {v4, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :cond_e
    move v2, v11

    :goto_5
    and-int/lit16 v3, v1, 0xff

    const/16 v4, 0x1f

    if-ge v2, v3, :cond_f

    .line 33
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 34
    :cond_f
    invoke-static {v4, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :cond_10
    move v2, v11

    :goto_6
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_11

    .line 35
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 36
    :cond_11
    invoke-static {v4, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :cond_12
    move v2, v11

    :goto_7
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_13

    .line 37
    invoke-static {v6, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 38
    :cond_13
    invoke-static {v6, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 39
    :cond_14
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_21

    add-int/lit8 v2, p2, 0x7

    .line 40
    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xff

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_15

    not-int v1, v2

    add-int/2addr v1, v12

    and-int/lit8 v1, v1, 0x7f

    mul-int/lit8 v1, v1, 0xa

    rsub-int v1, v1, 0x3e8

    goto :goto_8

    :cond_15
    mul-int/lit8 v2, v2, 0xa

    add-int/lit16 v1, v2, 0x3e8

    .line 41
    :goto_8
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_c

    :cond_16
    add-int/lit8 v2, p2, 0x2

    .line 42
    aget-byte v2, v1, v2

    if-eq v2, v12, :cond_19

    if-eq v2, v9, :cond_19

    if-eq v2, v8, :cond_19

    if-eq v2, v7, :cond_19

    if-eq v2, v5, :cond_17

    goto/16 :goto_c

    :cond_17
    add-int/lit8 v2, p2, 0x3

    .line 43
    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x7f

    const/16 v2, 0x6b

    if-ne v1, v12, :cond_18

    new-array v1, v12, [I

    aput v12, v1, v11

    .line 44
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_18
    new-array v1, v12, [I

    aput v11, v1, v11

    .line 45
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    .line 46
    :cond_19
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x3

    invoke-direct {v2, v1, v3, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_1a
    add-int/lit8 v2, p2, 0x2

    .line 47
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 48
    aget-byte v13, v1, v3

    add-int/lit8 v14, p2, 0x4

    .line 49
    aget-byte v15, v1, v14

    add-int/lit8 v16, p2, 0x5

    .line 50
    aget-byte v5, v1, v16

    add-int/lit8 v17, p2, 0x6

    .line 51
    aget-byte v7, v1, v17

    add-int/lit8 v18, p2, 0x7

    .line 52
    aget-byte v9, v1, v18

    add-int/lit8 v4, p2, 0x8

    .line 53
    aget-byte v4, v1, v4

    const/16 v8, 0x64

    new-array v6, v12, [I

    and-int/2addr v2, v10

    aput v2, v6, v11

    .line 54
    invoke-static {v8, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v6, v12, [I

    and-int/lit16 v8, v13, 0xff

    aput v8, v6, v11

    .line 55
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v6, v12, [I

    and-int/lit16 v8, v15, 0xff

    aput v8, v6, v11

    .line 56
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v6, v12, [I

    and-int/2addr v5, v10

    aput v5, v6, v11

    .line 57
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v5, v12, [I

    and-int/lit16 v6, v7, 0xff

    aput v6, v5, v11

    .line 58
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v5, v12, [I

    and-int/lit16 v6, v9, 0xff

    aput v6, v5, v11

    .line 59
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v5, v12, [I

    and-int/2addr v4, v10

    aput v4, v5, v11

    .line 60
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v12, [I

    .line 61
    aget-byte v5, v1, v3

    shr-int/2addr v5, v11

    const/4 v6, 0x7

    and-int/2addr v5, v6

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 62
    aget-byte v2, v1, v3

    const/4 v4, 0x3

    shr-int/2addr v2, v4

    and-int/2addr v2, v6

    if-eq v2, v12, :cond_1f

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1e

    if-eq v2, v4, :cond_1d

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1c

    const/4 v4, 0x5

    if-eq v2, v4, :cond_1b

    move v2, v11

    move v4, v2

    :goto_9
    move v5, v4

    goto :goto_a

    :cond_1b
    move v4, v11

    move v5, v4

    move v2, v12

    goto :goto_a

    :cond_1c
    move v4, v11

    move v2, v12

    move v5, v2

    goto :goto_a

    :cond_1d
    move v2, v11

    move v4, v2

    move v5, v12

    goto :goto_a

    :cond_1e
    move v2, v11

    move v4, v12

    goto :goto_9

    :cond_1f
    move v2, v11

    move v5, v2

    move v4, v12

    :goto_a
    const/16 v6, 0x12

    new-array v7, v12, [I

    aput v2, v7, v11

    .line 63
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x41

    new-array v7, v12, [I

    aput v2, v7, v11

    .line 64
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v6, v12, [I

    aput v4, v6, v11

    .line 65
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v12, [I

    aput v5, v4, v11

    .line 66
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 67
    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/16 v4, 0x1c

    const/16 v5, 0x1b

    const/16 v6, 0x10

    if-eqz v2, :cond_20

    new-array v2, v12, [I

    .line 68
    aget-byte v3, v1, v3

    const/4 v7, 0x2

    shr-int/2addr v3, v7

    and-int/2addr v3, v6

    aget-byte v8, v1, v14

    shr-int/2addr v8, v11

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v3, v8

    aput v3, v2, v11

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    .line 69
    aget-byte v3, v1, v16

    shr-int/2addr v3, v7

    and-int/2addr v3, v6

    aget-byte v4, v1, v14

    const/4 v8, 0x4

    shr-int/2addr v4, v8

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    aput v3, v2, v11

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_20
    const/4 v7, 0x2

    new-array v2, v12, [I

    .line 70
    aget-byte v3, v1, v3

    shr-int/2addr v3, v7

    and-int/2addr v3, v6

    aget-byte v8, v1, v14

    shr-int/2addr v8, v11

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v3, v8

    aput v3, v2, v11

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    .line 71
    aget-byte v3, v1, v16

    shr-int/2addr v3, v7

    and-int/2addr v3, v6

    aget-byte v5, v1, v14

    const/4 v7, 0x4

    shr-int/2addr v5, v7

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v3, v5

    aput v3, v2, v11

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_b
    const/16 v2, 0xb

    new-array v3, v12, [I

    .line 72
    aget-byte v4, v1, v16

    shr-int/2addr v4, v11

    const/4 v5, 0x3

    and-int/2addr v4, v5

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v3, v12, [I

    .line 73
    aget-byte v4, v1, v16

    const/4 v7, 0x2

    shr-int/2addr v4, v7

    and-int/2addr v4, v5

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v3, v12, [I

    .line 74
    aget-byte v4, v1, v16

    const/4 v5, 0x4

    shr-int/2addr v4, v5

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    .line 75
    aget-byte v3, v1, v16

    const/4 v4, 0x5

    shr-int/2addr v3, v4

    and-int/2addr v3, v12

    aput v3, v2, v11

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v3, v12, [I

    .line 76
    aget-byte v1, v1, v17

    shr-int/2addr v1, v11

    and-int/2addr v1, v12

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_21
    :goto_c
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/l4;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/l4;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/l4;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/l4;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6d

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

    if-eqz p1, :cond_2

    if-eq p1, p4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    .line 1
    array-length p1, p2

    if-le p1, p4, :cond_3

    .line 2
    aget p1, p2, p4

    const/16 v0, 0xff

    if-eq p1, v0, :cond_1

    .line 3
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/l4;->h3(I)V

    goto :goto_0

    .line 4
    :cond_1
    aget p1, p2, p3

    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/l4;->g3(II)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 5
    array-length p1, p2

    if-le p1, p4, :cond_3

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 v0, 0xe3

    aput v0, p1, p3

    const/16 v0, 0x71

    aput v0, p1, p4

    const/4 v0, 0x2

    aput v0, p1, v0

    const/4 v0, 0x3

    .line 6
    aget p3, p2, p3

    aput p3, p1, v0

    const/4 p3, 0x4

    aget p2, p2, p4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a3(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/16 p1, 0xa

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    :goto_0
    return p1
.end method

.method public final b3(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    :cond_2
    :goto_0
    return v1
.end method

.method public final c3(I)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v3, 0x1

    aput v3, v1, v3

    const/4 v4, 0x0

    .line 1
    invoke-virtual {p0, v2, v1, v4, v4}, Lk0/l4;->Z0(I[I[F[Ljava/lang/String;)V

    new-array v0, v0, [I

    aput p1, v0, v2

    aput v2, v0, v3

    .line 2
    invoke-virtual {p0, v2, v0, v4, v4}, Lk0/l4;->Z0(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public g3(II)V
    .locals 5

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0xf5

    aput v3, v2, v1

    const/4 v1, 0x2

    const/16 v3, 0x8

    aput v3, v2, v1

    const/4 v1, 0x3

    aput v0, v2, v1

    const/4 v0, 0x4

    aput p1, v2, v0

    const/4 p1, 0x5

    aput p2, v2, p1

    const/4 p1, 0x6

    const/16 p2, 0x80

    aput p2, v2, p1

    const/4 p1, 0x7

    aput v4, v2, p1

    aput p2, v2, v3

    const/16 p1, 0x9

    aput v4, v2, p1

    const/16 p1, 0xa

    aput p2, v2, p1

    .line 2
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final h3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/l4;->m:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x6c

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/l4;->b:Lo1/g0;

    invoke-virtual {p1, v0, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/l4;->m:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/l4;->b:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    const/16 p1, 0xff

    .line 5
    sget v0, Lk0/l4;->m:I

    invoke-virtual {p0, p1, v0}, Lk0/l4;->g3(II)V

    return-void
.end method
