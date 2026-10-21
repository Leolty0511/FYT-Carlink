.class public Lk0/ft;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public b:B

.field public c:B

.field public d:B

.field public e:B

.field public f:B

.field public g:B

.field public h:B

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:[I

.field public n:I

.field public o:Lo1/o;

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:J

.field public s:I

.field public t:I

.field public u:I

.field public final v:[B

.field public w:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lk0/ft;->m:[I

    const/4 v0, 0x7

    .line 3
    iput v0, p0, Lk0/ft;->n:I

    .line 4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 5
    iput v1, v0, Lk0/mt;->i:I

    .line 6
    iput v1, v0, Lk0/mt;->f:I

    const/4 v1, 0x6

    new-array v1, v1, [I

    .line 7
    fill-array-data v1, :array_1

    iput-object v1, v0, Lk0/mt;->m:[I

    .line 8
    new-instance v0, Lk0/ft$b;

    invoke-direct {v0, p0}, Lk0/ft$b;-><init>(Lk0/ft;)V

    iput-object v0, p0, Lk0/ft;->p:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/ft$c;

    invoke-direct {v0, p0}, Lk0/ft$c;-><init>(Lk0/ft;)V

    iput-object v0, p0, Lk0/ft;->q:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 10
    iput-wide v0, p0, Lk0/ft;->r:J

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lk0/ft;->s:I

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 12
    iput-object v0, p0, Lk0/ft;->v:[B

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lk0/ft;->w:I

    .line 14
    iput v0, p0, Lk0/ft;->x:I

    .line 15
    iput v0, p0, Lk0/ft;->y:I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x1
        0x6
        0x7
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x21
        0x22
        0x24
        0x26
        0x27
        0x29
    .end array-data
.end method

.method public static synthetic a3(Lk0/ft;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/ft;->r:J

    return-wide v0
.end method

.method public static synthetic b3(Lk0/ft;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/ft;->r:J

    return-wide p1
.end method

.method public static synthetic c3(Lk0/ft;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/ft;->s:I

    return p0
.end method

.method public static synthetic d3(Lk0/ft;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/ft;->s:I

    return p1
.end method

.method public static f3([B)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 2
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 3
    aget-byte v1, p0, v1

    const/4 v2, 0x3

    :goto_0
    if-gt v2, v0, :cond_0

    .line 4
    aget-byte v3, p0, v2

    add-int/2addr v1, v3

    int-to-byte v1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 5
    aput-byte v1, p0, v0

    .line 6
    invoke-static {p0}, Lz/k;->q([B)V

    :cond_1
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
    iget-object v0, p0, Lk0/ft;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    sget-object v0, Le/c;->n:Lo1/o;

    iput-object v0, p0, Lk0/ft;->o:Lo1/o;

    .line 4
    new-instance v0, Lk0/ft$a;

    invoke-direct {v0, p0}, Lk0/ft$a;-><init>(Lk0/ft;)V

    sput-object v0, Le/c;->n:Lo1/o;

    .line 5
    sget-object v0, Le/e;->b:Lo1/y;

    iget-object v1, p0, Lk0/ft;->p:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        0x18
        0x0
    .end array-data
.end method

.method public U2([BII)V
    .locals 10

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x1f

    const/16 v1, 0x10

    const v2, 0xff00

    const/4 v3, 0x7

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq p3, v1, :cond_8

    const/16 v8, 0x11

    const/4 v9, 0x3

    if-eq p3, v8, :cond_7

    const/16 v2, 0x17

    if-eq p3, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    add-int/lit8 p3, p2, 0x1

    .line 2
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/ft;->b:B

    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v2, p1, v2

    iput-byte v2, p0, Lk0/ft;->c:B

    add-int/2addr p2, v9

    .line 4
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/ft;->d:B

    const/16 p1, 0xb

    new-array p2, v7, [I

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 5
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x14

    new-array p2, v7, [I

    .line 6
    iget-byte p3, p0, Lk0/ft;->b:B

    shr-int/2addr p3, v9

    and-int/2addr p3, v7

    aput p3, p2, v6

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xd

    new-array p2, v7, [I

    .line 7
    iget-byte p3, p0, Lk0/ft;->b:B

    shr-int/2addr p3, v9

    and-int/2addr p3, v7

    aput p3, p2, v6

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xc

    new-array p2, v7, [I

    .line 8
    iget-byte p3, p0, Lk0/ft;->b:B

    shr-int/2addr p3, v5

    and-int/2addr p3, v7

    aput p3, p2, v6

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x16

    new-array p2, v7, [I

    .line 9
    iget-byte p3, p0, Lk0/ft;->b:B

    shr-int/lit8 p3, p3, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v6

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 10
    iget-byte p1, p0, Lk0/ft;->c:B

    and-int/2addr p1, v3

    iput p1, p0, Lk0/ft;->i:I

    if-gez p1, :cond_1

    .line 11
    iput v6, p0, Lk0/ft;->i:I

    goto :goto_0

    :cond_1
    if-le p1, v3, :cond_2

    .line 12
    iput v3, p0, Lk0/ft;->i:I

    :cond_2
    :goto_0
    const/16 p1, 0x12

    new-array p2, v7, [I

    .line 13
    iget p3, p0, Lk0/ft;->i:I

    aput p3, p2, v6

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 14
    iput v6, p0, Lk0/ft;->j:I

    iput v6, p0, Lk0/ft;->k:I

    iput v6, p0, Lk0/ft;->l:I

    .line 15
    iget-byte p1, p0, Lk0/ft;->c:B

    shr-int/lit8 p2, p1, 0x3

    and-int/2addr p2, v3

    if-eqz p2, :cond_6

    if-eq p2, v7, :cond_5

    if-eq p2, v4, :cond_4

    if-eq p2, v9, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    iput v7, p0, Lk0/ft;->j:I

    .line 17
    iput v7, p0, Lk0/ft;->l:I

    goto :goto_1

    .line 18
    :cond_4
    iput v7, p0, Lk0/ft;->l:I

    goto :goto_1

    .line 19
    :cond_5
    iput v7, p0, Lk0/ft;->k:I

    .line 20
    iput v7, p0, Lk0/ft;->l:I

    goto :goto_1

    .line 21
    :cond_6
    iput v7, p0, Lk0/ft;->k:I

    :goto_1
    new-array p2, v7, [I

    shr-int/2addr p1, v9

    and-int/2addr p1, v3

    aput p1, p2, v6

    .line 22
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xe

    new-array p2, v7, [I

    .line 23
    iget p3, p0, Lk0/ft;->j:I

    aput p3, p2, v6

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xf

    new-array p2, v7, [I

    .line 24
    iget p3, p0, Lk0/ft;->k:I

    aput p3, p2, v6

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    new-array p1, v7, [I

    .line 25
    iget p2, p0, Lk0/ft;->l:I

    aput p2, p1, v6

    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x13

    new-array p2, v7, [I

    .line 26
    iget-byte p3, p0, Lk0/ft;->d:B

    and-int/2addr p3, v0

    aput p3, p2, v6

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    :cond_7
    add-int/lit8 p3, p2, 0x1

    .line 27
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/ft;->b:B

    add-int/lit8 v0, p2, 0x2

    .line 28
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/ft;->c:B

    add-int/lit8 v0, p2, 0x3

    .line 29
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/ft;->d:B

    add-int/lit8 v0, p2, 0x4

    .line 30
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/ft;->e:B

    add-int/2addr p2, v5

    .line 31
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/ft;->f:B

    new-array p1, v7, [I

    shr-int/lit8 p2, p3, 0x2

    and-int/2addr p2, v7

    aput p2, p1, v6

    .line 32
    invoke-static {v5, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, v7, [I

    .line 33
    iget-byte p2, p0, Lk0/ft;->b:B

    shr-int/2addr p2, v9

    and-int/2addr p2, v7

    aput p2, p1, v6

    invoke-static {v7, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, v7, [I

    .line 34
    iget-byte p2, p0, Lk0/ft;->b:B

    shr-int/lit8 p2, p2, 0x4

    and-int/2addr p2, v7

    aput p2, p1, v6

    invoke-static {v4, p1}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x28

    new-array p2, v7, [I

    .line 35
    iget-byte p3, p0, Lk0/ft;->b:B

    shr-int/2addr p3, v5

    and-int/2addr p3, v7

    aput p3, p2, v6

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x29

    new-array p2, v7, [I

    .line 36
    iget-byte p3, p0, Lk0/ft;->c:B

    and-int/2addr p3, v7

    aput p3, p2, v6

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x2a

    new-array p2, v7, [I

    .line 37
    iget-byte p3, p0, Lk0/ft;->c:B

    shr-int/2addr p3, v7

    and-int/2addr p3, v7

    aput p3, p2, v6

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x2b

    new-array p2, v7, [I

    .line 38
    iget-byte p3, p0, Lk0/ft;->c:B

    shr-int/2addr p3, v4

    and-int/2addr p3, v7

    aput p3, p2, v6

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x2c

    new-array p2, v7, [I

    .line 39
    iget-byte p3, p0, Lk0/ft;->c:B

    shr-int/2addr p3, v9

    and-int/2addr p3, v7

    aput p3, p2, v6

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x2d

    new-array p2, v7, [I

    .line 40
    iget-byte p3, p0, Lk0/ft;->c:B

    shr-int/lit8 p3, p3, 0x4

    and-int/2addr p3, v7

    aput p3, p2, v6

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x2f

    new-array p2, v7, [I

    .line 41
    iget-byte p3, p0, Lk0/ft;->c:B

    shr-int/2addr p3, v5

    and-int/2addr p3, v7

    aput p3, p2, v6

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x2e

    new-array p2, v7, [I

    .line 42
    iget-byte p3, p0, Lk0/ft;->e:B

    shl-int/lit8 p3, p3, 0x8

    and-int/2addr p3, v2

    iget-byte v0, p0, Lk0/ft;->f:B

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p3, v0

    aput p3, p2, v6

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    :cond_8
    add-int/lit8 p3, p2, 0x3

    .line 43
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/ft;->d:B

    add-int/lit8 v1, p2, 0x4

    .line 44
    aget-byte v1, p1, v1

    iput-byte v1, p0, Lk0/ft;->e:B

    add-int/lit8 v1, p2, 0x5

    .line 45
    aget-byte v1, p1, v1

    iput-byte v1, p0, Lk0/ft;->f:B

    add-int/lit8 v1, p2, 0x6

    .line 46
    aget-byte v1, p1, v1

    iput-byte v1, p0, Lk0/ft;->g:B

    add-int/2addr p2, v3

    .line 47
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/ft;->h:B

    const/16 p1, 0x1e

    new-array p2, v7, [I

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 48
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    new-array p1, v7, [I

    .line 49
    iget-byte p2, p0, Lk0/ft;->d:B

    shr-int/2addr p2, v7

    and-int/2addr p2, v7

    aput p2, p1, v6

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x20

    new-array p2, v7, [I

    .line 50
    iget-byte p3, p0, Lk0/ft;->d:B

    shr-int/2addr p3, v4

    and-int/2addr p3, v7

    aput p3, p2, v6

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x21

    new-array p2, v7, [I

    .line 51
    iget-byte p3, p0, Lk0/ft;->d:B

    shr-int/lit8 p3, p3, 0x4

    and-int/2addr p3, v7

    aput p3, p2, v6

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x22

    new-array p2, v7, [I

    .line 52
    iget-byte p3, p0, Lk0/ft;->d:B

    shr-int/2addr p3, v5

    and-int/2addr p3, v7

    aput p3, p2, v6

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x23

    new-array p2, v7, [I

    .line 53
    iget-byte p3, p0, Lk0/ft;->d:B

    shr-int/lit8 p3, p3, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v6

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x24

    new-array p2, v7, [I

    .line 54
    iget-byte p3, p0, Lk0/ft;->e:B

    shl-int/lit8 p3, p3, 0x8

    and-int/2addr p3, v2

    iget-byte v0, p0, Lk0/ft;->f:B

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p3, v0

    aput p3, p2, v6

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x25

    new-array p2, v7, [I

    .line 55
    iget-byte p3, p0, Lk0/ft;->g:B

    shl-int/lit8 p3, p3, 0x8

    and-int/2addr p3, v2

    iget-byte v0, p0, Lk0/ft;->h:B

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p3, v0

    aput p3, p2, v6

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    :goto_2
    return-void
.end method

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/ft;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/ft;->o:Lo1/o;

    sput-object v0, Le/c;->n:Lo1/o;

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
    .locals 8

    const/4 p3, 0x5

    const/4 p4, 0x3

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    const/4 v4, 0x6

    const/16 v5, -0x56

    const/4 v6, -0x1

    if-eq p1, v3, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2, v3}, Lk0/ft;->e3([II)Z

    move-result p1

    if-eqz p1, :cond_4

    new-array p1, v4, [B

    aput-byte v6, p1, v2

    aput-byte v5, p1, v3

    aput-byte v0, p1, v1

    aput-byte v3, p1, p4

    .line 2
    aget p2, p2, v2

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    aput-byte v2, p1, p3

    invoke-static {p1}, Lk0/ft;->f3([B)V

    goto/16 :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p2, v3}, Lk0/ft;->e3([II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u53d1\u9001\u6309\u952e"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p2, v2

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo1/b0;->i(Ljava/lang/String;)V

    new-array p1, v4, [B

    aput-byte v6, p1, v2

    aput-byte v5, p1, v3

    aput-byte v1, p1, v1

    aput-byte v3, p1, p4

    .line 5
    aget p2, p2, v2

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    aput-byte v2, p1, p3

    invoke-static {p1}, Lk0/ft;->f3([B)V

    goto/16 :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0, p2, p4}, Lk0/ft;->e3([II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    aget p1, p2, v3

    iput p1, p0, Lk0/ft;->t:I

    .line 8
    aget p1, p2, v1

    iput p1, p0, Lk0/ft;->u:I

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u53d1\u9001\u5750\u6807 X\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lk0/ft;->t:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", Y:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lk0/ft;->u:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo1/b0;->i(Ljava/lang/String;)V

    const/16 p1, 0x9

    new-array p1, p1, [B

    aput-byte v6, p1, v2

    aput-byte v5, p1, v3

    aput-byte v3, p1, v1

    aput-byte v0, p1, p4

    .line 10
    iget p2, p0, Lk0/ft;->t:I

    shr-int/lit8 p4, p2, 0x8

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    aput-byte p4, p1, v0

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p1, p3

    iget p2, p0, Lk0/ft;->u:I

    shr-int/lit8 p3, p2, 0x8

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    aput-byte p3, p1, v4

    const/4 p3, 0x7

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p1, p3

    const/16 p2, 0x8

    aput-byte v2, p1, p2

    invoke-static {p1}, Lk0/ft;->f3([B)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0, p2, v1}, Lk0/ft;->e3([II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8bbe\u7f6e\u547d\u4ee4\uff1a"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p2, v2

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " value:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p2, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo1/b0;->i(Ljava/lang/String;)V

    new-array p1, p3, [I

    const/16 p3, 0xe3

    aput p3, p1, v2

    aput p4, p1, v3

    const/16 p3, 0x20

    aput p3, p1, v1

    .line 13
    aget p3, p2, v2

    aput p3, p1, p4

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public b([B)V
    .locals 6

    if-eqz p1, :cond_b

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget v0, p0, Lk0/ft;->w:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lk0/ft;->w:I

    .line 4
    iput v2, p0, Lk0/ft;->x:I

    .line 5
    iput v2, p0, Lk0/ft;->y:I

    .line 6
    :cond_1
    iget-object v0, p0, Lk0/ft;->v:[B

    iget v1, p0, Lk0/ft;->w:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lk0/ft;->w:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lk0/ft;->w:I

    .line 8
    iget p1, p0, Lk0/ft;->y:I

    const/4 v1, 0x3

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lk0/ft;->v:[B

    const/4 v0, 0x2

    aget-byte p1, p1, v0

    move v3, v1

    .line 10
    :goto_0
    iget v4, p0, Lk0/ft;->y:I

    if-ge v3, v4, :cond_3

    .line 11
    iget-object v4, p0, Lk0/ft;->v:[B

    aget-byte v4, v4, v3

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 p1, p1, -0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 12
    iget-object v3, p0, Lk0/ft;->v:[B

    aget-byte v4, v3, v4

    if-ne p1, v4, :cond_4

    .line 13
    aget-byte p1, v3, v0

    invoke-virtual {p0, v3, v0, p1}, Lk0/ft;->U2([BII)V

    .line 14
    iget p1, p0, Lk0/ft;->y:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lk0/ft;->x:I

    goto :goto_1

    .line 15
    :cond_4
    iput v0, p0, Lk0/ft;->x:I

    .line 16
    :goto_1
    iput v2, p0, Lk0/ft;->y:I

    .line 17
    :cond_5
    iget p1, p0, Lk0/ft;->w:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lk0/ft;->x:I

    if-ge v0, p1, :cond_9

    .line 18
    iget-object v3, p0, Lk0/ft;->v:[B

    aget-byte v4, v3, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v3, v4

    const/16 v5, -0x56

    if-ne v4, v5, :cond_8

    .line 19
    iget v4, p0, Lk0/ft;->y:I

    const/16 v5, 0x200

    if-le v4, v5, :cond_6

    .line 20
    iput v2, p0, Lk0/ft;->y:I

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v0, 0x4

    .line 21
    iput v4, p0, Lk0/ft;->y:I

    .line 22
    iget v5, p0, Lk0/ft;->w:I

    if-lt v4, v5, :cond_7

    sub-int/2addr v4, v0

    .line 23
    iput v4, p0, Lk0/ft;->y:I

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v0, 0x2

    .line 24
    invoke-virtual {p0, v3, v0, v1}, Lk0/ft;->U2([BII)V

    .line 25
    iget v0, p0, Lk0/ft;->y:I

    iput v0, p0, Lk0/ft;->x:I

    .line 26
    iput v2, p0, Lk0/ft;->y:I

    .line 27
    :cond_8
    :goto_3
    iget v0, p0, Lk0/ft;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk0/ft;->x:I

    goto :goto_2

    :cond_9
    :goto_4
    if-eqz v0, :cond_b

    .line 28
    iget p1, p0, Lk0/ft;->w:I

    sub-int/2addr p1, v0

    iput p1, p0, Lk0/ft;->w:I

    if-eqz p1, :cond_a

    .line 29
    iget-object v1, p0, Lk0/ft;->v:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    :cond_a
    iput v2, p0, Lk0/ft;->x:I

    :cond_b
    :goto_5
    return-void
.end method

.method public final e3([II)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    array-length p1, p1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
