.class public Lk0/xr;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:Ljava/lang/Runnable;

.field public d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/xr;->b:I

    .line 3
    new-instance v0, Lk0/xr$a;

    invoke-direct {v0, p0}, Lk0/xr$a;-><init>(Lk0/xr;)V

    iput-object v0, p0, Lk0/xr;->c:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lk0/xr$b;

    invoke-direct {v0, p0}, Lk0/xr$b;-><init>(Lk0/xr;)V

    iput-object v0, p0, Lk0/xr;->d:Ljava/lang/Runnable;

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
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->i:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/xr;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 8

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    add-int/lit8 v0, p2, 0x3

    .line 4
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa

    const/4 v2, 0x1

    new-array v3, v2, [I

    shr-int/lit8 v4, p3, 0x7

    and-int/2addr v4, v2

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 5
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x35

    new-array v3, v2, [I

    shr-int/lit8 v4, p3, 0x6

    and-int/2addr v4, v2

    aput v4, v3, v5

    .line 6
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x3e

    new-array v3, v2, [I

    shr-int/lit8 p3, p3, 0x5

    and-int/2addr p3, v2

    aput p3, v3, v5

    .line 7
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v1, v2, [I

    shr-int/lit8 v3, v0, 0x6

    and-int/2addr v3, v2

    aput v3, v1, v5

    .line 8
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v1, v2, [I

    shr-int/lit8 v3, v0, 0x5

    and-int/2addr v3, v2

    aput v3, v1, v5

    .line 9
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x31

    new-array v1, v2, [I

    shr-int/lit8 v3, v0, 0x4

    and-int/2addr v3, v2

    aput v3, v1, v5

    .line 10
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x17

    new-array v1, v2, [I

    shr-int/lit8 v3, v0, 0x2

    and-int/2addr v3, v2

    aput v3, v1, v5

    .line 11
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x18

    new-array v1, v2, [I

    shr-int/lit8 v3, v0, 0x1

    and-int/2addr v3, v2

    aput v3, v1, v5

    .line 12
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x32

    new-array v1, v2, [I

    shr-int/2addr v0, v5

    and-int/2addr v0, v2

    aput v0, v1, v5

    .line 13
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v2, [I

    add-int/lit8 v1, p2, 0x4

    .line 14
    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x19

    new-array v0, v2, [I

    .line 15
    aget-byte v1, p1, v1

    shr-int/2addr v1, v5

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x5

    .line 16
    aget-byte v0, p1, p3

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x6

    .line 17
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    const-string v4, "persist.fyt.reversetemp"

    .line 18
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-ne v4, v2, :cond_2

    .line 19
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    .line 20
    aget-byte p3, p1, p3

    and-int/lit16 v3, p3, 0xff

    :cond_2
    const/4 p3, -0x3

    const/4 v1, -0x2

    const/16 v4, 0x1b

    const/16 v6, 0x1f

    if-nez v0, :cond_3

    new-array v0, v2, [I

    aput v1, v0, v5

    .line 21
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    if-ne v0, v6, :cond_4

    new-array v0, v2, [I

    aput p3, v0, v5

    .line 22
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    new-array v7, v2, [I

    mul-int/lit8 v0, v0, 0x5

    add-int/lit16 v0, v0, 0x9b

    aput v0, v7, v5

    .line 23
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 v0, 0x1c

    if-nez v3, :cond_5

    new-array p3, v2, [I

    aput v1, p3, v5

    .line 24
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    if-ne v3, v6, :cond_6

    new-array v1, v2, [I

    aput p3, v1, v5

    .line 25
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_6
    new-array p3, v2, [I

    mul-int/lit8 v3, v3, 0x5

    add-int/lit16 v3, v3, 0x9b

    aput v3, p3, v5

    .line 26
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    :goto_1
    new-array p3, v2, [I

    add-int/lit8 v0, p2, 0x7

    .line 27
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    aput v1, p3, v5

    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x1d

    new-array v1, v2, [I

    .line 28
    aget-byte v0, p1, v0

    shr-int/2addr v0, v5

    and-int/lit8 v0, v0, 0xf

    aput v0, v1, v5

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x20

    new-array v0, v2, [I

    add-int/lit8 v1, p2, 0x8

    .line 29
    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x1e

    new-array v0, v2, [I

    .line 30
    aget-byte v1, p1, v1

    shr-int/2addr v1, v5

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x62

    new-array v0, v2, [I

    add-int/lit8 p2, p2, 0x9

    .line 31
    aget-byte p1, p1, p2

    shr-int/lit8 p1, p1, 0x7

    and-int/2addr p1, v2

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    :goto_2
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/xr;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/xr;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x63

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
    .locals 9

    const/16 p3, 0x82

    const/4 p4, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/16 v2, 0xe3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v5, :cond_2

    const/16 v6, 0x410

    if-eq p1, v6, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object v6, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FinalCanbus.C_CMD_6606 --- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, p2

    invoke-static {p2, v4, v8}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 2
    aget p1, p2, v4

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-array p1, p4, [I

    aput v2, p1, v4

    aput p3, p1, v5

    aput v3, p1, v3

    .line 3
    aget p3, p2, v5

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v0, [I

    aput v2, p1, v4

    const/16 p3, 0x90

    aput p3, p1, v5

    aput v5, p1, v3

    .line 4
    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, p4, [I

    aput v2, p1, v4

    aput p3, p1, v5

    aput v3, p1, v3

    .line 5
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v5

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
