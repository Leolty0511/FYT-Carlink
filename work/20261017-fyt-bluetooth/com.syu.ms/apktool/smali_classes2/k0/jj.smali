.class public Lk0/jj;
.super Lk0/lt;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    return-void
.end method

.method public static a3(I)I
    .locals 1

    .line 1
    div-int/lit8 p0, p0, 0xc

    const/16 v0, 0xa

    if-le p0, v0, :cond_0

    const/16 p0, 0xf

    :cond_0
    return p0
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
    .locals 2

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x10

    if-eq v0, v1, :cond_3

    const/16 p3, 0x72

    if-eq v0, p3, :cond_2

    const/16 p3, 0x73

    if-eq v0, p3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x8

    .line 2
    aget-byte p3, p1, p2

    const/16 v0, 0x80

    and-int/2addr p3, v0

    if-ne p3, v0, :cond_1

    .line 3
    aget-byte p1, p1, p2

    and-int/lit8 p1, p1, 0x7f

    mul-int/lit8 p1, p1, 0xa

    add-int/lit16 p1, p1, 0x258

    .line 4
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 p3, p2, 0x8

    .line 6
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Lk0/jj;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x9

    .line 7
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Lk0/jj;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0xa

    .line 8
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Lk0/jj;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p2, p2, 0xb

    .line 9
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lk0/jj;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto :goto_0

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :goto_0
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
