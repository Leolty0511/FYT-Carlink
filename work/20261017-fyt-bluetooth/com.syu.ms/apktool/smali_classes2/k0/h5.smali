.class public Lk0/h5;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static v:I


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public final f:I

.field public g:I

.field public h:Lo1/g0;

.field public final i:I

.field public j:B

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:I

.field public s:Z

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/h5;->d:I

    const/16 v0, 0xc

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v5, 0x4

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v5, 0x5

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v5, 0x6

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v5, 0x7

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v5, 0x8

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v5, 0x9

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v5, 0xa

    aput-object v2, v0, v5

    new-array v1, v1, [I

    fill-array-data v1, :array_b

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/h5;->e:[[I

    .line 4
    iput v5, p0, Lk0/h5;->f:I

    .line 5
    iput v5, p0, Lk0/h5;->g:I

    .line 6
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/h5;->h:Lo1/g0;

    .line 7
    iput v4, p0, Lk0/h5;->i:I

    .line 8
    iput-byte v3, p0, Lk0/h5;->j:B

    .line 9
    new-instance v0, Lk0/h5$a;

    invoke-direct {v0, p0}, Lk0/h5$a;-><init>(Lk0/h5;)V

    iput-object v0, p0, Lk0/h5;->k:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/h5$b;

    invoke-direct {v0, p0}, Lk0/h5$b;-><init>(Lk0/h5;)V

    iput-object v0, p0, Lk0/h5;->l:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/h5$c;

    invoke-direct {v0, p0}, Lk0/h5$c;-><init>(Lk0/h5;)V

    iput-object v0, p0, Lk0/h5;->m:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lk0/h5$d;

    invoke-direct {v0, p0}, Lk0/h5$d;-><init>(Lk0/h5;)V

    iput-object v0, p0, Lk0/h5;->n:Ljava/lang/Runnable;

    .line 13
    new-instance v0, Lk0/h5$e;

    invoke-direct {v0, p0}, Lk0/h5$e;-><init>(Lk0/h5;)V

    iput-object v0, p0, Lk0/h5;->o:Ljava/lang/Runnable;

    .line 14
    new-instance v0, Lk0/h5$f;

    invoke-direct {v0, p0}, Lk0/h5$f;-><init>(Lk0/h5;)V

    iput-object v0, p0, Lk0/h5;->p:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lk0/h5$g;

    invoke-direct {v0, p0}, Lk0/h5$g;-><init>(Lk0/h5;)V

    iput-object v0, p0, Lk0/h5;->q:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lk0/h5;->r:I

    .line 17
    iput-boolean v3, p0, Lk0/h5;->s:Z

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lk0/h5;->t:Ljava/lang/String;

    .line 19
    new-instance v0, Lk0/h5$h;

    invoke-direct {v0, p0}, Lk0/h5$h;-><init>(Lk0/h5;)V

    iput-object v0, p0, Lk0/h5;->u:Ljava/lang/Runnable;

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
        -0x1
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xc
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_6
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x3a
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_b
    .array-data 4
        0xc
        -0x1
    .end array-data
.end method

.method public static synthetic a3(Lk0/h5;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/h5;->k:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic b3(Lk0/h5;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/h5;->j3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic c3(Lk0/h5;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/h5;->s:Z

    return p0
.end method

.method public static synthetic d3(Lk0/h5;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/h5;->s:Z

    return p1
.end method

.method public static synthetic e3(Lk0/h5;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/h5;->r:I

    return p0
.end method

.method public static synthetic f3(Lk0/h5;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/h5;->r:I

    return p1
.end method

.method public static synthetic g3(Lk0/h5;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/h5;->t:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h3(Lk0/h5;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/h5;->t:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic i3(Lk0/h5;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/h5;->l3(ILjava/lang/String;)V

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
    iget-object v0, p0, Lk0/h5;->h:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 8
    iget-object v0, p0, Lk0/h5;->h:Lo1/g0;

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/h5;->k3(I)V

    .line 9
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lk0/h5;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v2, p0, Lk0/h5;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v2, p0, Lk0/h5;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lk0/h5;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v2, p0, Lk0/h5;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    iget-object v2, p0, Lk0/h5;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->w:Lo1/y;

    iget-object v2, p0, Lk0/h5;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lu0/c;->u:Lo1/y;

    iget-object v2, p0, Lk0/h5;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v0, Lu0/c;->v:Lo1/y;

    iget-object v2, p0, Lk0/h5;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/h5;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/h5;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v2, p0, Lk0/h5;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/h5;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 24
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v2, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 25
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v2, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2
        0x2d
        0x2
        0x7
    .end array-data
.end method

.method public U2([BII)V
    .locals 7

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x18

    const/4 v2, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_a

    const/16 v1, -0x10

    const/4 v6, 0x2

    if-eq v0, v1, :cond_9

    const/16 p3, 0x41

    if-eq v0, p3, :cond_8

    const/16 p3, 0x11

    if-eq v0, p3, :cond_2

    const/16 p3, 0x12

    if-eq v0, p3, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 p3, 0x4

    add-int/2addr p2, p3

    .line 2
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_1

    new-array p2, v5, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v5

    aput v0, p2, v4

    .line 4
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v5

    aput v0, p2, v4

    .line 5
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array p2, v5, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v5

    aput v0, p2, v4

    .line 6
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v5

    aput v0, p2, v4

    .line 7
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v5, [I

    shr-int/lit8 v0, p1, 0x5

    and-int/2addr v0, v5

    aput v0, p2, v4

    .line 8
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 v0, p1, 0x4

    and-int/2addr v0, v5

    aput v0, p2, v4

    .line 9
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v5

    aput p3, p2, v4

    const/4 p3, 0x5

    .line 10
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v6

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 11
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    .line 12
    :cond_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_b

    add-int/lit8 p3, p2, 0x4

    .line 13
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x5

    .line 14
    aget-byte v0, p1, v0

    and-int/2addr p3, v3

    .line 15
    iput p3, p0, Lk0/h5;->c:I

    move p3, v4

    .line 16
    :goto_1
    iget-object v1, p0, Lk0/h5;->e:[[I

    array-length v2, v1

    if-ge p3, v2, :cond_4

    .line 17
    iget v2, p0, Lk0/h5;->c:I

    aget-object v6, v1, p3

    aget v6, v6, v4

    if-ne v2, v6, :cond_3

    if-eqz v2, :cond_4

    .line 18
    iput p3, p0, Lk0/h5;->b:I

    goto :goto_2

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    and-int/2addr v0, v3

    if-ne v0, v5, :cond_5

    .line 19
    array-length v0, v1

    if-ge p3, v0, :cond_7

    .line 20
    iget-byte v0, p0, Lk0/h5;->j:B

    if-nez v0, :cond_7

    add-int/2addr v0, v5

    int-to-byte v0, v0

    .line 21
    iput-byte v0, p0, Lk0/h5;->j:B

    .line 22
    aget-object p3, v1, p3

    aget p3, p3, v5

    invoke-static {p3, v4}, Ll0/b0;->l0(II)V

    .line 23
    iget-object p3, p0, Lk0/h5;->k:Ljava/lang/Runnable;

    invoke-static {p3}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_5
    if-nez v0, :cond_7

    .line 24
    iget p3, p0, Lk0/h5;->b:I

    array-length v0, v1

    if-ge p3, v0, :cond_6

    if-eq p3, v3, :cond_6

    .line 25
    aget-object p3, v1, p3

    aget p3, p3, v5

    invoke-static {p3, v5}, Ll0/b0;->l0(II)V

    .line 26
    iget-object p3, p0, Lk0/h5;->k:Ljava/lang/Runnable;

    invoke-static {p3}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 27
    iput-byte v4, p0, Lk0/h5;->j:B

    .line 28
    :cond_6
    iput v3, p0, Lk0/h5;->b:I

    :cond_7
    :goto_3
    add-int/lit8 p3, p2, 0x9

    .line 29
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x8

    aget-byte p1, p1, p2

    const/16 p2, 0x1388

    invoke-static {p3, p1, v5, p2}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_4

    .line 30
    :cond_8
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_b

    add-int/lit8 p3, p2, 0x2

    .line 31
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/h0;->p(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 32
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/h0;->p(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 33
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/h0;->p(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 34
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/h0;->p(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 35
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/h0;->p(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->D2(I)V

    .line 36
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/h0;->p(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    add-int/lit8 p2, p2, 0x9

    .line 37
    aget-byte p3, p1, p2

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/h0;->p(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 38
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/h0;->p(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto :goto_4

    .line 39
    :cond_9
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v6

    sub-int/2addr p3, v6

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    const/16 p3, 0x3f5

    new-array v0, v5, [I

    add-int/2addr p2, v2

    .line 40
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    sub-int/2addr p1, v5

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    :cond_b
    :goto_4
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/h5;->h:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/h5;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/h5;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/h5;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/h5;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/h5;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v1, p0, Lk0/h5;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->w:Lo1/y;

    iget-object v1, p0, Lk0/h5;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->u:Lo1/y;

    iget-object v1, p0, Lk0/h5;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->v:Lo1/y;

    iget-object v1, p0, Lk0/h5;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/h5;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/h5;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lk0/h5;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 14
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/h5;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 15
    sget-object v0, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 16
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 17
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x62

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
    .locals 0

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_3

    .line 1
    array-length p1, p2

    if-lez p1, :cond_3

    const/4 p1, 0x0

    .line 2
    aget p3, p2, p1

    const/4 p4, 0x1

    add-int/2addr p3, p4

    aput p3, p2, p1

    .line 3
    aget p3, p2, p1

    if-ge p3, p4, :cond_1

    .line 4
    aput p4, p2, p1

    goto :goto_0

    .line 5
    :cond_1
    aget p3, p2, p1

    const/4 p4, 0x3

    if-le p3, p4, :cond_2

    .line 6
    aput p4, p2, p1

    .line 7
    :cond_2
    :goto_0
    aget p1, p2, p1

    invoke-virtual {p0, p1}, Lk0/h5;->k3(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final j3(BLjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x23

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x20

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0xf

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, 0x3

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 3
    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x4

    and-int/lit16 p1, p1, 0xff

    .line 4
    aput p1, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final k3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/h5;->v:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x2

    aput v3, v0, v1

    const/16 v4, -0xe

    aput v4, v0, v3

    int-to-byte p1, p1

    const/4 v3, 0x3

    aput p1, v0, v3

    const/4 p1, 0x4

    const/4 v3, -0x1

    aput v3, v0, p1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    iget-object p1, p0, Lk0/h5;->h:Lo1/g0;

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/h5;->v:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/h5;->h:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final l3(ILjava/lang/String;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const/16 v0, 0x20

    new-array v2, v0, [B

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_2

    .line 3
    aget-char v5, p2, v4

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_2
    if-ge p2, v0, :cond_3

    .line 4
    aput-byte v0, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    const/16 p2, 0x23

    new-array v4, p2, [I

    const/16 v5, -0x1d

    aput v5, v4, v3

    const/4 v5, 0x1

    aput v0, v4, v5

    const/4 v0, 0x2

    const/16 v5, -0x19

    aput v5, v4, v0

    const/4 v0, 0x3

    int-to-byte p1, p1

    aput p1, v4, v0

    const/4 p1, 0x4

    move v0, v3

    :goto_3
    if-ge v0, v1, :cond_4

    add-int v5, p1, v0

    .line 5
    aget-byte v6, v2, v0

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    add-int/2addr p1, v1

    :goto_4
    if-ge p1, p2, :cond_5

    .line 6
    aput v3, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 7
    :cond_5
    invoke-static {v4}, Lz/k;->s([I)V

    return-void
.end method
