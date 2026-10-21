.class public Lk0/x5;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static j:[I

.field public static k:[I

.field public static l:[I

.field public static m:[I

.field public static n:I

.field public static o:I

.field public static p:I

.field public static q:I

.field public static r:I

.field public static s:I

.field public static t:I

.field public static u:I

.field public static v:I

.field public static w:I


# instance fields
.field public b:B

.field public c:B

.field public d:I

.field public e:I

.field public f:[[I

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1
    sput-object v1, Lk0/x5;->j:[I

    new-array v1, v0, [I

    .line 2
    sput-object v1, Lk0/x5;->k:[I

    new-array v1, v0, [I

    .line 3
    sput-object v1, Lk0/x5;->l:[I

    new-array v0, v0, [I

    .line 4
    sput-object v0, Lk0/x5;->m:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-byte v0, p0, Lk0/x5;->b:B

    const/4 v1, 0x5

    .line 3
    iput-byte v1, p0, Lk0/x5;->c:B

    .line 4
    iput v0, p0, Lk0/x5;->e:I

    const/16 v2, 0x8

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_0

    aput-object v4, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    const/4 v4, 0x1

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    aput-object v0, v2, v3

    new-array v0, v3, [I

    fill-array-data v0, :array_3

    const/4 v4, 0x3

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_4

    const/4 v4, 0x4

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_5

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_6

    const/4 v1, 0x6

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_7

    const/4 v1, 0x7

    aput-object v0, v2, v1

    iput-object v2, p0, Lk0/x5;->f:[[I

    .line 6
    new-instance v0, Lk0/x5$a;

    invoke-direct {v0, p0}, Lk0/x5$a;-><init>(Lk0/x5;)V

    iput-object v0, p0, Lk0/x5;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/x5$b;

    invoke-direct {v0, p0}, Lk0/x5$b;-><init>(Lk0/x5;)V

    iput-object v0, p0, Lk0/x5;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/x5$c;

    invoke-direct {v0, p0}, Lk0/x5$c;-><init>(Lk0/x5;)V

    iput-object v0, p0, Lk0/x5;->i:Ljava/lang/Runnable;

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
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x1a
    .end array-data
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

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->i:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    iget-object v0, p0, Lk0/x5;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 8
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/x5;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/x5;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/x5;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/x5;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/x5;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/x5;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/x5;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    iget-object v0, p0, Lk0/x5;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    aget-byte v1, p1, p2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-eq v1, v6, :cond_2

    if-eq v1, v2, :cond_1

    if-eq v1, v5, :cond_0

    goto/16 :goto_3

    :cond_0
    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    sput v2, Lk0/x5;->n:I

    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v7, p1, v2

    and-int/lit16 v7, v7, 0xff

    sput v7, Lk0/x5;->o:I

    add-int/lit8 v7, p2, 0x9

    .line 4
    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    sput v8, Lk0/x5;->p:I

    add-int/lit8 v8, p2, 0xa

    .line 5
    aget-byte v9, p1, v8

    and-int/lit16 v9, v9, 0xff

    sput v9, Lk0/x5;->q:I

    add-int/lit8 v9, p2, 0x8

    .line 6
    aget-byte v10, p1, v9

    and-int/lit16 v10, v10, 0xff

    sput v10, Lk0/x5;->r:I

    add-int/lit8 v10, p2, 0x7

    .line 7
    aget-byte v11, p1, v10

    and-int/lit16 v11, v11, 0xff

    sput v11, Lk0/x5;->s:I

    add-int/lit8 v11, p2, 0x6

    .line 8
    aget-byte v12, p1, v11

    and-int/lit16 v12, v12, 0xff

    sput v12, Lk0/x5;->t:I

    add-int/lit8 v12, p2, 0xd

    .line 9
    aget-byte v13, p1, v12

    and-int/lit16 v13, v13, 0xff

    sput v13, Lk0/x5;->u:I

    add-int/lit8 v13, p2, 0xc

    .line 10
    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    sput v14, Lk0/x5;->v:I

    add-int/lit8 v14, p2, 0xb

    .line 11
    aget-byte v15, p1, v14

    and-int/lit16 v15, v15, 0xff

    sput v15, Lk0/x5;->w:I

    new-array v15, v4, [I

    .line 12
    aget-byte v2, p1, v2

    aput v2, v15, v3

    const/4 v2, 0x7

    invoke-static {v2, v15}, Lk0/qt;->y0(I[I)V

    new-array v2, v4, [I

    .line 13
    aget-byte v1, p1, v1

    aput v1, v2, v3

    const/16 v1, 0x8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v4, [I

    add-int/lit8 v2, p2, 0x4

    .line 14
    aget-byte v2, p1, v2

    aput v2, v1, v3

    const/16 v2, 0x9

    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    .line 15
    aget-byte v2, p1, v9

    invoke-static {v2}, Lk0/qt;->c(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    aget-byte v5, p1, v7

    invoke-static {v5}, Lk0/qt;->c(I)I

    move-result v5

    add-int/2addr v2, v5

    aput v2, v1, v3

    aget-byte v2, p1, v8

    invoke-static {v2}, Lk0/qt;->c(I)I

    move-result v2

    aput v2, v1, v4

    sput-object v1, Lk0/x5;->j:[I

    .line 16
    sget-object v2, Lk0/x5;->l:[I

    const/16 v5, 0xa

    invoke-static {v5, v1, v2}, Lk0/qt;->C0(I[I[I)Z

    .line 17
    sget-object v1, Lk0/x5;->j:[I

    sput-object v1, Lk0/x5;->l:[I

    new-array v1, v6, [I

    .line 18
    aget-byte v2, p1, v11

    invoke-static {v2}, Lk0/qt;->c(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    aget-byte v5, p1, v10

    invoke-static {v5}, Lk0/qt;->c(I)I

    move-result v5

    add-int/2addr v2, v5

    aput v2, v1, v3

    aget-byte v2, p1, v13

    invoke-static {v2}, Lk0/qt;->c(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    aget-byte v5, p1, v12

    invoke-static {v5}, Lk0/qt;->c(I)I

    move-result v5

    add-int/2addr v2, v5

    aput v2, v1, v4

    sput-object v1, Lk0/x5;->k:[I

    .line 19
    sget-object v2, Lk0/x5;->m:[I

    const/16 v5, 0xb

    invoke-static {v5, v1, v2}, Lk0/qt;->C0(I[I[I)Z

    .line 20
    sget-object v1, Lk0/x5;->k:[I

    sput-object v1, Lk0/x5;->m:[I

    new-array v1, v4, [I

    .line 21
    aget-byte v2, p1, v14

    invoke-static {v2}, Lk0/qt;->c(I)I

    move-result v2

    aput v2, v1, v3

    const/16 v2, 0xc

    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v1, p2, 0x2

    .line 22
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_8

    .line 23
    invoke-static {}, Lo1/u;->v()I

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v1, p2, 0x2

    .line 24
    aget-byte v1, p1, v1

    const-string v7, "persist.syu.reversefrontdoor"

    .line 25
    invoke-static {v7, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_3

    new-array v7, v4, [I

    shr-int/lit8 v8, v1, 0x7

    and-int/2addr v8, v4

    aput v8, v7, v3

    .line 26
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    new-array v7, v4, [I

    shr-int/lit8 v8, v1, 0x6

    and-int/2addr v8, v4

    aput v8, v7, v3

    .line 27
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v7, v4, [I

    shr-int/lit8 v8, v1, 0x6

    and-int/2addr v8, v4

    aput v8, v7, v3

    .line 28
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    new-array v7, v4, [I

    shr-int/lit8 v8, v1, 0x7

    and-int/2addr v8, v4

    aput v8, v7, v3

    .line 29
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v7, v4, [I

    shr-int/lit8 v8, v1, 0x5

    and-int/2addr v8, v4

    aput v8, v7, v3

    .line 30
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    new-array v2, v4, [I

    shr-int/lit8 v7, v1, 0x4

    and-int/2addr v7, v4

    aput v7, v2, v3

    .line 31
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v4, [I

    shr-int/lit8 v5, v1, 0x3

    and-int/2addr v5, v4

    aput v5, v2, v3

    const/4 v5, 0x5

    .line 32
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v4, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v4

    aput v1, v2, v3

    .line 33
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    .line 34
    :cond_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    add-int/lit8 v1, p2, 0x2

    .line 35
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 36
    aget-byte v2, p1, v2

    and-int/lit16 v1, v1, 0xff

    .line 37
    iput v1, v0, Lk0/x5;->e:I

    move v1, v3

    .line 38
    :goto_1
    iget-object v5, v0, Lk0/x5;->f:[[I

    array-length v6, v5

    if-ge v1, v6, :cond_6

    .line 39
    iget v6, v0, Lk0/x5;->e:I

    aget-object v7, v5, v1

    aget v7, v7, v3

    if-ne v6, v7, :cond_5

    if-eqz v6, :cond_6

    .line 40
    iput v1, v0, Lk0/x5;->d:I

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    and-int/lit16 v2, v2, 0xff

    if-eqz v2, :cond_7

    .line 41
    array-length v2, v5

    if-ge v1, v2, :cond_8

    .line 42
    aget-object v1, v5, v1

    aget v1, v1, v4

    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 43
    :cond_7
    array-length v2, v5

    if-gt v1, v2, :cond_8

    .line 44
    iget v1, v0, Lk0/x5;->d:I

    aget-object v1, v5, v1

    aget v1, v1, v4

    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    :cond_8
    :goto_3
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/x5;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/x5;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/x5;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/x5;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/x5;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/x5;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/x5;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/x5;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lk0/x5;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xd

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

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p2, :cond_5

    .line 1
    array-length p1, p2

    if-lez p1, :cond_5

    const/4 p1, 0x0

    .line 2
    aget p4, p2, p1

    const/4 v0, 0x3

    const/16 v1, 0xe3

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-ltz p4, :cond_1

    aget p4, p2, p1

    const/16 v5, 0x9

    if-gt p4, v5, :cond_1

    new-array p4, v2, [I

    aput v1, p4, p1

    const/16 v5, -0x70

    aput v5, p4, p3

    aput v4, p4, v4

    .line 3
    aget v6, p2, p1

    int-to-byte v6, v6

    aput v6, p4, v0

    aput p3, p4, v3

    invoke-static {p4}, Lz/k;->s([I)V

    new-array p4, v2, [I

    aput v1, p4, p1

    aput v5, p4, p3

    aput v4, p4, v4

    .line 4
    aget p2, p2, p1

    int-to-byte p2, p2

    aput p2, p4, v0

    aput p1, p4, v3

    invoke-static {p4}, Lz/k;->s([I)V

    goto :goto_2

    .line 5
    :cond_1
    aget p4, p2, p1

    const/16 v5, 0xa

    const/16 v6, -0x6f

    if-ne p4, v5, :cond_3

    new-array p2, v3, [B

    .line 6
    fill-array-data p2, :array_0

    .line 7
    iget-byte p4, p0, Lk0/x5;->b:B

    if-ge p4, v3, :cond_2

    add-int/2addr p4, p3

    int-to-byte p4, p4

    .line 8
    iput-byte p4, p0, Lk0/x5;->b:B

    goto :goto_0

    .line 9
    :cond_2
    iput-byte p1, p0, Lk0/x5;->b:B

    :goto_0
    new-array p4, v2, [I

    aput v1, p4, p1

    aput v6, p4, p3

    aput v4, p4, v4

    aput p3, p4, v0

    .line 10
    iget-byte p1, p0, Lk0/x5;->b:B

    aget-byte p1, p2, p1

    aput p1, p4, v3

    invoke-static {p4}, Lz/k;->s([I)V

    goto :goto_2

    .line 11
    :cond_3
    aget p2, p2, p1

    const/16 p4, 0xb

    if-ne p2, p4, :cond_5

    .line 12
    iget-byte p2, p0, Lk0/x5;->c:B

    const/16 p4, 0x8

    if-ge p2, p4, :cond_4

    add-int/2addr p2, p3

    int-to-byte p2, p2

    .line 13
    iput-byte p2, p0, Lk0/x5;->c:B

    goto :goto_1

    :cond_4
    const/4 p2, 0x6

    .line 14
    iput-byte p2, p0, Lk0/x5;->c:B

    :goto_1
    new-array p2, v2, [I

    aput v1, p2, p1

    aput v6, p2, p3

    aput v4, p2, v4

    aput p3, p2, v0

    .line 15
    iget-byte p1, p0, Lk0/x5;->c:B

    aput p1, p2, v3

    invoke-static {p2}, Lz/k;->s([I)V

    :cond_5
    :goto_2
    return-void

    :array_0
    .array-data 1
        0x3t
        0x4t
        0x5t
        0x9t
    .end array-data
.end method
