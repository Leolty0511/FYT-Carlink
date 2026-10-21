.class public Lk0/zs;
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
    iput v1, v0, Lk0/mt;->i:I

    .line 6
    iput v1, v0, Lk0/mt;->j:I

    .line 7
    iput v1, v0, Lk0/mt;->o:I

    .line 8
    iput v1, v0, Lk0/mt;->i:I

    return-void
.end method

.method public U2([BII)V
    .locals 5

    .line 1
    aget-byte v0, p1, p2

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    const/16 v1, 0x5555

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "re---->:2222 ==   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 3
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    const/4 v1, 0x6

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0x17

    aput v4, v2, v3

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    const/4 v4, 0x2

    aput v3, v2, v4

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, p1, v3

    const/4 v4, 0x3

    aput v3, v2, v4

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    const/4 v4, 0x4

    aput v3, v2, v4

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    const/4 p2, 0x5

    aput p1, v2, p2

    const/4 p1, 0x0

    invoke-static {p3, v0, v2, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public W2()V
    .locals 0

    return-void
.end method
