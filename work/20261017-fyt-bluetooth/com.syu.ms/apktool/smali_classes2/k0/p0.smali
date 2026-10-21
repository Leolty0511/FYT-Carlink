.class public Lk0/p0;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:[[I

.field public f:B

.field public g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/p0;->c:I

    const/4 v1, 0x6

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v6, 0x3

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v7, 0x4

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v8, 0x5

    aput-object v4, v2, v8

    iput-object v2, p0, Lk0/p0;->d:[[I

    new-array v1, v1, [[I

    new-array v2, v3, [I

    .line 4
    fill-array-data v2, :array_6

    aput-object v2, v1, v0

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v1, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v1, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v1, v8

    iput-object v1, p0, Lk0/p0;->e:[[I

    .line 5
    iput-byte v0, p0, Lk0/p0;->f:B

    .line 6
    new-instance v0, Lk0/p0$a;

    invoke-direct {v0, p0}, Lk0/p0$a;-><init>(Lk0/p0;)V

    iput-object v0, p0, Lk0/p0;->g:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x1
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x7
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_7
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_a
    .array-data 4
        0x5
        0x4
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x1
    .end array-data
.end method

.method public static synthetic a3(Lk0/p0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/p0;->g:Ljava/lang/Runnable;

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

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x1

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 4

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x10

    if-eq v0, v1, :cond_7

    const/16 p3, 0x72

    if-eq v0, p3, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_8

    add-int/lit8 p2, p2, 0x4

    .line 3
    aget-byte p1, p1, p2

    const/16 p2, 0xff

    and-int/2addr p1, p2

    iput p1, p0, Lk0/p0;->c:I

    const/4 p1, 0x0

    move p3, p1

    .line 4
    :goto_0
    iget-object v0, p0, Lk0/p0;->d:[[I

    array-length v1, v0

    if-ge p3, v1, :cond_2

    .line 5
    iget v1, p0, Lk0/p0;->c:I

    aget-object v2, v0, p3

    aget v2, v2, p1

    if-ne v1, v2, :cond_1

    if-eqz v1, :cond_2

    .line 6
    iput p3, p0, Lk0/p0;->b:I

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    iget v1, p0, Lk0/p0;->c:I

    const/16 v2, 0x2b

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 8
    array-length p2, v0

    if-ge p3, p2, :cond_8

    .line 9
    iget-byte p2, p0, Lk0/p0;->f:B

    if-nez p2, :cond_8

    add-int/2addr p2, v3

    int-to-byte p2, p2

    .line 10
    iput-byte p2, p0, Lk0/p0;->f:B

    .line 11
    sget p2, Lk0/nt;->a:I

    if-ne p2, v2, :cond_3

    .line 12
    aget-object p2, v0, p3

    aget p2, p2, v3

    invoke-static {p2, p1}, Ll0/b0;->l0(II)V

    goto :goto_2

    .line 13
    :cond_3
    iget-object p2, p0, Lk0/p0;->e:[[I

    aget-object p2, p2, p3

    aget p2, p2, v3

    invoke-static {p2, p1}, Ll0/b0;->l0(II)V

    .line 14
    :goto_2
    iget-object p1, p0, Lk0/p0;->g:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 15
    :cond_4
    iget p3, p0, Lk0/p0;->b:I

    array-length v1, v0

    if-ge p3, v1, :cond_6

    if-eq p3, p2, :cond_6

    .line 16
    sget v1, Lk0/nt;->a:I

    if-ne v1, v2, :cond_5

    .line 17
    aget-object p3, v0, p3

    aget p3, p3, v3

    invoke-static {p3, v3}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 18
    :cond_5
    iget-object v0, p0, Lk0/p0;->e:[[I

    aget-object p3, v0, p3

    aget p3, p3, v3

    invoke-static {p3, v3}, Ll0/b0;->l0(II)V

    .line 19
    :goto_3
    iget-object p3, p0, Lk0/p0;->g:Ljava/lang/Runnable;

    invoke-static {p3}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 20
    iput-byte p1, p0, Lk0/p0;->f:B

    .line 21
    :cond_6
    iput p2, p0, Lk0/p0;->b:I

    goto :goto_4

    .line 22
    :cond_7
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public W2()V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method
