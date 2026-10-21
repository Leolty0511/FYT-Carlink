.class public Lv0/l;
.super Lv0/m;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public a:[B

.field public b:I

.field public c:I

.field public d:Ljava/lang/Runnable;

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lv0/m;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lv0/l;->a:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lv0/l;->b:I

    .line 4
    iput v0, p0, Lv0/l;->c:I

    .line 5
    new-instance v0, Lv0/l$a;

    invoke-direct {v0, p0}, Lv0/l$a;-><init>(Lv0/l;)V

    iput-object v0, p0, Lv0/l;->d:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lv0/l$b;

    invoke-direct {v0, p0}, Lv0/l$b;-><init>(Lv0/l;)V

    iput-object v0, p0, Lv0/l;->e:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lv0/l$c;

    invoke-direct {v0, p0}, Lv0/l$c;-><init>(Lv0/l;)V

    iput-object v0, p0, Lv0/l;->f:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic N2(Lv0/l;I)I
    .locals 0

    .line 1
    iput p1, p0, Lv0/l;->c:I

    return p1
.end method

.method public static synthetic O2(Lv0/l;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lv0/l;->a:[B

    return-object p0
.end method


# virtual methods
.method public K2()V
    .locals 4

    .line 1
    sget-object v0, Lu0/c;->I:Lo1/y;

    iget-object v1, p0, Lv0/l;->d:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lv0/l;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lv0/l;->f:Ljava/lang/Runnable;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    iget-object v0, p0, Lv0/l;->a:[B

    const/16 v1, 0x21

    aput-byte v1, v0, v2

    const/16 v1, 0x8

    .line 5
    aput-byte v1, v0, v3

    const/4 v1, 0x2

    const/4 v2, 0x6

    .line 6
    aput-byte v2, v0, v1

    return-void
.end method

.method public L2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->I:Lo1/y;

    iget-object v1, p0, Lv0/l;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lv0/l;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lv0/l;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public M2()V
    .locals 5

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lv0/l;->b:I

    .line 3
    iget-object v2, p0, Lv0/l;->a:[B

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v3, 0x3

    aput-byte v0, v2, v3

    const/4 v0, 0x4

    const/4 v3, 0x2

    .line 4
    aput-byte v3, v2, v0

    const/4 v0, 0x5

    const/4 v3, 0x1

    .line 5
    aput-byte v3, v2, v0

    .line 6
    iget v0, p0, Lv0/l;->c:I

    int-to-byte v0, v0

    const/4 v4, 0x6

    aput-byte v0, v2, v4

    const/4 v0, 0x7

    .line 7
    aput-byte v1, v2, v0

    const/16 v0, 0x8

    .line 8
    aput-byte v1, v2, v0

    .line 9
    :goto_0
    iget-object v0, p0, Lv0/l;->a:[B

    array-length v2, v0

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 10
    iget v2, p0, Lv0/l;->b:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, v2

    iput v0, p0, Lv0/l;->b:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    .line 11
    iget v2, p0, Lv0/l;->b:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 12
    invoke-virtual {p0, v0}, Lv0/l;->P2([B)V

    .line 13
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    new-instance v1, Lv0/l$d;

    invoke-direct {v1, p0}, Lv0/l$d;-><init>(Lv0/l;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public declared-synchronized P2([B)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    sget-object v0, Lz/a;->g:Lo1/e0;

    invoke-virtual {v0, p1}, Lo1/e0;->i([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 2
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lv0/m;->Y1(Ly/b;II)V

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_3

    .line 1
    array-length p1, p2

    if-gtz p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    array-length p1, p2

    new-array p1, p1, [B

    const/4 p3, 0x0

    .line 3
    :goto_0
    array-length p4, p2

    if-ge p3, p4, :cond_2

    .line 4
    aget p4, p2, p3

    int-to-byte p4, p4

    aput-byte p4, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, p1}, Lv0/l;->P2([B)V

    :cond_3
    :goto_1
    return-void
.end method

.method public b([B)V
    .locals 0

    return-void
.end method
