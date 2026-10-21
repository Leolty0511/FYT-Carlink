.class public Lk0/ws;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:Ljava/lang/Runnable;

.field public e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ws;->b:I

    .line 3
    iput v0, p0, Lk0/ws;->c:I

    .line 4
    new-instance v0, Lk0/ws$a;

    invoke-direct {v0, p0}, Lk0/ws$a;-><init>(Lk0/ws;)V

    iput-object v0, p0, Lk0/ws;->d:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lk0/ws$b;

    invoke-direct {v0, p0}, Lk0/ws$b;-><init>(Lk0/ws;)V

    iput-object v0, p0, Lk0/ws;->e:Ljava/lang/Runnable;

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
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ws;->d:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->i:I

    .line 6
    iput v2, v0, Lk0/mt;->l:I

    .line 7
    iput v1, v0, Lk0/mt;->b:I

    .line 8
    iput v1, v0, Lk0/mt;->c:I

    .line 9
    iput v1, v0, Lk0/mt;->d:I

    .line 10
    iput v1, v0, Lk0/mt;->o:I

    .line 11
    iput v1, v0, Lk0/mt;->h:I

    .line 12
    iput v1, v0, Lk0/mt;->p:I

    return-void
.end method

.method public U2([BII)V
    .locals 10

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x23

    const/16 v1, 0xf

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p3, v0, :cond_3

    const/16 v0, 0x71

    if-eq p3, v0, :cond_2

    const/16 v0, 0x30

    if-eq p3, v0, :cond_1

    const/16 v0, 0x31

    if-eq p3, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 p3, 0x12

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x3

    .line 3
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x4

    .line 4
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x5

    .line 5
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x16

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x6

    .line 6
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x17

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x7

    .line 7
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x18

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x8

    .line 8
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x19

    new-array v0, v5, [I

    add-int/2addr p2, v2

    .line 9
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    :cond_1
    const/16 p3, 0xe

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x2

    .line 10
    aget-byte v2, p1, v2

    shl-int/2addr v2, v3

    const v6, 0xff00

    and-int/2addr v2, v6

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v2, v7

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x4

    .line 11
    aget-byte v0, p1, v0

    shl-int/2addr v0, v3

    and-int/2addr v0, v6

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    aput v0, p3, v4

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x6

    .line 12
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x11

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x7

    .line 13
    aget-byte v1, p1, v1

    shl-int/2addr v1, v3

    and-int/2addr v1, v6

    add-int/2addr p2, v3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    .line 14
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_20"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p2, 0x4

    aget-byte p3, p1, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p2, 0x6

    aget-byte p3, p1, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_V"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p2, 0x7

    aget-byte p3, p1, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p2, 0x8

    aget-byte p3, p1, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x2

    .line 18
    aget-byte v6, p1, v0

    const/4 v7, 0x2

    shr-int/2addr v6, v7

    and-int/2addr v6, v5

    aput v6, p3, v4

    const/4 v6, 0x7

    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 19
    aget-byte v8, p1, v0

    const/4 v9, 0x3

    shr-int/2addr v8, v9

    and-int/2addr v8, v5

    aput v8, p3, v4

    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 20
    aget-byte v0, p1, v0

    const/4 v3, 0x4

    shr-int/2addr v0, v3

    and-int/2addr v0, v1

    aput v0, p3, v4

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xa

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x3

    .line 21
    aget-byte v8, p1, v2

    and-int/lit16 v8, v8, 0xff

    aput v8, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 22
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    const/16 v0, 0x80

    const/16 v8, 0x7f

    invoke-static {p3, v4, v0, v5, v8}, Lk0/qt;->m(IIIZI)V

    add-int/lit8 p3, p2, 0x5

    .line 23
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    const-string v0, "persist.syu.reversefrontdoor"

    .line 24
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    new-array v0, v5, [I

    shr-int/lit8 v8, p3, 0x1

    and-int/2addr v8, v5

    aput v8, v0, v4

    .line 25
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v7, p3, 0x0

    and-int/2addr v7, v5

    aput v7, v0, v4

    .line 26
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    new-array v0, v5, [I

    shr-int/lit8 v8, p3, 0x0

    and-int/2addr v8, v5

    aput v8, v0, v4

    .line 27
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v7, p3, 0x1

    and-int/2addr v7, v5

    aput v7, v0, v4

    .line 28
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v0, v5, [I

    shr-int/lit8 v7, p3, 0x3

    and-int/2addr v7, v5

    aput v7, v0, v4

    .line 29
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v3, p3, 0x2

    and-int/2addr v3, v5

    aput v3, v0, v4

    .line 30
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v3, p3, 0x4

    and-int/2addr v3, v5

    aput v3, v0, v4

    const/4 v3, 0x5

    .line 31
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v3, p3, 0x5

    and-int/2addr v3, v5

    aput v3, v0, v4

    .line 32
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xb

    new-array v3, v5, [I

    shr-int/lit8 v7, p3, 0x6

    and-int/2addr v7, v5

    aput v7, v3, v4

    .line 33
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xc

    new-array v3, v5, [I

    shr-int/2addr p3, v6

    and-int/2addr p3, v5

    aput p3, v3, v4

    .line 34
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    .line 35
    iget v0, p0, Lk0/ws;->b:I

    if-eq v0, p3, :cond_6

    .line 36
    iput p3, p0, Lk0/ws;->b:I

    if-ne p3, v5, :cond_5

    .line 37
    sget-object p3, La/b;->X:Ljava/lang/String;

    invoke-static {p3}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 38
    sget-object p3, La/b;->Y:Ljava/lang/String;

    invoke-static {p3}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_1

    .line 39
    :cond_5
    sget-object p3, La/b;->X:Ljava/lang/String;

    invoke-static {p3}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 40
    invoke-static {}, Lo1/u;->k()V

    :cond_6
    :goto_1
    const/16 p3, 0xd

    new-array v0, v5, [I

    add-int/lit8 v3, p2, 0x6

    .line 41
    aget-byte v3, p1, v3

    shr-int/2addr v3, v4

    and-int/2addr v1, v3

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    .line 42
    aget-byte p3, p1, v2

    shr-int/2addr p3, v5

    and-int/2addr p3, v5

    aget-byte v0, p1, v2

    shr-int/2addr v0, v4

    and-int/2addr v0, v5

    invoke-static {p3, v0, v4}, Ll0/c0;->b(III)V

    const/16 p3, 0x1a

    new-array v0, v5, [I

    add-int/2addr p2, v6

    .line 43
    aget-byte p1, p1, p2

    shr-int/2addr p1, v4

    and-int/lit16 p1, p1, 0xff

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    :goto_2
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ws;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/ws;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x1b

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
