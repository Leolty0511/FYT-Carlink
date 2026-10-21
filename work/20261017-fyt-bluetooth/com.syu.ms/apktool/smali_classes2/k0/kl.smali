.class public Lk0/kl;
.super Lk0/lt;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    return-void
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

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->j:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    const/4 v1, 0x1

    .line 7
    iput v1, v0, Lk0/mt;->l:I

    return-void
.end method

.method public U2([BII)V
    .locals 0

    .line 1
    aget-byte p1, p1, p2

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
    .locals 3

    const/16 p3, 0x405

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1
    aget p3, p2, p1

    mul-int/lit16 p3, p3, 0xff

    invoke-static {}, La/f;->w()I

    move-result p4

    div-int/2addr p3, p4

    const/4 p4, 0x2

    .line 2
    aget v0, p2, p4

    mul-int/lit16 v0, v0, 0xff

    invoke-static {}, La/f;->i()I

    move-result v1

    div-int/2addr v0, v1

    .line 3
    invoke-virtual {p0, p2, p4}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 4
    aget p2, p2, v1

    if-nez p2, :cond_1

    const/4 p2, 0x4

    new-array p2, p2, [I

    const/16 v2, 0xe3

    aput v2, p2, v1

    const/16 v1, 0x70

    aput v1, p2, p1

    and-int/lit16 p1, p3, 0xff

    aput p1, p2, p4

    const/4 p1, 0x3

    and-int/lit16 p3, v0, 0xff

    aput p3, p2, p1

    .line 5
    invoke-static {p2}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method
