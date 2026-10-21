.class public Lk0/cg;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static o:I

.field public static p:I

.field public static q:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Z

.field public f:B

.field public g:Ljava/lang/Runnable;

.field public h:Lo1/g0;

.field public final i:I

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:B

.field public m:I

.field public n:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/cg;->c:I

    const/16 v1, 0xe

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

    const/4 v5, 0x4

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v5, 0x5

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v6, 0x6

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v6, 0x7

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v6, 0x8

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v6, 0x9

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v6, 0xa

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v6, 0xb

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v6, 0xc

    aput-object v3, v1, v6

    new-array v2, v2, [I

    fill-array-data v2, :array_d

    const/16 v3, 0xd

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/cg;->d:[[I

    .line 4
    iput-boolean v0, p0, Lk0/cg;->e:Z

    .line 5
    iput-byte v0, p0, Lk0/cg;->f:B

    .line 6
    new-instance v1, Lk0/cg$a;

    invoke-direct {v1, p0}, Lk0/cg$a;-><init>(Lk0/cg;)V

    iput-object v1, p0, Lk0/cg;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/cg;->h:Lo1/g0;

    .line 8
    iput v4, p0, Lk0/cg;->i:I

    .line 9
    iput v0, p0, Lk0/cg;->j:I

    .line 10
    new-instance v1, Lk0/cg$b;

    invoke-direct {v1, p0}, Lk0/cg$b;-><init>(Lk0/cg;)V

    iput-object v1, p0, Lk0/cg;->k:Ljava/lang/Runnable;

    .line 11
    iput-byte v5, p0, Lk0/cg;->l:B

    .line 12
    iput v0, p0, Lk0/cg;->m:I

    .line 13
    new-instance v0, Lk0/cg$c;

    invoke-direct {v0, p0}, Lk0/cg$c;-><init>(Lk0/cg;)V

    iput-object v0, p0, Lk0/cg;->n:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x0
        -0x1
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
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x5
        0x19
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x1d
    .end array-data

    :array_7
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_9
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_a
    .array-data 4
        0x10
        0x1a
    .end array-data

    :array_b
    .array-data 4
        0x11
        0xc
    .end array-data

    :array_c
    .array-data 4
        0x12
        0x9
    .end array-data

    :array_d
    .array-data 4
        0x13
        0x26
    .end array-data
.end method

.method public static synthetic a3(Lk0/cg;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/cg;->g:Ljava/lang/Runnable;

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
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->l:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    .line 7
    iget-object v0, p0, Lk0/cg;->h:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 8
    iget-object v0, p0, Lk0/cg;->h:Lo1/g0;

    invoke-virtual {v0, v1, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/cg;->b3(I)V

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/cg;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v2, p0, Lk0/cg;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x16

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p3, v0, :cond_19

    const/16 v0, 0x26

    const/4 v4, 0x3

    if-eq p3, v0, :cond_18

    const/16 v0, 0x10

    const/16 v5, 0xb

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x2

    const/16 v9, 0xff

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    const-string v0, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v3, [I

    shr-int/lit8 v9, p3, 0x6

    and-int/2addr v9, v3

    aput v9, v0, v2

    .line 4
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v3, [I

    shr-int/lit8 v9, p3, 0x7

    and-int/2addr v9, v3

    aput v9, v0, v2

    .line 5
    invoke-static {v8, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v0, v3, [I

    shr-int/lit8 v9, p3, 0x7

    and-int/2addr v9, v3

    aput v9, v0, v2

    .line 6
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v3, [I

    shr-int/lit8 v9, p3, 0x6

    and-int/2addr v9, v3

    aput v9, v0, v2

    .line 7
    invoke-static {v8, v0}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v0, v3, [I

    shr-int/lit8 v9, p3, 0x4

    and-int/2addr v9, v3

    aput v9, v0, v2

    .line 8
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v3, [I

    shr-int/lit8 v9, p3, 0x5

    and-int/2addr v9, v3

    aput v9, v0, v2

    .line 9
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v3, [I

    shr-int/lit8 v9, p3, 0x3

    and-int/2addr v9, v3

    aput v9, v0, v2

    .line 10
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v3, [I

    shr-int/2addr p3, v8

    and-int/2addr p3, v3

    aput p3, v0, v2

    .line 11
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 12
    aget-byte p3, p1, p3

    shr-int/2addr p3, v2

    and-int/2addr p3, v3

    .line 13
    sget v0, Lk0/cg;->o:I

    if-eq v0, p3, :cond_2

    .line 14
    sput p3, Lk0/cg;->o:I

    .line 15
    sget p3, Lu0/b;->r0:I

    if-nez p3, :cond_2

    .line 16
    iget-byte p3, p0, Lk0/cg;->f:B

    if-nez p3, :cond_1

    sget p3, Lk0/cg;->o:I

    if-ne p3, v3, :cond_1

    .line 17
    iget-object p3, p0, Lk0/cg;->g:Ljava/lang/Runnable;

    invoke-static {p3}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 18
    iget-byte p3, p0, Lk0/cg;->f:B

    add-int/2addr p3, v3

    int-to-byte p3, p3

    iput-byte p3, p0, Lk0/cg;->f:B

    goto :goto_1

    .line 19
    :cond_1
    sget p3, Lk0/cg;->o:I

    if-nez p3, :cond_2

    .line 20
    iput-byte v2, p0, Lk0/cg;->f:B

    .line 21
    iget-object p3, p0, Lk0/cg;->g:Ljava/lang/Runnable;

    invoke-static {p3}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 22
    sget-object p3, La/b;->Q:Ljava/lang/String;

    invoke-static {p3}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 23
    invoke-static {}, Lo1/u;->c()V

    :cond_2
    :goto_1
    add-int/2addr p2, v1

    .line 24
    aget-byte p1, p1, p2

    shr-int/2addr p1, v6

    and-int/2addr p1, v4

    .line 25
    sget p2, Lk0/cg;->p:I

    if-eq p2, p1, :cond_1a

    .line 26
    sput p1, Lk0/cg;->p:I

    .line 27
    sget p2, Lk0/cg;->q:I

    if-ne p2, v3, :cond_1a

    if-ne p1, v8, :cond_4

    .line 28
    sget-object p1, La/b;->Q:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 29
    iput-boolean v3, p0, Lk0/cg;->e:Z

    .line 30
    invoke-static {}, Lk0/qt;->t()V

    new-array p1, v5, [I

    .line 31
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_7

    .line 32
    :cond_3
    iput-boolean v2, p0, Lk0/cg;->e:Z

    goto/16 :goto_7

    .line 33
    :cond_4
    iget-boolean p1, p0, Lk0/cg;->e:Z

    if-ne p1, v3, :cond_1a

    sget-object p1, La/b;->Q:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 34
    invoke-static {}, Lk0/qt;->f()V

    goto/16 :goto_7

    .line 35
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1a

    add-int/lit8 p3, p2, 0x2

    .line 36
    aget-byte v0, p1, p3

    and-int/2addr v0, v9

    add-int/lit8 v1, p2, 0x3

    .line 37
    aget-byte v2, p1, v1

    and-int/2addr v2, v9

    add-int/lit8 v4, p2, 0x4

    .line 38
    aget-byte v5, p1, v4

    and-int/2addr v5, v9

    add-int/2addr p2, v7

    .line 39
    aget-byte v6, p1, p2

    and-int/2addr v6, v9

    .line 40
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_8

    .line 41
    sget v7, Ll0/c0;->g:I

    if-ne v7, v0, :cond_5

    sget v7, Ll0/c0;->h:I

    if-ne v7, v2, :cond_5

    sget v7, Ll0/c0;->i:I

    if-ne v7, v5, :cond_5

    sget v7, Ll0/c0;->j:I

    if-eq v7, v6, :cond_7

    :cond_5
    if-nez v0, :cond_6

    if-nez v2, :cond_6

    if-nez v5, :cond_6

    if-nez v6, :cond_6

    .line 42
    sget v7, Lu0/b;->p:I

    if-ne v7, v3, :cond_7

    .line 43
    sput v8, Ll0/c0;->k:I

    .line 44
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 45
    :cond_6
    invoke-static {v3}, Lu0/d;->C2(I)V

    .line 46
    :cond_7
    :goto_2
    sput v0, Ll0/c0;->g:I

    .line 47
    sput v2, Ll0/c0;->h:I

    .line 48
    sput v5, Ll0/c0;->i:I

    .line 49
    sput v6, Ll0/c0;->j:I

    .line 50
    :cond_8
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 51
    aget-byte p3, p1, v1

    and-int/2addr p3, v9

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 52
    aget-byte p3, p1, v4

    and-int/2addr p3, v9

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 53
    aget-byte p1, p1, p2

    and-int/2addr p1, v9

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_7

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 54
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 55
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 56
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v7

    .line 57
    aget-byte p1, p1, p2

    and-int/2addr p1, v9

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_7

    :pswitch_3
    add-int/lit8 p3, p2, 0x2

    .line 58
    aget-byte p3, p1, p3

    const/16 v1, 0xa

    new-array v4, v3, [I

    shr-int/lit8 v8, p3, 0x7

    and-int/2addr v8, v3

    aput v8, v4, v2

    .line 59
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    new-array v1, v3, [I

    shr-int/lit8 v4, p3, 0x6

    and-int/2addr v4, v3

    aput v4, v1, v2

    .line 60
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v4, v3, [I

    shr-int/lit8 v5, p3, 0x5

    and-int/2addr v5, v3

    aput v5, v4, v2

    .line 61
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v4, v3, [I

    shr-int/lit8 v5, p3, 0x3

    and-int/2addr v5, v3

    aput v5, v4, v2

    .line 62
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe

    new-array v4, v3, [I

    shr-int/lit8 v5, p3, 0x2

    and-int/2addr v5, v3

    aput v5, v4, v2

    .line 63
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    new-array v1, v3, [I

    shr-int/lit8 v4, p3, 0x1

    and-int/2addr v4, v3

    aput v4, v1, v2

    const/16 v4, 0xf

    .line 64
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v3, [I

    shr-int/2addr p3, v2

    and-int/2addr p3, v3

    aput p3, v1, v2

    .line 65
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 66
    aget-byte p3, p1, p3

    const/16 v0, 0x12

    new-array v1, v3, [I

    shr-int/lit8 v5, p3, 0x7

    and-int/2addr v5, v3

    aput v5, v1, v2

    .line 67
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x13

    new-array v1, v3, [I

    shr-int/lit8 v5, p3, 0x6

    and-int/2addr v5, v3

    aput v5, v1, v2

    .line 68
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x14

    new-array v1, v3, [I

    shr-int/lit8 v5, p3, 0x5

    and-int/2addr v5, v3

    aput v5, v1, v2

    .line 69
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    and-int/2addr p3, v4

    const/4 v0, 0x7

    if-le p3, v0, :cond_9

    move p3, v0

    :cond_9
    const/16 v0, 0x15

    new-array v1, v3, [I

    aput p3, v1, v2

    .line 70
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 71
    aget-byte v0, p1, p3

    add-int/lit8 v1, p2, 0x5

    .line 72
    aget-byte v4, p1, v1

    const-string v5, "persist.fyt.reversetemp"

    .line 73
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 74
    aget-byte v0, p1, v1

    .line 75
    aget-byte v4, p1, p3

    :cond_a
    const/16 p3, 0x1d

    const/4 v1, -0x1

    const/4 v5, -0x3

    const/4 v8, -0x2

    const/16 v9, 0x1f

    const/16 v10, 0x1b

    if-eqz v0, :cond_d

    if-eq v0, v9, :cond_c

    if-lt v0, v3, :cond_b

    if-gt v0, p3, :cond_b

    new-array v11, v3, [I

    mul-int/2addr v0, v7

    add-int/lit16 v0, v0, 0xaf

    aput v0, v11, v2

    .line 76
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    new-array v0, v3, [I

    aput v1, v0, v2

    .line 77
    invoke-static {v10, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_c
    new-array v0, v3, [I

    aput v5, v0, v2

    .line 78
    invoke-static {v10, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    new-array v0, v3, [I

    aput v8, v0, v2

    .line 79
    invoke-static {v10, v0}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v0, 0x1c

    if-eqz v4, :cond_10

    if-eq v4, v9, :cond_f

    if-lt v4, v3, :cond_e

    if-gt v4, p3, :cond_e

    new-array p3, v3, [I

    mul-int/2addr v4, v7

    add-int/lit16 v4, v4, 0xaf

    aput v4, p3, v2

    .line 80
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_e
    new-array p3, v3, [I

    aput v1, p3, v2

    .line 81
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_f
    new-array p3, v3, [I

    aput v5, p3, v2

    .line 82
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_10
    new-array p3, v3, [I

    aput v8, p3, v2

    .line 83
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 p3, 0x21

    new-array v0, v3, [I

    add-int/2addr p2, v6

    .line 84
    aget-byte p1, p1, p2

    shr-int/2addr p1, v2

    and-int/2addr p1, v3

    aput p1, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_4
    add-int/lit8 p3, p2, 0x2

    .line 85
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    .line 86
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 87
    iput p2, p0, Lk0/cg;->c:I

    move p2, v2

    .line 88
    :goto_5
    iget-object p3, p0, Lk0/cg;->d:[[I

    array-length v5, p3

    if-ge p2, v5, :cond_12

    .line 89
    iget v5, p0, Lk0/cg;->c:I

    aget-object v8, p3, p2

    aget v8, v8, v2

    if-ne v5, v8, :cond_11

    if-eqz v5, :cond_12

    .line 90
    iput p2, p0, Lk0/cg;->b:I

    goto :goto_6

    :cond_11
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 91
    :cond_12
    :goto_6
    iget v5, p0, Lk0/cg;->c:I

    if-eq v5, v0, :cond_15

    and-int/2addr p1, v9

    if-ne p1, v3, :cond_13

    .line 92
    array-length p1, p3

    if-ge p2, p1, :cond_1a

    .line 93
    aget-object p1, p3, p2

    aget p1, p1, v3

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_13
    if-nez p1, :cond_1a

    .line 94
    iget p1, p0, Lk0/cg;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_14

    if-eq p1, v9, :cond_14

    .line 95
    aget-object p1, p3, p1

    aget p1, p1, v3

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 96
    :cond_14
    iput v9, p0, Lk0/cg;->b:I

    goto :goto_7

    :cond_15
    and-int/2addr p1, v9

    if-ne p1, v3, :cond_1a

    .line 97
    sget p1, Lh0/c;->E:I

    const/16 p2, 0x1a

    if-eq p1, v4, :cond_17

    if-eq p1, v1, :cond_17

    if-eq p1, v7, :cond_17

    .line 98
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object p1

    invoke-virtual {p1}, Lu0/i;->r3()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 99
    invoke-static {p2, v2}, Ll0/b0;->l0(II)V

    .line 100
    invoke-static {p2, v3}, Ll0/b0;->l0(II)V

    goto :goto_7

    .line 101
    :cond_16
    invoke-static {v6, v2}, Ll0/b0;->l0(II)V

    .line 102
    invoke-static {v6, v3}, Ll0/b0;->l0(II)V

    goto :goto_7

    .line 103
    :cond_17
    invoke-static {p2, v2}, Ll0/b0;->l0(II)V

    .line 104
    invoke-static {p2, v3}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_18
    add-int/lit8 p3, p2, 0x2

    .line 105
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    aget-byte p1, p1, p2

    const/16 p2, 0x12c0

    invoke-static {p3, p1, v3, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_7

    :cond_19
    const/16 p3, 0x408

    new-array v0, v3, [I

    add-int/lit8 v3, p2, 0x5

    .line 106
    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    or-int/2addr p1, v3

    const p2, 0xffff

    and-int/2addr p1, p2

    aput p1, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    :cond_1a
    :goto_7
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

    :array_0
    .array-data 4
        0xe3
        0xca
        0x8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/cg;->h:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/cg;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Lk0/cg;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

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
    .locals 2

    if-eqz p1, :cond_2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eq p1, p4, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 v1, 0xe3

    aput v1, p1, p3

    const/16 v1, 0x87

    aput v1, p1, p4

    aput v0, p1, v0

    const/4 v0, 0x3

    .line 1
    aget p3, p2, p3

    aput p3, p1, v0

    const/4 p3, 0x4

    aget p2, p2, p4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 2
    :cond_1
    aget p1, p2, p3

    invoke-virtual {p0, p1}, Lk0/cg;->b3(I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0xb

    new-array p1, p1, [I

    .line 3
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0xca
        0x8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final b3(I)V
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
    sput p1, Lk0/cg;->q:I

    const/16 v2, 0x62

    new-array v3, v1, [I

    aput p1, v3, v0

    .line 2
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/cg;->h:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/cg;->q:I

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lk0/cg;->h:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method
