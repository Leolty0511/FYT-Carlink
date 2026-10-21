.class public Lk0/a4;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static o:I


# instance fields
.field public final b:[I

.field public c:Lo1/g0;

.field public final d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:[[I

.field public i:B

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Z

.field public n:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lk0/a4;->b:[I

    .line 3
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/a4;->c:Lo1/g0;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lk0/a4;->d:I

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lk0/a4;->e:I

    .line 6
    iput v1, p0, Lk0/a4;->g:I

    const/16 v2, 0xa

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 7
    fill-array-data v4, :array_1

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_3

    aput-object v0, v2, v3

    new-array v0, v3, [I

    fill-array-data v0, :array_4

    const/4 v4, 0x3

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_5

    const/4 v4, 0x4

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_6

    const/4 v4, 0x5

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_7

    const/4 v4, 0x6

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_8

    const/4 v4, 0x7

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_9

    const/16 v4, 0x8

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_a

    const/16 v3, 0x9

    aput-object v0, v2, v3

    iput-object v2, p0, Lk0/a4;->h:[[I

    .line 8
    iput-byte v1, p0, Lk0/a4;->i:B

    .line 9
    new-instance v0, Lk0/a4$a;

    invoke-direct {v0, p0}, Lk0/a4$a;-><init>(Lk0/a4;)V

    iput-object v0, p0, Lk0/a4;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/a4$b;

    invoke-direct {v0, p0}, Lk0/a4$b;-><init>(Lk0/a4;)V

    iput-object v0, p0, Lk0/a4;->k:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/a4$c;

    invoke-direct {v0, p0}, Lk0/a4$c;-><init>(Lk0/a4;)V

    iput-object v0, p0, Lk0/a4;->l:Ljava/lang/Runnable;

    .line 12
    iput-boolean v1, p0, Lk0/a4;->m:Z

    .line 13
    new-instance v0, Lk0/a4$d;

    invoke-direct {v0, p0}, Lk0/a4$d;-><init>(Lk0/a4;)V

    iput-object v0, p0, Lk0/a4;->n:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x258
        0x64
        0x78
        0xc8
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
        0x3e8
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x8
        0xd
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
        0x17
        0x5
    .end array-data

    :array_a
    .array-data 4
        0x30
        0xc
    .end array-data
.end method

.method public static synthetic b3(Lk0/a4;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/a4;->j:Ljava/lang/Runnable;

    return-object p0
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
    iget-object v0, p0, Lk0/a4;->c:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    .line 4
    iget-object v0, p0, Lk0/a4;->c:Lo1/g0;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/a4;->c3(I)V

    .line 5
    iget-object v0, p0, Lk0/a4;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/a4;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/a4;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/a4;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/a4;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/a4;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/a4;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/a4;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 15

    move-object v0, p0

    .line 1
    aget-byte v1, p1, p2

    const/16 v2, -0x30

    const/16 v3, 0x64

    const v4, 0xff00

    const/4 v5, 0x2

    const/16 v6, 0x8

    const/4 v7, 0x3

    const/16 v8, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v1, v2, :cond_10

    const/16 v2, 0x20

    const/4 v11, 0x5

    const/4 v12, 0x4

    if-eq v1, v2, :cond_7

    const/16 v2, 0x29

    if-eq v1, v2, :cond_6

    const/16 v2, 0x33

    if-eq v1, v2, :cond_10

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 4
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 5
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 6
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 7
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 8
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 9
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 10
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v10

    aput v1, v2, v9

    .line 11
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    .line 12
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_17

    add-int/lit8 v1, p2, 0x2

    .line 13
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    invoke-virtual {p0, v1}, Lk0/a4;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->D2(I)V

    add-int/lit8 v1, p2, 0x3

    .line 14
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    invoke-virtual {p0, v1}, Lk0/a4;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->E2(I)V

    add-int/lit8 v1, p2, 0x4

    .line 15
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    invoke-virtual {p0, v1}, Lk0/a4;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->F2(I)V

    add-int/lit8 v1, p2, 0x5

    .line 16
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    invoke-virtual {p0, v1}, Lk0/a4;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_6

    .line 17
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_17

    add-int/lit8 v1, p2, 0x2

    .line 18
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    invoke-virtual {p0, v1}, Lk0/a4;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->R2(I)V

    add-int/lit8 v1, p2, 0x3

    .line 19
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    invoke-virtual {p0, v1}, Lk0/a4;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->S2(I)V

    add-int/lit8 v1, p2, 0x4

    .line 20
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    invoke-virtual {p0, v1}, Lk0/a4;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->T2(I)V

    add-int/lit8 v1, p2, 0x5

    .line 21
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    invoke-virtual {p0, v1}, Lk0/a4;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_6

    :cond_1
    add-int/lit8 v1, p2, 0x2

    .line 22
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    if-eq v1, v10, :cond_4

    if-eq v1, v7, :cond_3

    if-eq v1, v6, :cond_2

    goto/16 :goto_6

    :cond_2
    add-int/lit8 v1, p2, 0x3

    .line 23
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x4

    .line 24
    aget-byte v2, p1, v2

    const/16 v3, 0x21c

    .line 25
    invoke-static {v1, v2, v10, v3}, Lk0/qt;->i(IIZI)V

    .line 26
    iput-boolean v10, v0, Lk0/a4;->m:Z

    goto/16 :goto_6

    :cond_3
    add-int/lit8 v1, p2, 0x4

    .line 27
    aget-byte v1, p1, v1

    shl-int/2addr v1, v6

    and-int/2addr v1, v4

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    or-int/2addr v1, v2

    div-int/2addr v1, v3

    const/16 v2, 0x407

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 28
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 29
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v5, [I

    aput v10, v4, v9

    aput v1, v4, v10

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_4
    const-string v1, "persist.fyt.leftrightlighttype"

    .line 30
    invoke-static {v1, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 v1, p2, 0x3

    .line 31
    aget-byte v2, p1, v1

    shr-int/2addr v2, v7

    and-int/2addr v2, v10

    aget-byte v1, p1, v1

    shr-int/2addr v1, v12

    and-int/2addr v1, v10

    invoke-static {v2, v1, v9}, Ll0/c0;->b(III)V

    goto/16 :goto_6

    :cond_5
    add-int/lit8 v1, p2, 0x3

    .line 32
    aget-byte v2, p1, v1

    shr-int/2addr v2, v7

    and-int/2addr v2, v10

    aget-byte v1, p1, v1

    shr-int/2addr v1, v12

    and-int/2addr v1, v10

    invoke-static {v2, v1, v9}, Ll0/c0;->a(III)V

    goto/16 :goto_6

    .line 33
    :cond_6
    iget-boolean v1, v0, Lk0/a4;->m:Z

    if-nez v1, :cond_17

    add-int/lit8 v1, p2, 0x2

    .line 34
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    const/16 v3, 0x1200

    invoke-static {v1, v2, v10, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_6

    :cond_7
    add-int/lit8 v1, p2, 0x2

    .line 35
    aget-byte v2, p1, v1

    add-int/lit8 v3, p2, 0x3

    .line 36
    aget-byte v4, p1, v3

    const/16 v5, 0x18

    if-ne v2, v5, :cond_9

    if-ne v4, v10, :cond_9

    .line 37
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.syu.canbus"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 38
    invoke-static {}, Lo1/u;->k()V

    goto :goto_1

    .line 39
    :cond_8
    invoke-static {}, Lo1/u;->v()I

    .line 40
    :cond_9
    :goto_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 41
    aget-byte v1, p1, v1

    .line 42
    aget-byte v2, p1, v3

    and-int/2addr v1, v8

    .line 43
    iput v1, v0, Lk0/a4;->g:I

    move v1, v9

    .line 44
    :goto_2
    iget-object v3, v0, Lk0/a4;->h:[[I

    array-length v4, v3

    if-ge v1, v4, :cond_b

    .line 45
    iget v4, v0, Lk0/a4;->g:I

    aget-object v5, v3, v1

    aget v5, v5, v9

    if-ne v4, v5, :cond_a

    if-eqz v4, :cond_b

    .line 46
    iput v1, v0, Lk0/a4;->f:I

    goto :goto_3

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 47
    :cond_b
    :goto_3
    iget v4, v0, Lk0/a4;->g:I

    const/16 v5, 0xa

    if-eq v4, v5, :cond_e

    and-int/2addr v2, v8

    if-eqz v2, :cond_c

    .line 48
    array-length v2, v3

    if-ge v1, v2, :cond_17

    .line 49
    iget-byte v2, v0, Lk0/a4;->i:B

    if-nez v2, :cond_17

    add-int/2addr v2, v10

    int-to-byte v2, v2

    .line 50
    iput-byte v2, v0, Lk0/a4;->i:B

    .line 51
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 52
    iget-object v1, v0, Lk0/a4;->j:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 53
    :cond_c
    iget v1, v0, Lk0/a4;->f:I

    array-length v2, v3

    if-ge v1, v2, :cond_d

    if-eq v1, v8, :cond_d

    .line 54
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 55
    iget-object v1, v0, Lk0/a4;->j:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 56
    iput-byte v9, v0, Lk0/a4;->i:B

    .line 57
    :cond_d
    iput v8, v0, Lk0/a4;->f:I

    goto/16 :goto_6

    :cond_e
    and-int/lit16 v1, v2, 0xff

    if-ne v1, v10, :cond_17

    .line 58
    sget v1, Lh0/c;->E:I

    if-eq v1, v7, :cond_f

    if-eq v1, v12, :cond_f

    if-eq v1, v11, :cond_f

    const/4 v1, 0x6

    .line 59
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 60
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    :cond_f
    const/16 v1, 0x1a

    .line 61
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 62
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    :cond_10
    add-int/lit8 v1, p2, 0x2

    .line 63
    aget-byte v1, p1, v1

    const/16 v2, 0x68

    const/high16 v11, 0xff0000

    const/16 v12, 0xb

    if-eq v1, v10, :cond_14

    if-eq v1, v5, :cond_11

    goto/16 :goto_6

    :cond_11
    const/16 v1, 0x6e

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x3

    .line 64
    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x10

    and-int/2addr v5, v11

    add-int/lit8 v13, p2, 0x4

    aget-byte v13, p1, v13

    shl-int/2addr v13, v6

    and-int/2addr v13, v4

    or-int/2addr v5, v13

    add-int/lit8 v13, p2, 0x5

    aget-byte v13, p1, v13

    and-int/2addr v13, v8

    or-int/2addr v5, v13

    aput v5, v3, v9

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6f

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x6

    .line 65
    aget-byte v5, p1, v5

    shl-int/2addr v5, v6

    and-int/2addr v5, v4

    add-int/lit8 v13, p2, 0x7

    aget-byte v13, p1, v13

    and-int/2addr v13, v8

    or-int/2addr v5, v13

    aput v5, v3, v9

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x70

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x8

    .line 66
    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x10

    and-int/2addr v5, v11

    add-int/lit8 v13, p2, 0x9

    aget-byte v13, p1, v13

    shl-int/2addr v13, v6

    and-int/2addr v13, v4

    or-int/2addr v5, v13

    add-int/lit8 v13, p2, 0xa

    aget-byte v13, p1, v13

    and-int/2addr v13, v8

    or-int/2addr v5, v13

    aput v5, v3, v9

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x71

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0xb

    .line 67
    aget-byte v5, p1, v5

    shl-int/2addr v5, v6

    and-int/2addr v5, v4

    add-int/lit8 v13, p2, 0xc

    aget-byte v13, p1, v13

    and-int/2addr v13, v8

    or-int/2addr v5, v13

    aput v5, v3, v9

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x72

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0xd

    .line 68
    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x10

    and-int/2addr v5, v11

    add-int/lit8 v11, p2, 0xe

    aget-byte v11, p1, v11

    shl-int/2addr v11, v6

    and-int/2addr v11, v4

    or-int/2addr v5, v11

    add-int/lit8 v11, p2, 0xf

    aget-byte v11, p1, v11

    and-int/2addr v11, v8

    or-int/2addr v5, v11

    aput v5, v3, v9

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x73

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x10

    .line 69
    aget-byte v5, p1, v5

    shl-int/2addr v5, v6

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x11

    aget-byte v5, p1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x12

    .line 70
    aget-byte v1, p1, v1

    new-array v3, v10, [I

    and-int/lit8 v4, v1, 0x3

    aput v4, v3, v9

    .line 71
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x2

    and-int/2addr v4, v7

    aput v4, v3, v9

    .line 72
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v7

    aput v4, v3, v9

    .line 73
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 74
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v10, [I

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v10

    aput v1, v3, v9

    .line 75
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x13

    .line 76
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    if-gez v1, :cond_12

    move v12, v9

    goto :goto_4

    :cond_12
    if-le v1, v12, :cond_13

    goto :goto_4

    :cond_13
    move v12, v1

    :goto_4
    const/16 v1, 0x6d

    new-array v2, v10, [I

    .line 77
    iget-object v3, v0, Lk0/a4;->b:[I

    aget v3, v3, v12

    aput v3, v2, v9

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_14
    const/16 v1, 0x62

    new-array v5, v10, [I

    add-int/lit8 v13, p2, 0x3

    .line 78
    aget-byte v13, p1, v13

    and-int/2addr v13, v8

    aput v13, v5, v9

    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x63

    new-array v5, v10, [I

    add-int/lit8 v13, p2, 0x4

    .line 79
    aget-byte v13, p1, v13

    shl-int/2addr v13, v6

    and-int/2addr v13, v4

    add-int/lit8 v14, p2, 0x5

    aget-byte v14, p1, v14

    and-int/2addr v14, v8

    or-int/2addr v13, v14

    aput v13, v5, v9

    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    add-int/lit8 v5, p2, 0x6

    .line 80
    aget-byte v5, p1, v5

    shl-int/2addr v5, v6

    and-int/2addr v5, v4

    add-int/lit8 v13, p2, 0x7

    aget-byte v13, p1, v13

    and-int/2addr v13, v8

    or-int/2addr v5, v13

    aput v5, v1, v9

    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x65

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x8

    .line 81
    aget-byte v5, p1, v5

    shl-int/2addr v5, v6

    and-int/2addr v5, v4

    add-int/lit8 v13, p2, 0x9

    aget-byte v13, p1, v13

    and-int/2addr v13, v8

    or-int/2addr v5, v13

    aput v5, v3, v9

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x66

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0xa

    .line 82
    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x10

    and-int/2addr v5, v11

    add-int/lit8 v11, p2, 0xb

    aget-byte v11, p1, v11

    shl-int/2addr v11, v6

    and-int/2addr v11, v4

    or-int/2addr v5, v11

    add-int/lit8 v11, p2, 0xc

    aget-byte v11, p1, v11

    and-int/2addr v11, v8

    or-int/2addr v5, v11

    aput v5, v3, v9

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x67

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0xd

    .line 83
    aget-byte v5, p1, v5

    shl-int/2addr v5, v6

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xe

    aget-byte v5, p1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0xf

    .line 84
    aget-byte v1, p1, v1

    new-array v3, v10, [I

    and-int/lit8 v4, v1, 0x3

    aput v4, v3, v9

    .line 85
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x2

    and-int/2addr v4, v7

    aput v4, v3, v9

    .line 86
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v7

    aput v4, v3, v9

    .line 87
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 88
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v10, [I

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v10

    aput v1, v3, v9

    .line 89
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x10

    .line 90
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    if-gez v1, :cond_15

    move v12, v9

    goto :goto_5

    :cond_15
    if-le v1, v12, :cond_16

    goto :goto_5

    :cond_16
    move v12, v1

    :goto_5
    const/16 v1, 0x6d

    new-array v2, v10, [I

    .line 91
    iget-object v3, v0, Lk0/a4;->b:[I

    aget v3, v3, v12

    aput v3, v2, v9

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :cond_17
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/a4;->c:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/a4;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/a4;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/a4;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/a4;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/a4;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/a4;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/a4;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/a4;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x76

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

    const/16 p3, 0x64

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eq p1, p3, :cond_1

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2, p4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Lk0/a4;->c3(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    array-length p1, p2

    if-lez p1, :cond_2

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p3, 0xe3

    aput p3, p1, v0

    const/16 p3, -0x70

    aput p3, p1, p4

    const/4 p3, 0x2

    aput p3, p1, p3

    const/4 p3, 0x3

    const/16 p4, 0x33

    aput p4, p1, p3

    const/4 p3, 0x4

    .line 4
    aget p2, p2, v0

    int-to-byte p2, p2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a3(I)I
    .locals 4

    const/16 v0, 0xf

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_3

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0
.end method

.method public final c3(I)V
    .locals 4

    .line 1
    sput p1, Lk0/a4;->o:I

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-array p1, v0, [I

    .line 2
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    new-array p1, v0, [I

    .line 3
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    new-array p1, v0, [I

    .line 4
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    const/16 p1, 0x3f5

    new-array v0, v1, [I

    .line 5
    sget v2, Lk0/a4;->o:I

    const/4 v3, 0x0

    aput v2, v0, v3

    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 6
    iget-object p1, p0, Lk0/a4;->c:Lo1/g0;

    invoke-virtual {p1, v1, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/a4;->o:I

    if-eq p1, v0, :cond_3

    .line 7
    iget-object p1, p0, Lk0/a4;->c:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x2
        0x40
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x2
        0x40
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc6
        0x2
        0x40
        0x2
    .end array-data
.end method
