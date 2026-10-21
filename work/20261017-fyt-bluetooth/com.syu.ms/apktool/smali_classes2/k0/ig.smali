.class public Lk0/ig;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static q:I = 0xa

.field public static r:I = 0xa

.field public static s:I = 0xa

.field public static t:I = 0xa

.field public static u:I = 0xa

.field public static v:I = 0xa


# instance fields
.field public b:I

.field public c:[[I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public j:Lo1/g0;

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:B

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;


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
    iput v0, p0, Lk0/ig;->b:I

    const/16 v1, 0x8

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    const/4 v3, 0x1

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    aput-object v0, v1, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    const/4 v4, 0x3

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    const/4 v5, 0x4

    aput-object v0, v1, v5

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    const/4 v6, 0x5

    aput-object v0, v1, v6

    new-array v0, v2, [I

    fill-array-data v0, :array_6

    const/4 v7, 0x6

    aput-object v0, v1, v7

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v8, 0x7

    aput-object v0, v1, v8

    iput-object v1, p0, Lk0/ig;->c:[[I

    .line 4
    iput v3, p0, Lk0/ig;->d:I

    .line 5
    iput v2, p0, Lk0/ig;->e:I

    .line 6
    iput v4, p0, Lk0/ig;->f:I

    .line 7
    iput v5, p0, Lk0/ig;->g:I

    .line 8
    iput v6, p0, Lk0/ig;->h:I

    .line 9
    iput v7, p0, Lk0/ig;->i:I

    .line 10
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/ig;->j:Lo1/g0;

    .line 11
    new-instance v0, Lk0/ig$a;

    invoke-direct {v0, p0}, Lk0/ig$a;-><init>(Lk0/ig;)V

    iput-object v0, p0, Lk0/ig;->k:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lk0/ig$b;

    invoke-direct {v0, p0}, Lk0/ig$b;-><init>(Lk0/ig;)V

    iput-object v0, p0, Lk0/ig;->l:Ljava/lang/Runnable;

    .line 13
    new-instance v0, Lk0/ig$c;

    invoke-direct {v0, p0}, Lk0/ig$c;-><init>(Lk0/ig;)V

    iput-object v0, p0, Lk0/ig;->m:Ljava/lang/Runnable;

    .line 14
    iput-byte v6, p0, Lk0/ig;->n:B

    .line 15
    new-instance v0, Lk0/ig$d;

    invoke-direct {v0, p0}, Lk0/ig$d;-><init>(Lk0/ig;)V

    iput-object v0, p0, Lk0/ig;->o:Ljava/lang/Runnable;

    .line 16
    new-instance v0, Lk0/ig$e;

    invoke-direct {v0, p0}, Lk0/ig$e;-><init>(Lk0/ig;)V

    iput-object v0, p0, Lk0/ig;->p:Ljava/lang/Runnable;

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
        0x15
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x4c
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x12
    .end array-data
.end method

.method public static a3()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    new-array v0, v2, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x1
        0x3
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x1
        0x2
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x90
        0x1
        0x1
    .end array-data
.end method

.method public static b3()V
    .locals 12

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget v0, Lw0/d;->h:I

    const/high16 v2, 0x10000

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/16 v6, 0x91

    const/16 v7, 0xe3

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x4

    const/4 v11, 0x0

    if-eq v0, v2, :cond_3

    const v2, 0x10001

    if-eq v0, v2, :cond_3

    const v2, 0x10002

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_4

    .line 3
    :cond_2
    sget v0, Lw0/d;->i:I

    add-int/lit16 v0, v0, -0x20a

    .line 4
    div-int/lit8 v0, v0, 0x9

    add-int/2addr v0, v1

    .line 5
    sget v2, Lw0/d;->j:I

    new-array v8, v8, [I

    aput v7, v8, v11

    aput v6, v8, v1

    aput v10, v8, v5

    aput v1, v8, v4

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v8, v10

    shr-int/2addr v0, v11

    and-int/lit16 v0, v0, 0xff

    aput v0, v8, v3

    .line 6
    rem-int/2addr v2, v9

    add-int/2addr v2, v1

    aput v2, v8, v9

    invoke-static {v8}, Lz/k;->s([I)V

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    sget v0, Lw0/d;->i:I

    add-int/lit16 v0, v0, -0x222e

    .line 8
    div-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    .line 9
    sget v2, Lw0/d;->j:I

    and-int/lit16 v2, v2, 0xff

    new-array v8, v8, [I

    aput v7, v8, v11

    aput v6, v8, v1

    aput v10, v8, v5

    aput v11, v8, v4

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v8, v10

    shr-int/2addr v0, v11

    and-int/lit16 v0, v0, 0xff

    aput v0, v8, v3

    .line 10
    rem-int/2addr v2, v9

    add-int/2addr v2, v1

    aput v2, v8, v9

    invoke-static {v8}, Lz/k;->s([I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static c3()V
    .locals 11

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/16 v3, 0x92

    const/4 v4, 0x1

    const/16 v5, 0xe3

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eq v0, v8, :cond_1

    const/16 v10, 0xa

    if-eq v0, v10, :cond_0

    const/4 v10, 0x7

    if-eq v0, v10, :cond_0

    const/16 v10, 0x8

    if-eq v0, v10, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v7, [I

    aput v5, v0, v6

    aput v3, v0, v4

    aput v9, v0, v2

    .line 2
    sget v2, Lu0/b;->r3:I

    aput v2, v0, v9

    sget v2, Lu0/b;->t3:I

    div-int/lit8 v3, v2, 0x3c

    aput v3, v0, v8

    rem-int/lit8 v2, v2, 0x3c

    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v7, [I

    aput v5, v0, v6

    aput v3, v0, v4

    aput v9, v0, v2

    .line 3
    sget v2, Lo0/e;->B:I

    aput v2, v0, v9

    sget v2, Lo0/e;->r:I

    div-int/lit8 v3, v2, 0x3c

    aput v3, v0, v8

    rem-int/lit8 v2, v2, 0x3c

    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

.method public static synthetic d3(Lk0/ig;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/ig;->p:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 10

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ig;->o:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/ig;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/ig;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/ig;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/ig;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->e:I

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lk0/mt;->f:I

    .line 8
    iput v2, v0, Lk0/mt;->g:I

    .line 9
    iput v1, v0, Lk0/mt;->j:I

    .line 10
    iput v2, v0, Lk0/mt;->o:I

    .line 11
    sget v1, Lk0/nt;->c:I

    const/16 v3, 0x35

    if-eq v1, v3, :cond_1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lk0/ig;->j:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 13
    iget-object v0, p0, Lk0/ig;->j:Lo1/g0;

    const/16 v1, 0xa

    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v4

    iget-object v0, p0, Lk0/ig;->j:Lo1/g0;

    const/4 v2, 0x2

    .line 14
    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v5

    iget-object v0, p0, Lk0/ig;->j:Lo1/g0;

    const/4 v2, 0x3

    .line 15
    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v6

    iget-object v0, p0, Lk0/ig;->j:Lo1/g0;

    const/4 v2, 0x4

    .line 16
    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v7

    iget-object v0, p0, Lk0/ig;->j:Lo1/g0;

    const/4 v2, 0x5

    .line 17
    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v8

    iget-object v0, p0, Lk0/ig;->j:Lo1/g0;

    const/4 v2, 0x6

    .line 18
    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v9

    move-object v3, p0

    .line 19
    invoke-virtual/range {v3 .. v9}, Lk0/ig;->e3(IIIIII)V

    .line 20
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 21
    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 4

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/16 v3, 0x1f

    if-eq v0, v3, :cond_1

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    add-int/lit8 p3, p2, 0x4

    .line 3
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    add-int/lit8 p2, p2, 0x2

    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    const/16 p1, 0x1f4

    invoke-static {p3, v0, v1, p1}, Lk0/qt;->j(IIII)V

    goto :goto_3

    :cond_3
    add-int/lit8 p2, p2, 0x2

    .line 4
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 5
    iput p1, p0, Lk0/ig;->b:I

    move p1, v1

    .line 6
    :goto_1
    iget-object p2, p0, Lk0/ig;->c:[[I

    array-length p3, p2

    if-ge p1, p3, :cond_5

    .line 7
    iget p3, p0, Lk0/ig;->b:I

    aget-object v0, p2, p1

    aget v0, v0, v1

    if-ne p3, v0, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 8
    :cond_5
    :goto_2
    array-length p3, p2

    if-ge p1, p3, :cond_6

    if-eqz p1, :cond_6

    .line 9
    aget-object p2, p2, p1

    aget p2, p2, v2

    invoke-static {p2, v1}, Ll0/b0;->l0(II)V

    .line 10
    iget-object p2, p0, Lk0/ig;->c:[[I

    aget-object p1, p2, p1

    aget p1, p1, v2

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    :cond_6
    :goto_3
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ig;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/ig;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/ig;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/ig;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/ig;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/ig;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/4 p3, 0x6

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
    .locals 7

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    aget v1, p2, p1

    const/4 p1, 0x1

    aget v2, p2, p1

    const/4 p1, 0x2

    aget v3, p2, p1

    const/4 p1, 0x3

    aget v4, p2, p1

    const/4 p1, 0x4

    aget v5, p2, p1

    const/4 p1, 0x5

    aget v6, p2, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lk0/ig;->e3(IIIIII)V

    :goto_0
    return-void
.end method

.method public final e3(IIIIII)V
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v3, 0x5

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput p2, v1, v2

    const/4 v4, 0x4

    .line 2
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput p3, v1, v2

    const/4 v5, 0x3

    .line 3
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput p4, v1, v2

    .line 4
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput p5, v1, v2

    .line 5
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput p6, v1, v2

    const/4 v6, 0x2

    .line 6
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x9

    new-array v1, v1, [I

    const/16 v7, 0xe3

    aput v7, v1, v2

    const/16 v2, 0x93

    aput v2, v1, v0

    const/4 v2, 0x6

    aput v2, v1, v6

    aput p1, v1, v5

    aput p2, v1, v4

    aput p3, v1, v3

    aput p4, v1, v2

    const/4 v7, 0x7

    aput p5, v1, v7

    const/16 v7, 0x8

    aput p6, v1, v7

    .line 7
    invoke-static {v1}, Lz/k;->s([I)V

    .line 8
    sput p1, Lk0/ig;->q:I

    .line 9
    iget-object p1, p0, Lk0/ig;->j:Lo1/g0;

    invoke-virtual {p1, v0, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ig;->q:I

    if-eq p1, v1, :cond_0

    .line 10
    iget-object p1, p0, Lk0/ig;->j:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    .line 11
    :cond_0
    sput p2, Lk0/ig;->r:I

    .line 12
    iget-object p1, p0, Lk0/ig;->j:Lo1/g0;

    invoke-virtual {p1, v6, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/ig;->r:I

    if-eq p1, p2, :cond_1

    .line 13
    iget-object p1, p0, Lk0/ig;->j:Lo1/g0;

    invoke-virtual {p1, v6, p2}, Lo1/g0;->g(II)V

    .line 14
    :cond_1
    sput p3, Lk0/ig;->s:I

    .line 15
    iget-object p1, p0, Lk0/ig;->j:Lo1/g0;

    invoke-virtual {p1, v5, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/ig;->s:I

    if-eq p1, p2, :cond_2

    .line 16
    iget-object p1, p0, Lk0/ig;->j:Lo1/g0;

    invoke-virtual {p1, v5, p2}, Lo1/g0;->g(II)V

    .line 17
    :cond_2
    sput p4, Lk0/ig;->t:I

    .line 18
    iget-object p1, p0, Lk0/ig;->j:Lo1/g0;

    invoke-virtual {p1, v4, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/ig;->t:I

    if-eq p1, p2, :cond_3

    .line 19
    iget-object p1, p0, Lk0/ig;->j:Lo1/g0;

    invoke-virtual {p1, v4, p2}, Lo1/g0;->g(II)V

    .line 20
    :cond_3
    sput p5, Lk0/ig;->u:I

    .line 21
    iget-object p1, p0, Lk0/ig;->j:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/ig;->u:I

    if-eq p1, p2, :cond_4

    .line 22
    iget-object p1, p0, Lk0/ig;->j:Lo1/g0;

    invoke-virtual {p1, v3, p2}, Lo1/g0;->g(II)V

    .line 23
    :cond_4
    sput p6, Lk0/ig;->v:I

    .line 24
    iget-object p1, p0, Lk0/ig;->j:Lo1/g0;

    invoke-virtual {p1, v2, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/ig;->v:I

    if-eq p1, p2, :cond_5

    .line 25
    iget-object p1, p0, Lk0/ig;->j:Lo1/g0;

    invoke-virtual {p1, v2, p2}, Lo1/g0;->g(II)V

    :cond_5
    return-void
.end method
