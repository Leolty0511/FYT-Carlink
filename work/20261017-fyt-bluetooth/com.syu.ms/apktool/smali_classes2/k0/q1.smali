.class public Lk0/q1;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:B

.field public f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/q1;->c:I

    const/16 v0, 0xa

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

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v4, 0x4

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v4, 0x7

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v4, 0x8

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_9

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/q1;->d:[[I

    .line 4
    iput-byte v3, p0, Lk0/q1;->e:B

    .line 5
    new-instance v0, Lk0/q1$a;

    invoke-direct {v0, p0}, Lk0/q1$a;-><init>(Lk0/q1;)V

    iput-object v0, p0, Lk0/q1;->f:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x4
        -0x1
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1c
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1b
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x2
    .end array-data
.end method

.method public static synthetic a3(Lk0/q1;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/q1;->f:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x22
        0x9
    .end array-data
.end method

.method public U2([BII)V
    .locals 3

    add-int/lit8 p3, p2, 0x1

    .line 1
    aget-byte p3, p1, p3

    const/16 v0, 0x72

    if-eq p3, v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_5

    add-int/lit8 p2, p2, 0x4

    .line 3
    aget-byte p1, p1, p2

    const/16 p2, 0xff

    and-int/2addr p1, p2

    iput p1, p0, Lk0/q1;->c:I

    const/4 p1, 0x0

    move p3, p1

    .line 4
    :goto_0
    iget-object v0, p0, Lk0/q1;->d:[[I

    array-length v1, v0

    if-ge p3, v1, :cond_2

    .line 5
    iget v1, p0, Lk0/q1;->c:I

    aget-object v2, v0, p3

    aget v2, v2, p1

    if-ne v1, v2, :cond_1

    if-eqz v1, :cond_2

    .line 6
    iput p3, p0, Lk0/q1;->b:I

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    iget v1, p0, Lk0/q1;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 8
    array-length p2, v0

    if-ge p3, p2, :cond_5

    .line 9
    iget-byte p2, p0, Lk0/q1;->e:B

    if-nez p2, :cond_5

    add-int/2addr p2, v2

    int-to-byte p2, p2

    .line 10
    iput-byte p2, p0, Lk0/q1;->e:B

    .line 11
    aget-object p2, v0, p3

    aget p2, p2, v2

    invoke-static {p2, p1}, Ll0/b0;->l0(II)V

    .line 12
    iget-object p1, p0, Lk0/q1;->f:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 13
    :cond_3
    iget p3, p0, Lk0/q1;->b:I

    array-length v1, v0

    if-ge p3, v1, :cond_4

    if-eq p3, p2, :cond_4

    .line 14
    aget-object p3, v0, p3

    aget p3, p3, v2

    invoke-static {p3, v2}, Ll0/b0;->l0(II)V

    .line 15
    iget-object p3, p0, Lk0/q1;->f:Ljava/lang/Runnable;

    invoke-static {p3}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 16
    iput-byte p1, p0, Lk0/q1;->e:B

    .line 17
    :cond_4
    iput p2, p0, Lk0/q1;->b:I

    :cond_5
    :goto_2
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
