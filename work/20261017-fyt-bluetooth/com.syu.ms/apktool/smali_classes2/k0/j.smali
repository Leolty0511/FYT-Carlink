.class public Lk0/j;
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

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/j;->c:I

    const/4 v1, 0x6

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

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/j;->d:[[I

    .line 4
    iput-byte v0, p0, Lk0/j;->e:B

    .line 5
    new-instance v0, Lk0/j$a;

    invoke-direct {v0, p0}, Lk0/j$a;-><init>(Lk0/j;)V

    iput-object v0, p0, Lk0/j;->f:Ljava/lang/Runnable;

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
        0x7
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x8
        0x20
    .end array-data

    :array_4
    .array-data 4
        0x9
        0x21
    .end array-data

    :array_5
    .array-data 4
        0xa
        0x2
    .end array-data
.end method

.method public static synthetic a3(Lk0/j;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/j;->f:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 6

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x7f

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, -0x7e

    const/4 v5, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, -0x10

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v5

    sub-int/2addr p3, v5

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x9

    .line 3
    aget-byte p1, p1, p2

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v4

    aput p3, p2, v3

    const/4 p3, 0x5

    .line 4
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 5
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v4

    aput p3, p2, v3

    const/4 p3, 0x3

    .line 6
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    const-string p2, "persist.syu.reversefrontdoor"

    .line 7
    invoke-static {p2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_2

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 8
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p1, p1, 0x7

    and-int/2addr p1, v4

    aput p1, p2, v3

    .line 9
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    :cond_2
    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 10
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p1, p1, 0x6

    and-int/2addr p1, v4

    aput p1, p2, v3

    .line 11
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    .line 12
    :cond_3
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_8

    add-int/2addr p2, v2

    .line 13
    aget-byte p1, p1, p2

    const/16 p2, 0xff

    and-int/2addr p1, p2

    iput p1, p0, Lk0/j;->c:I

    move p1, v3

    .line 14
    :goto_0
    iget-object p3, p0, Lk0/j;->d:[[I

    array-length v0, p3

    if-ge p1, v0, :cond_5

    .line 15
    iget v0, p0, Lk0/j;->c:I

    aget-object v1, p3, p1

    aget v1, v1, v3

    if-ne v0, v1, :cond_4

    if-eqz v0, :cond_5

    .line 16
    iput p1, p0, Lk0/j;->b:I

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 17
    :cond_5
    :goto_1
    iget v0, p0, Lk0/j;->c:I

    if-eqz v0, :cond_6

    .line 18
    array-length p2, p3

    if-ge p1, p2, :cond_8

    .line 19
    iget-byte p2, p0, Lk0/j;->e:B

    if-nez p2, :cond_8

    add-int/2addr p2, v4

    int-to-byte p2, p2

    .line 20
    iput-byte p2, p0, Lk0/j;->e:B

    .line 21
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 22
    iget-object p1, p0, Lk0/j;->f:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 23
    :cond_6
    iget p1, p0, Lk0/j;->b:I

    array-length v0, p3

    if-ge p1, v0, :cond_7

    if-eq p1, p2, :cond_7

    .line 24
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 25
    iget-object p1, p0, Lk0/j;->f:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 26
    iput-byte v3, p0, Lk0/j;->e:B

    .line 27
    :cond_7
    iput p2, p0, Lk0/j;->b:I

    :cond_8
    :goto_2
    return-void
.end method

.method public W2()V
    .locals 0

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

    return-void
.end method
