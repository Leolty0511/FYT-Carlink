.class public Lk0/aa;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static A:I


# instance fields
.field public final b:[I

.field public c:Lo1/g0;

.field public final d:I

.field public final e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:[[I

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;

.field public t:Ljava/lang/Runnable;

.field public u:I

.field public v:Z

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/Runnable;

.field public y:J

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xc

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    iput-object v1, p0, Lk0/aa;->b:[I

    .line 3
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/aa;->c:Lo1/g0;

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lk0/aa;->d:I

    const/16 v2, 0xa

    .line 5
    iput v2, p0, Lk0/aa;->e:I

    .line 6
    iput v2, p0, Lk0/aa;->f:I

    const/4 v3, 0x0

    .line 7
    iput v3, p0, Lk0/aa;->g:I

    const/16 v4, 0xff

    .line 8
    iput v4, p0, Lk0/aa;->j:I

    new-array v0, v0, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 9
    fill-array-data v5, :array_1

    aput-object v5, v0, v3

    new-array v5, v4, [I

    fill-array-data v5, :array_2

    aput-object v5, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_4

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_5

    const/4 v5, 0x4

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_6

    const/4 v5, 0x5

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_7

    const/4 v5, 0x6

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_8

    const/4 v5, 0x7

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_9

    const/16 v5, 0x8

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_a

    const/16 v5, 0x9

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_c

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/aa;->k:[[I

    .line 10
    new-instance v0, Lk0/aa$b;

    invoke-direct {v0, p0}, Lk0/aa$b;-><init>(Lk0/aa;)V

    iput-object v0, p0, Lk0/aa;->l:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/aa$c;

    invoke-direct {v0, p0}, Lk0/aa$c;-><init>(Lk0/aa;)V

    iput-object v0, p0, Lk0/aa;->m:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lk0/aa$d;

    invoke-direct {v0, p0}, Lk0/aa$d;-><init>(Lk0/aa;)V

    iput-object v0, p0, Lk0/aa;->n:Ljava/lang/Runnable;

    .line 13
    new-instance v0, Lk0/aa$e;

    invoke-direct {v0, p0}, Lk0/aa$e;-><init>(Lk0/aa;)V

    iput-object v0, p0, Lk0/aa;->o:Ljava/lang/Runnable;

    .line 14
    new-instance v0, Lk0/aa$f;

    invoke-direct {v0, p0}, Lk0/aa$f;-><init>(Lk0/aa;)V

    iput-object v0, p0, Lk0/aa;->p:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lk0/aa$g;

    invoke-direct {v0, p0}, Lk0/aa$g;-><init>(Lk0/aa;)V

    iput-object v0, p0, Lk0/aa;->q:Ljava/lang/Runnable;

    .line 16
    new-instance v0, Lk0/aa$h;

    invoke-direct {v0, p0}, Lk0/aa$h;-><init>(Lk0/aa;)V

    iput-object v0, p0, Lk0/aa;->r:Ljava/lang/Runnable;

    .line 17
    new-instance v0, Lk0/aa$i;

    invoke-direct {v0, p0}, Lk0/aa$i;-><init>(Lk0/aa;)V

    iput-object v0, p0, Lk0/aa;->s:Ljava/lang/Runnable;

    .line 18
    new-instance v0, Lk0/aa$j;

    invoke-direct {v0, p0}, Lk0/aa$j;-><init>(Lk0/aa;)V

    iput-object v0, p0, Lk0/aa;->t:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lk0/aa;->u:I

    .line 20
    iput-boolean v3, p0, Lk0/aa;->v:Z

    const-string v1, ""

    .line 21
    iput-object v1, p0, Lk0/aa;->w:Ljava/lang/String;

    .line 22
    new-instance v1, Lk0/aa$a;

    invoke-direct {v1, p0}, Lk0/aa$a;-><init>(Lk0/aa;)V

    iput-object v1, p0, Lk0/aa;->x:Ljava/lang/Runnable;

    const-wide/16 v1, -0x1

    .line 23
    iput-wide v1, p0, Lk0/aa;->y:J

    .line 24
    iput v0, p0, Lk0/aa;->z:I

    return-void

    nop

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
        -0x1
    .end array-data

    :array_4
    .array-data 4
        0x4
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_7
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_8
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_9
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_a
    .array-data 4
        0xa
        0x3a
    .end array-data

    :array_b
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_c
    .array-data 4
        0xc
        -0x1
    .end array-data
.end method

.method public static synthetic a3(Lk0/aa;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/aa;->m3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic b3(Lk0/aa;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/aa;->v:Z

    return p0
.end method

.method public static synthetic c3(Lk0/aa;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/aa;->v:Z

    return p1
.end method

.method public static synthetic d3(Lk0/aa;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/aa;->u:I

    return p0
.end method

.method public static synthetic e3(Lk0/aa;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/aa;->u:I

    return p1
.end method

.method public static synthetic f3(Lk0/aa;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/aa;->w:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g3(Lk0/aa;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/aa;->w:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic h3(Lk0/aa;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/aa;->o3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic i3(Lk0/aa;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/aa;->y:J

    return-wide v0
.end method

.method public static synthetic j3(Lk0/aa;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/aa;->y:J

    return-wide p1
.end method

.method public static synthetic k3(Lk0/aa;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/aa;->z:I

    return p0
.end method

.method public static synthetic l3(Lk0/aa;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/aa;->z:I

    return p1
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

    .line 3
    iput v1, v0, Lk0/mt;->k:I

    .line 4
    iget-object v0, p0, Lk0/aa;->c:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    const/4 v0, 0x5

    new-array v2, v0, [I

    .line 5
    fill-array-data v2, :array_0

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v2, v0, [I

    .line 6
    fill-array-data v2, :array_1

    invoke-static {v2}, Lz/k;->s([I)V

    .line 7
    sget v2, Lk0/nt;->c:I

    if-nez v2, :cond_0

    new-array v0, v0, [I

    .line 8
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v0, [I

    .line 9
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    .line 10
    :goto_0
    iget-object v0, p0, Lk0/aa;->c:Lo1/g0;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/aa;->n3(I)V

    .line 11
    iget-object v0, p0, Lk0/aa;->x:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lk0/aa;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v2, p0, Lk0/aa;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v2, p0, Lk0/aa;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lk0/aa;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v2, p0, Lk0/aa;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    iget-object v2, p0, Lk0/aa;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v0, Lu0/c;->u:Lo1/y;

    iget-object v2, p0, Lk0/aa;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    sget-object v0, Lu0/c;->v:Lo1/y;

    iget-object v2, p0, Lk0/aa;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v2, p0, Lk0/aa;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/aa;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    sget-object v2, Lu0/c;->f:Lo1/y;

    iget-object v3, p0, Lk0/aa;->l:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 23
    sget-object v2, Lu0/c;->w:Lo1/y;

    iget-object v3, p0, Lk0/aa;->q:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 24
    sget-object v2, Ly0/g;->d:Lo1/y;

    iget-object v3, p0, Lk0/aa;->s:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 25
    sget-object v2, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lk0/aa;->r:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 26
    iget-object v2, p0, Lk0/aa;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 27
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/aa;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 28
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v2, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 30
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v2, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        0x2d
        0x2
        0xb
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        -0xe
        0x7
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0x1f
        0x2
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x24
        0x1d
        0x2
    .end array-data
.end method

.method public U2([BII)V
    .locals 7

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x18

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/4 v5, 0x1

    if-eq v0, v1, :cond_e

    const/16 v1, -0x10

    const/4 v6, 0x2

    if-eq v0, v1, :cond_d

    const/16 p3, 0x41

    if-eq v0, p3, :cond_c

    const/16 p3, 0x11

    if-eq v0, p3, :cond_6

    const/16 p3, 0x12

    const/4 v1, 0x3

    if-eq v0, p3, :cond_4

    const/16 p3, 0x16

    if-eq v0, p3, :cond_1

    const/16 p3, 0x17

    if-eq v0, p3, :cond_0

    goto/16 :goto_5

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    shl-int/lit8 p3, p3, 0x10

    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p3, v0

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    or-int/2addr p3, v0

    const/16 v0, 0x6e

    new-array v1, v5, [I

    aput p3, v1, v3

    .line 3
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x5

    .line 4
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v0, p2, 0x6

    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    or-int/2addr p3, v0

    const/16 v0, 0x6f

    new-array v1, v5, [I

    aput p3, v1, v3

    .line 5
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x7

    .line 6
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    shl-int/lit8 p3, p3, 0x10

    add-int/lit8 v0, p2, 0x8

    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p3, v0

    add-int/lit8 v0, p2, 0x9

    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    or-int/2addr p3, v0

    const/16 v0, 0x70

    new-array v1, v5, [I

    aput p3, v1, v3

    .line 7
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0xa

    .line 8
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v0, p2, 0xb

    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    or-int/2addr p3, v0

    const/16 v0, 0x71

    new-array v1, v5, [I

    aput p3, v1, v3

    .line 9
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0xc

    .line 10
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    shl-int/lit8 p3, p3, 0x10

    add-int/lit8 v0, p2, 0xd

    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p3, v0

    add-int/lit8 v0, p2, 0xe

    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    or-int/2addr p3, v0

    const/16 v0, 0x72

    new-array v1, v5, [I

    aput p3, v1, v3

    .line 11
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0xf

    .line 12
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 p2, p2, 0x10

    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    or-int/2addr p1, p3

    const/16 p2, 0x73

    new-array p3, v5, [I

    aput p1, p3, v3

    .line 13
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 14
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    const/16 v0, 0x62

    new-array v2, v5, [I

    aput p3, v2, v3

    .line 15
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 16
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    or-int/2addr p3, v0

    const/16 v0, 0x63

    new-array v2, v5, [I

    aput p3, v2, v3

    .line 17
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x5

    .line 18
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v0, p2, 0x6

    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    or-int/2addr p3, v0

    const/16 v0, 0x64

    new-array v2, v5, [I

    aput p3, v2, v3

    .line 19
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x7

    .line 20
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v0, p2, 0x8

    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    or-int/2addr p3, v0

    const/16 v0, 0x65

    new-array v2, v5, [I

    aput p3, v2, v3

    .line 21
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x9

    .line 22
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    shl-int/lit8 p3, p3, 0x10

    add-int/lit8 v0, p2, 0xa

    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p3, v0

    add-int/lit8 v0, p2, 0xb

    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    or-int/2addr p3, v0

    const/16 v0, 0x66

    new-array v2, v5, [I

    aput p3, v2, v3

    .line 23
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0xc

    .line 24
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v0, p2, 0xd

    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    or-int/2addr p3, v0

    const/16 v0, 0x67

    new-array v2, v5, [I

    aput p3, v2, v3

    .line 25
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0xe

    .line 26
    aget-byte p3, p1, p3

    and-int/lit8 v0, p3, 0x3

    and-int/2addr v0, v4

    const/16 v2, 0x68

    new-array v6, v5, [I

    aput v0, v6, v3

    .line 27
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v0, p3, 0x2

    and-int/2addr v0, v1

    and-int/2addr v0, v4

    const/16 v2, 0x69

    new-array v6, v5, [I

    aput v0, v6, v3

    .line 28
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v0, p3, 0x4

    and-int/2addr v0, v1

    and-int/2addr v0, v4

    const/16 v1, 0x6a

    new-array v2, v5, [I

    aput v0, v2, v3

    .line 29
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v0, p3, 0x6

    and-int/2addr v0, v5

    and-int/2addr v0, v4

    const/16 v1, 0x6b

    new-array v2, v5, [I

    aput v0, v2, v3

    .line 30
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 p3, p3, 0x7

    and-int/2addr p3, v5

    and-int/2addr p3, v4

    const/16 v0, 0x6c

    new-array v1, v5, [I

    aput p3, v1, v3

    .line 31
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p2, p2, 0xf

    .line 32
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    const/16 p2, 0xa

    if-gez p1, :cond_2

    move p1, v3

    goto :goto_0

    :cond_2
    if-le p1, p2, :cond_3

    move p1, p2

    :cond_3
    :goto_0
    const/16 p2, 0x6d

    new-array p3, v5, [I

    .line 33
    iget-object v0, p0, Lk0/aa;->b:[I

    aget p1, v0, p1

    aput p1, p3, v3

    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_4
    add-int/2addr p2, v2

    .line 34
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 35
    invoke-static {p2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_5

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v3

    .line 36
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v3

    .line 37
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v3

    .line 38
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v3

    .line 39
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    :goto_1
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v3

    .line 40
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v3

    .line 41
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v5

    aput p3, p2, v3

    const/4 p3, 0x5

    .line 42
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v6

    and-int/2addr p1, v5

    aput p1, p2, v3

    .line 43
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    .line 44
    :cond_6
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_12

    add-int/lit8 p3, p2, 0x4

    .line 45
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x5

    .line 46
    aget-byte v0, p1, v0

    and-int/2addr p3, v4

    .line 47
    iput p3, p0, Lk0/aa;->i:I

    move p3, v3

    .line 48
    :goto_2
    iget-object v1, p0, Lk0/aa;->k:[[I

    array-length v2, v1

    if-ge p3, v2, :cond_8

    .line 49
    iget v2, p0, Lk0/aa;->i:I

    aget-object v6, v1, p3

    aget v6, v6, v3

    if-ne v2, v6, :cond_7

    if-eqz v2, :cond_8

    .line 50
    iput p3, p0, Lk0/aa;->h:I

    goto :goto_3

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    and-int/2addr v0, v4

    if-eqz v0, :cond_9

    .line 51
    array-length v0, v1

    if-ge p3, v0, :cond_b

    .line 52
    aget-object p3, v1, p3

    aget p3, p3, v5

    invoke-static {p3, v3}, Ll0/b0;->l0(II)V

    goto :goto_4

    .line 53
    :cond_9
    iget p3, p0, Lk0/aa;->h:I

    array-length v0, v1

    if-ge p3, v0, :cond_a

    if-eq p3, v4, :cond_a

    .line 54
    aget-object p3, v1, p3

    aget p3, p3, v5

    invoke-static {p3, v5}, Ll0/b0;->l0(II)V

    .line 55
    :cond_a
    iput v4, p0, Lk0/aa;->h:I

    :cond_b
    :goto_4
    add-int/lit8 p3, p2, 0x9

    .line 56
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x8

    aget-byte p1, p1, p2

    const/16 p2, 0x1388

    invoke-static {p3, p1, v5, p2}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_5

    .line 57
    :cond_c
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_12

    add-int/lit8 p3, p2, 0x2

    .line 58
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/h0;->p(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 59
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/h0;->p(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 60
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/h0;->p(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 61
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/h0;->p(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 62
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/h0;->p(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p2, p2, 0x9

    .line 63
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    invoke-static {p1}, Ll0/h0;->p(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto :goto_5

    .line 64
    :cond_d
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v6

    sub-int/2addr p3, v6

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    const/16 p3, 0x3f5

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x3

    .line 65
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    sub-int/2addr v1, v5

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    .line 66
    sget p3, Lk0/nt;->a:I

    const v0, 0x10129

    if-ne p3, v0, :cond_f

    return-void

    :cond_f
    add-int/2addr p2, v2

    .line 67
    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    .line 68
    sget p2, Lu0/b;->o:I

    if-eqz p2, :cond_10

    goto :goto_5

    :cond_10
    if-eqz p1, :cond_11

    .line 69
    sget-object p1, La/b;->O:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 70
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_5

    .line 71
    :cond_11
    sget-object p1, La/b;->O:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 72
    invoke-static {}, Lk0/qt;->f()V

    :cond_12
    :goto_5
    return-void
.end method

.method public W2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/aa;->c:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/aa;->x:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/aa;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/aa;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/aa;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/aa;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/aa;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    iget-object v1, p0, Lk0/aa;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->u:Lo1/y;

    iget-object v1, p0, Lk0/aa;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->v:Lo1/y;

    iget-object v1, p0, Lk0/aa;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lk0/aa;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/aa;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    sget-object v1, Lu0/c;->f:Lo1/y;

    iget-object v2, p0, Lk0/aa;->l:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 14
    sget-object v1, Lu0/c;->w:Lo1/y;

    iget-object v2, p0, Lk0/aa;->q:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 15
    sget-object v1, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/aa;->s:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 16
    sget-object v1, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/aa;->r:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 17
    iget-object v1, p0, Lk0/aa;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 18
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/aa;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 19
    sget-object v0, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 20
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 21
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Ll0/h0;->f:Ljava/lang/Runnable;

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

    const/16 p3, 0x65

    const/4 p4, 0x3

    const/4 v0, 0x0

    if-eq p1, p3, :cond_3

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_4

    .line 1
    array-length p1, p2

    if-lez p1, :cond_4

    .line 2
    aget p1, p2, v0

    const/4 p3, 0x1

    add-int/2addr p1, p3

    aput p1, p2, v0

    .line 3
    aget p1, p2, v0

    if-ge p1, p3, :cond_1

    .line 4
    aput p3, p2, v0

    goto :goto_0

    .line 5
    :cond_1
    aget p1, p2, v0

    if-le p1, p4, :cond_2

    .line 6
    aput p4, p2, v0

    .line 7
    :cond_2
    :goto_0
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Lk0/aa;->n3(I)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 8
    array-length p1, p2

    if-lez p1, :cond_4

    .line 9
    aget p1, p2, v0

    if-ne p1, p4, :cond_4

    const/4 p1, 0x6

    const/16 p2, 0xff

    .line 10
    invoke-virtual {p0, p1, p2}, Lk0/aa;->p3(II)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final m3(BLjava/lang/String;)V
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

.method public final n3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/aa;->A:I

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
    iget-object p1, p0, Lk0/aa;->c:Lo1/g0;

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/aa;->A:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/aa;->c:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final o3(ILjava/lang/String;)V
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

.method public final p3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, -0xe

    aput v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
