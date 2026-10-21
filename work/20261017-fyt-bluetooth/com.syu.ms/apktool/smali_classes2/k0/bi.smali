.class public Lk0/bi;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static l:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:Lo1/g0;

.field public final h:I

.field public i:Z

.field public j:I

.field public k:Ljava/lang/Runnable;


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
    iput v0, p0, Lk0/bi;->c:I

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

    const/4 v6, 0x5

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v6, 0x6

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v6, 0x7

    aput-object v3, v1, v6

    new-array v2, v2, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/bi;->d:[[I

    .line 4
    iput v0, p0, Lk0/bi;->e:I

    .line 5
    iput v0, p0, Lk0/bi;->f:I

    .line 6
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/bi;->g:Lo1/g0;

    .line 7
    iput v4, p0, Lk0/bi;->h:I

    .line 8
    iput-boolean v0, p0, Lk0/bi;->i:Z

    .line 9
    iput v5, p0, Lk0/bi;->j:I

    .line 10
    new-instance v0, Lk0/bi$a;

    invoke-direct {v0, p0}, Lk0/bi$a;-><init>(Lk0/bi;)V

    iput-object v0, p0, Lk0/bi;->k:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x9
        0xd
    .end array-data
.end method

.method public static synthetic a3(Lk0/bi;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/bi;->k:Ljava/lang/Runnable;

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
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->i:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    .line 7
    sget v0, Lk0/nt;->c:I

    const/16 v3, 0x4a

    if-ne v0, v3, :cond_0

    .line 8
    iget-object v0, p0, Lk0/bi;->g:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 9
    iget-object v0, p0, Lk0/bi;->g:Lo1/g0;

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/bi;->b3(I)V

    .line 10
    :cond_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 9

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_14

    const/16 p3, 0x20

    const/16 v1, 0x4a

    const/16 v3, 0xff

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, p3, :cond_e

    const/16 p3, 0x52

    const/16 v7, 0x8

    if-eq v0, p3, :cond_b

    const/16 p3, 0x7d

    if-eq v0, p3, :cond_0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    const/4 v0, 0x4

    if-eq p3, v6, :cond_6

    const v1, 0xff00

    if-eq p3, v4, :cond_5

    const/4 v8, 0x5

    if-eq p3, v8, :cond_3

    if-eq p3, v7, :cond_2

    const/16 v0, 0xa

    if-eq p3, v0, :cond_1

    goto/16 :goto_6

    :cond_1
    const/16 p3, 0x408

    new-array v0, v6, [I

    add-int/lit8 v2, p2, 0x4

    .line 3
    aget-byte v2, p1, v2

    shl-int/2addr v2, v7

    and-int/2addr v1, v2

    add-int/2addr p2, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, v1

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_2
    add-int/lit8 p3, p2, 0x3

    .line 4
    aget-byte p3, p1, p3

    add-int/2addr p2, v0

    .line 5
    aget-byte p1, p1, p2

    const/16 p2, 0x21c

    .line 6
    invoke-static {p3, p1, v6, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_6

    :cond_3
    add-int/2addr p2, v4

    .line 7
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    const-string p2, "persist.syu.reversefrontdoor"

    .line 8
    invoke-static {p2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_4

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 9
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 10
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 11
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 12
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 13
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 14
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 15
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/2addr p1, v2

    and-int/2addr p1, v6

    aput p1, p2, v5

    .line 16
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_5
    add-int/lit8 p3, p2, 0x4

    .line 17
    aget-byte p3, p1, p3

    shl-int/2addr p3, v7

    and-int/2addr p3, v1

    add-int/2addr p2, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x64

    const/16 p2, 0x407

    new-array p3, v6, [I

    aput p1, p3, v5

    .line 18
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    .line 19
    sget-object p2, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x419

    new-array v0, v2, [I

    aput v6, v0, v5

    aput p1, v0, v6

    const/4 p1, 0x0

    invoke-static {p2, p3, v0, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_6

    .line 20
    :cond_6
    sget p3, Lk0/nt;->c:I

    if-ne p3, v1, :cond_9

    .line 21
    sget p3, Lk0/bi;->l:I

    if-ne p3, v6, :cond_9

    add-int/lit8 p3, p2, 0x3

    .line 22
    aget-byte v1, p1, p3

    shr-int/2addr v1, v4

    and-int/2addr v1, v6

    iput v1, p0, Lk0/bi;->e:I

    .line 23
    aget-byte p3, p1, p3

    shr-int/2addr p3, v0

    and-int/2addr p3, v6

    iput p3, p0, Lk0/bi;->f:I

    if-eq v1, v6, :cond_8

    if-ne p3, v6, :cond_7

    goto :goto_1

    .line 24
    :cond_7
    iget-object p3, p0, Lk0/bi;->k:Ljava/lang/Runnable;

    invoke-static {p3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_8
    :goto_1
    const/16 p3, 0x17

    new-array v1, v6, [I

    aput v5, v1, v5

    .line 25
    invoke-static {p3, v1}, Lu0/d;->I3(I[I)V

    .line 26
    invoke-static {v6}, Lk0/qt;->a(I)V

    .line 27
    iput v4, p0, Lk0/bi;->j:I

    .line 28
    iget-object p3, p0, Lk0/bi;->k:Ljava/lang/Runnable;

    invoke-static {p3}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    :cond_9
    :goto_2
    const-string p3, "persist.fyt.leftrightlighttype"

    .line 29
    invoke-static {p3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_a

    add-int/2addr p2, v4

    .line 30
    aget-byte p3, p1, p2

    shr-int/2addr p3, v4

    and-int/2addr p3, v6

    aget-byte p1, p1, p2

    shr-int/2addr p1, v0

    and-int/2addr p1, v6

    invoke-static {p3, p1, v5}, Ll0/c0;->b(III)V

    goto/16 :goto_6

    :cond_a
    add-int/2addr p2, v4

    .line 31
    aget-byte p3, p1, p2

    shr-int/2addr p3, v4

    and-int/2addr p3, v6

    aget-byte p1, p1, p2

    shr-int/2addr p1, v0

    and-int/2addr p1, v6

    invoke-static {p3, p1, v5}, Ll0/c0;->a(III)V

    goto/16 :goto_6

    :cond_b
    add-int/lit8 p3, p2, 0x2

    .line 32
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    .line 33
    aget-byte p1, p1, p2

    if-ne p3, v6, :cond_c

    goto :goto_6

    :cond_c
    if-ne p3, v2, :cond_15

    new-array p2, v6, [I

    if-ne p1, v6, :cond_d

    goto :goto_3

    :cond_d
    move v6, v5

    :goto_3
    aput v6, p2, v5

    .line 34
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    .line 35
    :cond_e
    sget p3, Lk0/nt;->c:I

    if-eq p3, v1, :cond_f

    goto :goto_6

    :cond_f
    add-int/lit8 p3, p2, 0x2

    .line 36
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    .line 37
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 38
    iput p2, p0, Lk0/bi;->c:I

    move p2, v5

    .line 39
    :goto_4
    iget-object p3, p0, Lk0/bi;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_11

    .line 40
    iget v0, p0, Lk0/bi;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v5

    if-ne v0, v1, :cond_10

    if-eqz v0, :cond_11

    .line 41
    iput p2, p0, Lk0/bi;->b:I

    goto :goto_5

    :cond_10
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_11
    :goto_5
    and-int/2addr p1, v3

    if-eqz p1, :cond_12

    .line 42
    array-length p1, p3

    if-ge p2, p1, :cond_15

    .line 43
    aget-object p1, p3, p2

    aget p1, p1, v6

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    goto :goto_6

    .line 44
    :cond_12
    iget p1, p0, Lk0/bi;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_13

    if-eq p1, v3, :cond_13

    .line 45
    aget-object p1, p3, p1

    aget p1, p1, v6

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    .line 46
    :cond_13
    iput v3, p0, Lk0/bi;->b:I

    goto :goto_6

    .line 47
    :cond_14
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_15
    :goto_6
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/bi;->g:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x9

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

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    const/4 p1, 0x0

    .line 1
    aget p3, p2, p1

    const/4 p4, 0x1

    if-ne p3, p4, :cond_1

    .line 2
    aget p3, p2, p4

    invoke-virtual {p0, p3}, Lk0/bi;->b3(I)V

    :cond_1
    const/4 p3, 0x5

    new-array p3, p3, [I

    const/16 v0, 0xe3

    aput v0, p3, p1

    const/16 v0, 0x83

    aput v0, p3, p4

    const/4 v0, 0x2

    aput v0, p3, v0

    const/4 v0, 0x3

    .line 3
    aget p1, p2, p1

    aput p1, p3, v0

    const/4 p1, 0x4

    aget p2, p2, p4

    aput p2, p3, p1

    invoke-static {p3}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
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
    sput p1, Lk0/bi;->l:I

    const/4 v2, 0x7

    new-array v3, v1, [I

    aput p1, v3, v0

    .line 2
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/bi;->g:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/bi;->l:I

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lk0/bi;->g:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method
