.class public Le1/d;
.super Le1/c;
.source "SourceFile"


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final D:I

.field public E:Z

.field public final F:I

.field public final G:I

.field public final H:I

.field public final I:I

.field public final J:Landroid/util/SparseIntArray;

.field public final K:Landroid/util/SparseIntArray;

.field public final L:Landroid/util/SparseIntArray;

.field public final M:Landroid/util/SparseIntArray;

.field public final N:Landroid/util/SparseIntArray;

.field public final O:Landroid/util/SparseIntArray;

.field public P:I

.field public final Q:I

.field public R:Lo1/l0;

.field public S:Lo1/l0;

.field public T:Lo1/l0;

.field public U:Lo1/l0;

.field public V:Lo1/l0;

.field public W:Lo1/l0;

.field public X:I

.field public Y:I

.field public volatile Z:Z

.field public a0:Landroid/os/Handler;

.field public b0:Ljava/lang/Runnable;

.field public c0:[I

.field public d0:[I

.field public final e0:Ljava/lang/Runnable;

.field public final f0:Ljava/lang/Runnable;

.field public final x:Z

.field public final y:Ljava/lang/String;

.field public final z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le1/c;-><init>(Ljava/lang/String;ILandroid/os/Handler;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Le1/d;->x:Z

    const-string p2, "2815S"

    .line 3
    iput-object p2, p0, Le1/d;->y:Ljava/lang/String;

    const-string p2, "persist.syu.camera360.format"

    .line 4
    iput-object p2, p0, Le1/d;->z:Ljava/lang/String;

    const/16 p2, 0x10

    .line 5
    iput p2, p0, Le1/d;->A:I

    const/16 p2, 0x12

    .line 6
    iput p2, p0, Le1/d;->B:I

    const/16 p2, 0x11

    .line 7
    iput p2, p0, Le1/d;->C:I

    const/16 p2, 0xc0

    .line 8
    iput p2, p0, Le1/d;->D:I

    .line 9
    iput-boolean p1, p0, Le1/d;->E:Z

    const/4 p2, 0x3

    .line 10
    iput p2, p0, Le1/d;->F:I

    const/4 p2, 0x2

    .line 11
    iput p2, p0, Le1/d;->G:I

    .line 12
    iput p1, p0, Le1/d;->H:I

    const/4 p3, 0x1

    .line 13
    iput p3, p0, Le1/d;->I:I

    .line 14
    new-instance p3, Landroid/util/SparseIntArray;

    invoke-direct {p3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p3, p0, Le1/d;->J:Landroid/util/SparseIntArray;

    .line 15
    new-instance p3, Landroid/util/SparseIntArray;

    invoke-direct {p3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p3, p0, Le1/d;->K:Landroid/util/SparseIntArray;

    .line 16
    new-instance p3, Landroid/util/SparseIntArray;

    invoke-direct {p3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p3, p0, Le1/d;->L:Landroid/util/SparseIntArray;

    .line 17
    new-instance p3, Landroid/util/SparseIntArray;

    invoke-direct {p3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p3, p0, Le1/d;->M:Landroid/util/SparseIntArray;

    .line 18
    new-instance p3, Landroid/util/SparseIntArray;

    invoke-direct {p3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p3, p0, Le1/d;->N:Landroid/util/SparseIntArray;

    .line 19
    new-instance p3, Landroid/util/SparseIntArray;

    invoke-direct {p3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p3, p0, Le1/d;->O:Landroid/util/SparseIntArray;

    const/4 p3, 0x4

    .line 20
    iput p3, p0, Le1/d;->P:I

    const/16 v0, 0x3e8

    .line 21
    iput v0, p0, Le1/d;->Q:I

    .line 22
    new-instance v0, Lo1/l0;

    invoke-direct {v0}, Lo1/l0;-><init>()V

    iput-object v0, p0, Le1/d;->R:Lo1/l0;

    .line 23
    new-instance v0, Lo1/l0;

    invoke-direct {v0}, Lo1/l0;-><init>()V

    iput-object v0, p0, Le1/d;->S:Lo1/l0;

    .line 24
    new-instance v0, Lo1/l0;

    invoke-direct {v0}, Lo1/l0;-><init>()V

    iput-object v0, p0, Le1/d;->T:Lo1/l0;

    .line 25
    new-instance v0, Lo1/l0;

    invoke-direct {v0}, Lo1/l0;-><init>()V

    iput-object v0, p0, Le1/d;->U:Lo1/l0;

    .line 26
    new-instance v0, Lo1/l0;

    invoke-direct {v0}, Lo1/l0;-><init>()V

    iput-object v0, p0, Le1/d;->V:Lo1/l0;

    .line 27
    new-instance v0, Lo1/l0;

    invoke-direct {v0}, Lo1/l0;-><init>()V

    iput-object v0, p0, Le1/d;->W:Lo1/l0;

    .line 28
    iput p1, p0, Le1/d;->X:I

    .line 29
    iput p1, p0, Le1/d;->Y:I

    .line 30
    iput-boolean p1, p0, Le1/d;->Z:Z

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Le1/d;->a0:Landroid/os/Handler;

    .line 32
    new-instance p1, Le1/d$a;

    invoke-direct {p1, p0}, Le1/d$a;-><init>(Le1/d;)V

    iput-object p1, p0, Le1/d;->b0:Ljava/lang/Runnable;

    const/16 p1, 0x70

    new-array p1, p1, [I

    .line 33
    fill-array-data p1, :array_0

    iput-object p1, p0, Le1/d;->c0:[I

    const/16 p1, 0x6c

    new-array p1, p1, [I

    .line 34
    fill-array-data p1, :array_1

    iput-object p1, p0, Le1/d;->d0:[I

    .line 35
    new-instance p1, Le1/d$b;

    invoke-direct {p1, p0}, Le1/d$b;-><init>(Le1/d;)V

    iput-object p1, p0, Le1/d;->e0:Ljava/lang/Runnable;

    .line 36
    new-instance p1, Le1/d$c;

    invoke-direct {p1, p0}, Le1/d$c;-><init>(Le1/d;)V

    iput-object p1, p0, Le1/d;->f0:Ljava/lang/Runnable;

    const-string p1, "persist.syu.fourcamera2.truck"

    .line 37
    invoke-static {p1, p3}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, p2, :cond_0

    .line 38
    iput p2, p0, Le1/d;->P:I

    .line 39
    :cond_0
    invoke-virtual {p0}, Le1/d;->I()I

    move-result p1

    sput p1, Lu0/b;->s4:I

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Le1/d;->a0:Landroid/os/Handler;

    .line 41
    iget-object p2, p0, Le1/d;->b0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x40
        0x8
        0x23
        0x2
        0x40
        0x4
        0xf5
        0xff
        0x2
        0x46
        0x7
        0xc0
        0xb
        0xc0
        0xc
        0x13
        0xd
        0x71
        0x15
        0x13
        0x16
        0x15
        0x17
        0x0
        0x18
        0x19
        0x19
        0xd0
        0x1a
        0x25
        0x1c
        0x7
        0x1d
        0xbc
        0x20
        0x40
        0x21
        0x46
        0x22
        0x36
        0x23
        0x3c
        0x25
        0xfe
        0x26
        0x1
        0x2b
        0x60
        0x2c
        0x3a
        0x2d
        0x5a
        0x2e
        0x40
        0x30
        0x9e
        0x31
        0x20
        0x32
        0x10
        0x33
        0x90
        0x35
        0x25
        0x38
        0x0
        0x39
        0x18
        0x45
        0x1
        0x40
        0x8
        0x1
        0xf0
        0x2
        0x1
        0x8
        0xf
        0x35
        0x5c
        0x21
        0xb
        0x20
        0x44
        0x34
        0xe4
        0x14
        0x44
        0x15
        0xd
        0x25
        0x4
        0x26
        0x3
        0x27
        0x9
        0x29
        0x2
        0x33
        0x7
        0x33
        0x0
        0x14
        0xc4
        0x14
        0x44
        0x23
        0x3
        0x23
        0x0
        0x40
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x40
        0x8
        0x23
        0x2
        0x40
        0x4
        0x2
        0x44
        0x7
        0xc0
        0xb
        0xc0
        0xc
        0x3
        0xd
        0x73
        0x15
        0x1
        0x16
        0xf0
        0x17
        0x80
        0x18
        0x29
        0x19
        0x38
        0x1a
        0x47
        0x1c
        0xa
        0x1d
        0x50
        0x20
        0x3c
        0x21
        0x46
        0x22
        0x36
        0x23
        0x3c
        0x25
        0xfe
        0x26
        0xd
        0x2b
        0x60
        0x2c
        0x3a
        0x2d
        0x54
        0x2e
        0x40
        0x30
        0xa5
        0x31
        0x86
        0x32
        0xfb
        0x33
        0x60
        0x35
        0x5
        0x38
        0x0
        0x39
        0x1c
        0xf5
        0xf0
        0x45
        0x1
        0x40
        0x8
        0x1
        0xf0
        0x2
        0x1
        0x8
        0xf
        0x35
        0x6b
        0x21
        0xb
        0x20
        0x44
        0x34
        0xe4
        0x15
        0xc
        0x25
        0x8
        0x26
        0x6
        0x27
        0x11
        0x29
        0xa
        0x33
        0x7
        0x33
        0x0
        0x14
        0x33
        0x14
        0xb3
        0x14
        0x33
        0x40
        0x3
    .end array-data
.end method


# virtual methods
.method public A()V
    .locals 0

    .line 1
    invoke-super {p0}, Le1/c;->A()V

    return-void
.end method

.method public B()V
    .locals 1

    .line 1
    sget v0, Lu0/b;->n4:I

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Le1/c;->B()V

    :cond_0
    return-void
.end method

.method public E(III)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Le1/c;->E(III)I

    move-result p1

    return p1
.end method

.method public declared-synchronized F(I)Z
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le1/c;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    :try_start_1
    const-string v0, "persist.syu.camera360.format"

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x6

    if-eq p1, v2, :cond_3

    const/16 v2, 0xd

    if-eq p1, v2, :cond_2

    .line 4
    sget v2, Lu0/b;->s1:I

    .line 5
    iget-object v0, p0, Le1/d;->c0:[I

    invoke-virtual {p0, v0}, Le1/d;->G([I)Z

    move-result v0

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Le1/d;->c0:[I

    invoke-virtual {p0, v0}, Le1/d;->G([I)Z

    move-result v0

    goto :goto_0

    .line 7
    :cond_3
    sget v2, Lu0/b;->s1:I

    .line 8
    iget-object v0, p0, Le1/d;->d0:[I

    invoke-virtual {p0, v0}, Le1/d;->G([I)Z

    move-result v0

    goto :goto_0

    .line 9
    :cond_4
    sget v2, Lu0/b;->s1:I

    .line 10
    iget-object v0, p0, Le1/d;->c0:[I

    invoke-virtual {p0, v0}, Le1/d;->G([I)Z

    move-result v0

    goto :goto_0

    .line 11
    :cond_5
    sget v2, Lu0/b;->s1:I

    .line 12
    iget-object v0, p0, Le1/d;->c0:[I

    invoke-virtual {p0, v0}, Le1/d;->G([I)Z

    move-result v0

    goto :goto_0

    .line 13
    :cond_6
    iget-object v0, p0, Le1/d;->c0:[I

    invoke-virtual {p0, v0}, Le1/d;->G([I)Z

    move-result v0

    goto :goto_0

    .line 14
    :cond_7
    iget-object v0, p0, Le1/d;->c0:[I

    invoke-virtual {p0, v0}, Le1/d;->G([I)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_8

    .line 15
    iput v1, p0, Le1/d;->X:I

    .line 16
    sget-object v1, Lu0/c;->P:Lo1/z;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo1/z;->c(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :cond_8
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public G([I)Z
    .locals 7

    if-eqz p1, :cond_4

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    .line 2
    iget-boolean v0, p0, Le1/c;->o:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v0, p0, Le1/c;->m:Lo1/n;

    monitor-enter v0

    .line 4
    :try_start_0
    array-length v3, p1

    div-int/2addr v3, v1

    const/4 v1, 0x1

    move v5, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    mul-int/lit8 v5, v4, 0x2

    .line 5
    aget v6, p1, v5

    add-int/lit8 v5, v5, 0x1

    .line 6
    aget v5, p1, v5

    .line 7
    invoke-virtual {p0, v6, v5}, Le1/c;->D(II)I

    move-result v5

    if-ltz v5, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_3
    :goto_2
    monitor-exit v0

    return v5

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "flushParams  data is NULL  or  data  size < 2 !!!! "

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public H(I)I
    .locals 8

    .line 1
    invoke-virtual {p0}, Le1/c;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x40

    and-int/lit16 v2, p1, 0xff

    .line 2
    invoke-virtual {p0, v0, v2}, Le1/c;->D(II)I

    .line 3
    invoke-virtual {p0, v1}, Le1/d;->s(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 4
    iget-object v2, p0, Le1/d;->K:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 5
    invoke-static {v2, v1}, Lo1/s0;->c(II)I

    move-result v4

    .line 6
    invoke-static {v2, v3}, Lo1/s0;->c(II)I

    move-result v2

    and-int/lit8 v5, v0, 0x70

    const/16 v6, 0x70

    const/4 v7, 0x4

    if-ne v5, v6, :cond_2

    if-ge v4, v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    if-lez v2, :cond_9

    :goto_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_2
    const/16 v5, 0x60

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_4

    if-ge v2, v7, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    if-lez v4, :cond_9

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_4
    if-gtz v4, :cond_5

    if-lez v2, :cond_9

    :cond_5
    if-ne v4, v7, :cond_6

    move v4, v3

    goto :goto_1

    :cond_6
    if-lez v4, :cond_7

    add-int/lit8 v4, v4, -0x1

    :cond_7
    :goto_1
    if-ne v2, v7, :cond_8

    move v2, v3

    goto :goto_2

    :cond_8
    if-lez v2, :cond_9

    goto :goto_0

    .line 7
    :cond_9
    :goto_2
    iget-object v0, p0, Le1/d;->K:Landroid/util/SparseIntArray;

    invoke-static {v4, v2}, Lo1/s0;->x(II)I

    move-result v5

    invoke-virtual {v0, p1, v5}, Landroid/util/SparseIntArray;->put(II)V

    if-lt v4, v7, :cond_a

    if-gtz v2, :cond_a

    goto :goto_3

    :cond_a
    if-lt v2, v7, :cond_b

    if-gtz v4, :cond_b

    const/4 v1, -0x1

    goto :goto_3

    :cond_b
    move v1, v3

    :goto_3
    return v1
.end method

.method public final I()I
    .locals 3

    const-string v0, "persist.syu.camera360.format"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Le1/c;->f:I

    if-eq v0, v1, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    .line 2
    iput v1, p0, Le1/c;->f:I

    .line 3
    :cond_0
    iget v0, p0, Le1/c;->f:I

    return v0
.end method

.method public J(Z)V
    .locals 4

    .line 1
    sget v0, Lu0/b;->n4:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2
    iput v2, p0, Le1/d;->X:I

    .line 3
    iput v2, p0, Le1/d;->Y:I

    return-void

    .line 4
    :cond_0
    sget v0, Lu0/b;->f:I

    if-eq v0, v1, :cond_1

    const/4 p1, 0x7

    .line 5
    iput p1, p0, Le1/d;->X:I

    .line 6
    iput v2, p0, Le1/d;->Y:I

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Le1/d;->R:Lo1/l0;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lo1/l0;->c(I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Le1/d;->R:Lo1/l0;

    invoke-virtual {v0}, Lo1/l0;->a()V

    if-nez p1, :cond_4

    .line 9
    iget p1, p0, Le1/d;->X:I

    add-int/2addr p1, v1

    iput p1, p0, Le1/d;->X:I

    const/16 v0, 0x8

    if-lt p1, v0, :cond_5

    .line 10
    invoke-virtual {p0}, Le1/d;->t()V

    .line 11
    iget p1, p0, Le1/d;->Y:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_3

    add-int/2addr p1, v1

    .line 12
    iput p1, p0, Le1/d;->Y:I

    .line 13
    :cond_3
    iput v2, p0, Le1/d;->X:I

    goto :goto_0

    .line 14
    :cond_4
    iput v2, p0, Le1/d;->X:I

    :cond_5
    :goto_0
    return-void
.end method

.method public K(I)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Le1/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Le1/c;->f:I

    return p1

    :cond_0
    const/16 v0, 0x40

    and-int/lit16 v1, p1, 0xff

    .line 2
    invoke-virtual {p0, v0, v1}, Le1/c;->D(II)I

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p0, v0}, Le1/d;->s(I)I

    move-result v1

    const/4 v2, 0x7

    and-int/2addr v1, v2

    const/4 v3, 0x2

    const/4 v4, -0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v0, v4

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Le1/d;->s(I)I

    move-result v1

    shr-int/2addr v1, v3

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    move v0, v3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_4
    move v0, v2

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x5

    .line 5
    :cond_1
    :goto_0
    :pswitch_7
    invoke-virtual {p0, p1, v0}, Le1/d;->L(II)I

    move-result v1

    .line 6
    iget-object v2, p0, Le1/d;->M:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 7
    iget-object v2, p0, Le1/d;->M:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 8
    :cond_2
    invoke-virtual {p0, p1, v0}, Le1/d;->L(II)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public L(II)I
    .locals 4

    .line 1
    iget-object v0, p0, Le1/d;->M:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2
    iget-object v2, p0, Le1/d;->O:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, p2, :cond_2

    const/4 v3, 0x1

    if-ne p2, v1, :cond_1

    .line 3
    iget p1, p0, Le1/c;->u:I

    add-int/2addr p1, v3

    iput p1, p0, Le1/c;->u:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 4
    iget p2, p0, Le1/c;->f:I

    goto :goto_0

    .line 5
    :cond_0
    iput v2, p0, Le1/c;->u:I

    goto :goto_0

    .line 6
    :cond_1
    iput v3, p0, Le1/c;->u:I

    .line 7
    iget-object v1, p0, Le1/d;->O:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    move p2, v0

    goto :goto_0

    .line 8
    :cond_2
    iput v2, p0, Le1/c;->u:I

    :goto_0
    return p2
.end method

.method public M(I)Z
    .locals 1

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x40

    .line 1
    invoke-virtual {p0, v0, p1}, Le1/c;->D(II)I

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Le1/d;->s(I)I

    move-result v0

    shr-int/lit8 v0, v0, 0x7

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-super {p0}, Le1/c;->b()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le1/d;->X:I

    .line 3
    iput v0, p0, Le1/d;->Y:I

    return-void
.end method

.method public h(IIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le1/c;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Le1/c;->o:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Le1/c;->i:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    and-int/lit16 p1, p1, 0xff

    .line 2
    invoke-virtual {p0, v0, p1}, Le1/c;->D(II)I

    const/16 p1, 0x10

    and-int/lit16 p2, p2, 0xff

    .line 3
    invoke-virtual {p0, p1, p2}, Le1/c;->D(II)I

    const/16 p1, 0x11

    and-int/lit16 p2, p4, 0xff

    .line 4
    invoke-virtual {p0, p1, p2}, Le1/c;->D(II)I

    const/16 p1, 0x12

    and-int/lit16 p2, p3, 0xff

    .line 5
    invoke-virtual {p0, p1, p2}, Le1/c;->D(II)I

    :cond_1
    :goto_0
    return-void
.end method

.method public j()I
    .locals 11

    .line 1
    iget-boolean v0, p0, Le1/c;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget v0, Lu0/b;->n4:I

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Le1/d;->B()V

    return v1

    :cond_1
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Le1/d;->M(I)Z

    move-result v2

    .line 5
    invoke-virtual {p0, v0}, Le1/d;->H(I)I

    move-result v3

    const/4 v4, 0x3

    .line 6
    invoke-virtual {p0, v4}, Le1/d;->M(I)Z

    move-result v5

    .line 7
    invoke-virtual {p0, v4}, Le1/d;->H(I)I

    move-result v6

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 8
    :cond_2
    iget v5, p0, Le1/d;->P:I

    const/4 v7, 0x1

    if-le v5, v0, :cond_4

    .line 9
    invoke-virtual {p0, v7}, Le1/d;->M(I)Z

    move-result v5

    .line 10
    invoke-virtual {p0, v7}, Le1/d;->H(I)I

    move-result v8

    if-eqz v5, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 11
    :cond_3
    invoke-virtual {p0, v1}, Le1/d;->M(I)Z

    move-result v5

    .line 12
    invoke-virtual {p0, v1}, Le1/d;->H(I)I

    move-result v9

    if-eqz v5, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v8, v1

    move v9, v8

    .line 13
    :cond_5
    :goto_0
    iget v5, p0, Le1/d;->P:I

    div-int/2addr v5, v0

    if-lt v2, v5, :cond_6

    move v2, v7

    goto :goto_1

    :cond_6
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Le1/d;->E:Z

    if-eqz v2, :cond_8

    .line 14
    invoke-virtual {p0, v0}, Le1/d;->K(I)I

    move-result v2

    .line 15
    invoke-virtual {p0, v4}, Le1/d;->K(I)I

    move-result v5

    const/4 v10, -0x1

    if-ne v5, v2, :cond_7

    goto :goto_2

    :cond_7
    move v2, v10

    :goto_2
    if-eq v2, v10, :cond_8

    .line 16
    iget v5, p0, Le1/c;->f:I

    if-eq v5, v2, :cond_8

    .line 17
    iput v2, p0, Le1/c;->f:I

    .line 18
    iput v1, p0, Le1/d;->Y:I

    .line 19
    invoke-virtual {p0, v2}, Le1/d;->F(I)Z

    :cond_8
    if-ne v3, v7, :cond_a

    if-ne v6, v7, :cond_a

    .line 20
    iget v2, p0, Le1/d;->P:I

    if-ne v2, v0, :cond_9

    goto :goto_3

    :cond_9
    if-ne v8, v7, :cond_a

    if-ne v9, v7, :cond_a

    :goto_3
    move v1, v7

    .line 21
    :cond_a
    iget v0, p0, Le1/d;->Y:I

    if-ge v0, v4, :cond_b

    .line 22
    invoke-virtual {p0, v1}, Le1/d;->J(Z)V

    :cond_b
    return v1
.end method

.method public m()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le1/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le1/c;->r:Z

    .line 3
    invoke-virtual {p0}, Le1/d;->I()I

    .line 4
    iget v1, p0, Le1/c;->f:I

    invoke-virtual {p0, v1}, Le1/d;->F(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Le1/d;->w(Z)V

    .line 5
    iget-boolean v1, p0, Le1/c;->i:Z

    if-nez v1, :cond_1

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Le1/c;->f:I

    return-void

    .line 7
    :cond_1
    iget v1, p0, Le1/c;->e:I

    if-eq v1, v0, :cond_2

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0}, Le1/c;->a()V

    .line 9
    invoke-virtual {p0, v1}, Le1/c;->c(I)V

    .line 10
    :cond_2
    invoke-virtual {p0}, Le1/c;->C()V

    .line 11
    iget-boolean v1, p0, Le1/c;->i:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Le1/c;->q:Z

    if-nez v1, :cond_3

    sget v1, Lu0/b;->n4:I

    if-ne v1, v0, :cond_3

    .line 12
    invoke-virtual {p0}, Le1/d;->A()V

    .line 13
    iget-object v0, p0, Le1/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Le1/d;->e0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public s(I)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le1/c;->s(I)I

    move-result p1

    return p1
.end method

.method public t()V
    .locals 1

    .line 1
    invoke-super {p0}, Le1/c;->t()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Le1/d;->w(Z)V

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Lcom/syu/jni/ToolsJni;->cmd_33_reset_videoIc(I)V

    return-void
.end method

.method public w(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Le1/c;->i:Z

    if-eq v0, p1, :cond_2

    .line 2
    iput-boolean p1, p0, Le1/c;->i:Z

    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "syu.imageic.inited"

    .line 3
    invoke-static {v1, v0}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le1/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Le1/d;->f0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Le1/c;->j:Landroid/os/Handler;

    iget-object v0, p0, Le1/d;->f0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    const/16 v0, 0x89

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 6
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le1/c;->i:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le1/d;->t()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Le1/c;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_1
    iget-boolean v0, p0, Le1/c;->i:Z

    return v0
.end method
