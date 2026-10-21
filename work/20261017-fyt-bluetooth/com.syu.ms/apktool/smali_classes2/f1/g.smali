.class public Lf1/g;
.super Lf1/q;
.source "SourceFile"


# instance fields
.field public final P:Z

.field public Q:Lf1/q$c;

.field public R:Lf1/q$c;

.field public S:I

.field public T:I

.field public U:Lq1/b;

.field public V:Lo1/l0;

.field public W:Z


# direct methods
.method public constructor <init>(ILp1/a;ILandroid/os/Handler;)V
    .locals 6

    const/16 v1, 0x10

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lf1/q;-><init>(IILp1/a;ILandroid/os/Handler;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lf1/g;->P:Z

    .line 3
    new-instance p1, Lf1/q$c;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Lf1/q$c;-><init>(II)V

    iput-object p1, p0, Lf1/g;->Q:Lf1/q$c;

    .line 4
    new-instance p1, Lf1/q$c;

    invoke-direct {p1, p2, p2}, Lf1/q$c;-><init>(II)V

    iput-object p1, p0, Lf1/g;->R:Lf1/q$c;

    .line 5
    iput p2, p0, Lf1/g;->S:I

    iput p2, p0, Lf1/g;->T:I

    .line 6
    new-instance p1, Lq1/b;

    const/4 p2, 0x0

    const/4 p3, 0x3

    invoke-direct {p1, p2, p3}, Lq1/b;-><init>(II)V

    iput-object p1, p0, Lf1/g;->U:Lq1/b;

    .line 7
    new-instance p1, Lo1/l0;

    invoke-direct {p1}, Lo1/l0;-><init>()V

    iput-object p1, p0, Lf1/g;->V:Lo1/l0;

    .line 8
    iput-boolean p2, p0, Lf1/g;->W:Z

    return-void
.end method


# virtual methods
.method public M()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, v1}, Lf1/q;->J(Z)V

    .line 3
    iget-boolean v0, p0, Lf1/q;->r:Z

    return v0
.end method

.method public final X(I)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lf1/q;->u:Lp1/a;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lf1/q;->u:Lp1/a;

    const/4 v3, -0x1

    if-eqz v2, :cond_5

    iget-boolean v4, p0, Lf1/q;->v:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [I

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x0

    aput v5, v4, v6

    and-int/lit16 p1, p1, 0xff

    aput p1, v4, v1

    .line 4
    iget p1, p0, Lf1/q;->w:I

    invoke-interface {v2, v1, p1, v6, v4}, Lp1/a;->e(IIZ[I)[I

    move-result-object p1

    if-eqz p1, :cond_4

    .line 5
    array-length v2, p1

    if-gtz v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    array-length v2, p1

    if-ne v2, v1, :cond_3

    .line 7
    aget p1, p1, v6

    and-int/lit16 p1, p1, 0xff

    monitor-exit v0

    return p1

    .line 8
    :cond_3
    aget v2, p1, v6

    and-int/lit16 v2, v2, 0xff

    aget p1, p1, v1

    shl-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    and-int/2addr p1, v2

    const v1, 0xffff

    and-int/2addr p1, v1

    monitor-exit v0

    return p1

    .line 9
    :cond_4
    :goto_0
    monitor-exit v0

    return v3

    .line 10
    :cond_5
    :goto_1
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final Y(I)I
    .locals 10

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lf1/q;->u:Lp1/a;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lf1/q;->u:Lp1/a;

    const/4 v3, -0x1

    if-eqz v2, :cond_4

    iget-boolean v4, p0, Lf1/q;->v:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    new-array v5, v4, [I

    shr-int/lit8 v6, p1, 0x8

    and-int/lit16 v6, v6, 0xff

    const/4 v7, 0x0

    aput v6, v5, v7

    and-int/lit16 v6, p1, 0xff

    aput v6, v5, v1

    .line 4
    iget v6, p0, Lf1/q;->w:I

    invoke-interface {v2, v1, v6, v7, v5}, Lp1/a;->e(IIZ[I)[I

    move-result-object v2

    if-eqz v2, :cond_3

    .line 5
    array-length v5, v2

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    aget v2, v2, v7

    and-int/lit16 v3, v2, 0xff

    :cond_3
    :goto_0
    const-string v2, "Chip3587"

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "READ [%02X  - %04X] -- value : %02X"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, p0, Lf1/q;->w:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v1

    and-int/lit16 p1, v3, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v4

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "   i2c: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lf1/q;->u:Lp1/a;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    monitor-exit v0

    return v3

    .line 8
    :cond_4
    :goto_1
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final Z(II)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [I

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x0

    aput v3, v2, v4

    and-int/lit16 p1, p1, 0xff

    aput p1, v2, v1

    new-array p1, v0, [I

    and-int/lit16 v0, p2, 0xff

    aput v0, p1, v4

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    aput p2, p1, v1

    .line 2
    iget-object p2, p0, Lf1/q;->u:Lp1/a;

    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lf1/q;->v:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lf1/q;->w:I

    invoke-interface {p2, v0, v2, p1}, Lp1/a;->d(I[I[I)I

    move-result p2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, -0x1

    .line 3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v1, [Ljava/lang/Object;

    iget v5, p0, Lf1/q;->w:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v5, "WRITE [%02X  - "

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lo1/s0;->s([I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lo1/s0;->s([I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]  result : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " chipid : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lf1/q;->h:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Chip3587"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    return v1
.end method

.method public a()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lf1/g;->T:I

    .line 2
    iput v0, p0, Lf1/g;->S:I

    .line 3
    iget-object v1, p0, Lf1/g;->Q:Lf1/q$c;

    iput v0, v1, Lf1/q$c;->a:I

    .line 4
    iput v0, v1, Lf1/q$c;->b:I

    .line 5
    iget-object v0, p0, Lf1/g;->U:Lq1/b;

    invoke-virtual {v0}, Lq1/b;->a()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lf1/g;->W:Z

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============================>> 03 update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf1/g;->Q:Lf1/q$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " chipid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chip3587"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lf1/g;->Q:Lf1/q$c;

    iget v0, v0, Lf1/q$c;->a:I

    invoke-virtual {p0, v0, v0}, Lf1/q;->y(II)[I

    move-result-object v0

    const/16 v1, 0xad

    invoke-static {v1, v0}, Lu0/d;->I3(I[I)V

    .line 9
    invoke-super {p0}, Lf1/q;->a()V

    return-void
.end method

.method public final a0(II)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [I

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x0

    aput v3, v2, v4

    and-int/lit16 p1, p1, 0xff

    aput p1, v2, v1

    const/4 p1, 0x4

    new-array p1, p1, [I

    and-int/lit16 v3, p2, 0xff

    aput v3, p1, v4

    shr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, p1, v1

    shr-int/lit8 v3, p2, 0x10

    and-int/lit16 v3, v3, 0xff

    aput v3, p1, v0

    const/4 v0, 0x3

    shr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    aput p2, p1, v0

    .line 2
    iget-object p2, p0, Lf1/q;->u:Lp1/a;

    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lf1/q;->v:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lf1/q;->w:I

    invoke-interface {p2, v0, v2, p1}, Lp1/a;->d(I[I[I)I

    move-result p2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, -0x1

    .line 3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v1, [Ljava/lang/Object;

    iget v5, p0, Lf1/q;->w:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v5, "WRITE [%02X  - "

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lo1/s0;->s([I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lo1/s0;->s([I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]  result : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " chipid : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lf1/q;->h:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Chip3587"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    return v1
.end method

.method public final b0(II)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x0

    aput v2, v0, v3

    and-int/lit16 p1, p1, 0xff

    aput p1, v0, v1

    .line 2
    iget-object p1, p0, Lf1/q;->u:Lp1/a;

    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lf1/q;->v:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Lf1/q;->w:I

    new-array v4, v1, [I

    aput p2, v4, v3

    invoke-interface {p1, v2, v0, v4}, Lp1/a;->d(I[I[I)I

    move-result p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    .line 3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lf1/q;->w:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "WRITE [%02X  - "

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lo1/s0;->s([I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v3

    const-string p2, "%02X"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]  result : "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " chipid : "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lf1/q;->h:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Chip3587"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    return v1
.end method

.method public declared-synchronized c(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lf1/q;->c(I)V

    .line 2
    iget v0, p0, Lf1/q;->i:I

    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Lf1/q;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sys.c8918.w"

    const/16 v1, 0x500

    .line 4
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lf1/g;->S:I

    const-string v0, "sys.c8918.h"

    const/16 v1, 0x2d0

    .line 5
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lf1/g;->T:I

    .line 6
    :cond_1
    iput p1, p0, Lf1/q;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public k()I
    .locals 10

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const v0, 0x8520

    invoke-virtual {p0, v0}, Lf1/g;->Y(I)I

    move-result v0

    shr-int/lit8 v0, v0, 0x4

    and-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    move v0, v2

    .line 2
    :cond_1
    iget-object v3, p0, Lf1/g;->U:Lq1/b;

    invoke-virtual {v3, v0}, Lq1/b;->g(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 3
    :goto_1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_7

    iget-object v3, p0, Lf1/g;->U:Lq1/b;

    invoke-virtual {v3}, Lq1/b;->e()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v0, :cond_5

    const v3, 0x8583

    .line 4
    invoke-virtual {p0, v3}, Lf1/g;->Y(I)I

    move-result v3

    const v5, 0x8582

    .line 5
    invoke-virtual {p0, v5}, Lf1/g;->Y(I)I

    move-result v5

    .line 6
    invoke-static {v3, v5}, Lo1/s0;->x(II)I

    move-result v3

    const v5, 0x8589

    .line 7
    invoke-virtual {p0, v5}, Lf1/g;->Y(I)I

    move-result v5

    const v6, 0x8588

    .line 8
    invoke-virtual {p0, v6}, Lf1/g;->Y(I)I

    move-result v6

    .line 9
    invoke-static {v5, v6}, Lo1/s0;->x(II)I

    move-result v5

    const/16 v6, 0x64

    if-le v3, v6, :cond_3

    if-le v5, v6, :cond_3

    move v6, v1

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    if-eqz v6, :cond_6

    .line 10
    iget v7, p0, Lf1/g;->T:I

    if-ne v7, v5, :cond_4

    iget v7, p0, Lf1/g;->S:I

    if-eq v3, v7, :cond_6

    .line 11
    :cond_4
    iput v5, p0, Lf1/g;->T:I

    .line 12
    iput v3, p0, Lf1/g;->S:I

    goto :goto_3

    :cond_5
    move v6, v0

    :cond_6
    :goto_3
    if-nez v6, :cond_8

    .line 13
    iput v4, p0, Lf1/g;->T:I

    .line 14
    iput v4, p0, Lf1/g;->S:I

    goto :goto_4

    :cond_7
    move v6, v0

    .line 15
    :cond_8
    :goto_4
    iget-object v3, p0, Lf1/g;->V:Lo1/l0;

    const/16 v5, 0xc8

    invoke-virtual {v3, v5}, Lo1/l0;->c(I)Z

    move-result v3

    const-string v5, " chipid : "

    const-string v7, "Chip3587"

    if-eqz v3, :cond_9

    .line 16
    iget-object v3, p0, Lf1/g;->V:Lo1/l0;

    invoke-virtual {v3}, Lo1/l0;->a()V

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  CHECK SIGNAL : imagType :  "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lf1/q;->i:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " last  imagFormat :  "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lf1/q;->k:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "  hasSignal  : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mSignalMarker: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lf1/g;->U:Lq1/b;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lf1/q;->h:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_9
    iget-object v0, p0, Lf1/g;->Q:Lf1/q$c;

    iget v3, v0, Lf1/q$c;->a:I

    iget v8, p0, Lf1/g;->S:I

    if-ne v3, v8, :cond_b

    iget v3, v0, Lf1/q$c;->b:I

    iget v9, p0, Lf1/g;->T:I

    if-eq v3, v9, :cond_a

    goto :goto_5

    .line 19
    :cond_a
    iget-boolean v0, p0, Lf1/g;->W:Z

    if-eqz v0, :cond_e

    .line 20
    iput-boolean v2, p0, Lf1/g;->W:Z

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============================>> 00 SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf1/g;->Q:Lf1/q$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " videoWidth : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/g;->S:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " videoHeight : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/g;->T:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xad

    .line 22
    iget-object v1, p0, Lf1/g;->Q:Lf1/q$c;

    iget v2, v1, Lf1/q$c;->a:I

    iget v1, v1, Lf1/q$c;->b:I

    invoke-virtual {p0, v2, v1}, Lf1/q;->y(II)[I

    move-result-object v1

    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    goto :goto_7

    .line 23
    :cond_b
    :goto_5
    iput v8, v0, Lf1/q$c;->a:I

    .line 24
    iget v2, p0, Lf1/g;->T:I

    iput v2, v0, Lf1/q$c;->b:I

    .line 25
    iput-boolean v1, p0, Lf1/g;->W:Z

    if-eq v2, v4, :cond_d

    if-ne v8, v4, :cond_c

    goto :goto_6

    :cond_c
    const/16 v4, 0xe

    .line 26
    :cond_d
    :goto_6
    iput v4, p0, Lf1/q;->k:I

    :cond_e
    :goto_7
    return v6
.end method

.method public o()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lf1/q;->G(II)V

    const/16 v0, 0xb

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Lf1/q;->G(II)V

    const/16 v0, 0xc

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, v0, v1}, Lf1/q;->G(II)V

    const/16 v0, 0xd

    const/4 v1, 0x3

    .line 4
    invoke-virtual {p0, v0, v1}, Lf1/q;->G(II)V

    const/16 v0, 0xe

    const/4 v1, 0x4

    .line 5
    invoke-virtual {p0, v0, v1}, Lf1/q;->G(II)V

    return-void
.end method

.method public p()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/16 v2, 0xf00

    .line 1
    invoke-virtual {v0, v1, v2}, Lf1/g;->Z(II)Z

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lf1/g;->Z(II)Z

    const/16 v3, 0x20

    const/16 v4, 0x3063

    .line 3
    invoke-virtual {v0, v3, v4}, Lf1/g;->Z(II)Z

    const/16 v4, 0x22

    const/16 v5, 0x203

    .line 4
    invoke-virtual {v0, v4, v5}, Lf1/g;->Z(II)Z

    const/16 v5, 0x213

    .line 5
    invoke-virtual {v0, v4, v5}, Lf1/g;->Z(II)Z

    const/16 v5, 0x16

    const/16 v6, 0x73f

    .line 6
    invoke-virtual {v0, v5, v6}, Lf1/g;->Z(II)Z

    const v7, 0x8502

    const/16 v8, 0xff

    .line 7
    invoke-virtual {v0, v7, v8}, Lf1/g;->b0(II)Z

    const v9, 0x850b

    const/16 v10, 0x1f

    .line 8
    invoke-virtual {v0, v9, v10}, Lf1/g;->b0(II)Z

    const/16 v11, 0x14

    .line 9
    invoke-virtual {v0, v11, v6}, Lf1/g;->Z(II)Z

    const v12, 0x8512

    const/16 v13, 0xfe

    .line 10
    invoke-virtual {v0, v12, v13}, Lf1/g;->b0(II)Z

    const v12, 0x851b

    const/16 v13, 0x1d

    .line 11
    invoke-virtual {v0, v12, v13}, Lf1/g;->b0(II)Z

    const v12, 0x8532

    const/16 v13, 0x80

    .line 12
    invoke-virtual {v0, v12, v13}, Lf1/g;->b0(II)Z

    const v12, 0x8536

    const/16 v14, 0x40

    .line 13
    invoke-virtual {v0, v12, v14}, Lf1/g;->b0(II)Z

    const v12, 0x853f

    const/16 v15, 0xa

    .line 14
    invoke-virtual {v0, v12, v15}, Lf1/g;->b0(II)Z

    const v12, 0x8537

    .line 15
    invoke-virtual {v0, v12, v1}, Lf1/g;->b0(II)Z

    const v12, 0x8543

    const/16 v10, 0x32

    .line 16
    invoke-virtual {v0, v12, v10}, Lf1/g;->b0(II)Z

    const v10, 0x8544

    const/16 v12, 0x10

    .line 17
    invoke-virtual {v0, v10, v12}, Lf1/g;->b0(II)Z

    const v10, 0x8545

    const/16 v6, 0x31

    .line 18
    invoke-virtual {v0, v10, v6}, Lf1/g;->b0(II)Z

    const v6, 0x8546

    const/16 v10, 0x2d

    .line 19
    invoke-virtual {v0, v6, v10}, Lf1/g;->b0(II)Z

    const v6, 0x85d1

    const/4 v9, 0x1

    .line 20
    invoke-virtual {v0, v6, v9}, Lf1/g;->b0(II)Z

    const v6, 0x8560

    const/16 v7, 0x24

    .line 21
    invoke-virtual {v0, v6, v7}, Lf1/g;->b0(II)Z

    const v6, 0x8563

    const/16 v7, 0x11

    .line 22
    invoke-virtual {v0, v6, v7}, Lf1/g;->b0(II)Z

    const v6, 0x8564

    const/16 v7, 0xf

    .line 23
    invoke-virtual {v0, v6, v7}, Lf1/g;->b0(II)Z

    const v6, 0x8531

    .line 24
    invoke-virtual {v0, v6, v9}, Lf1/g;->b0(II)Z

    const v6, 0x8532

    .line 25
    invoke-virtual {v0, v6, v13}, Lf1/g;->b0(II)Z

    const v6, 0x8540

    const/16 v7, 0x8c

    .line 26
    invoke-virtual {v0, v6, v7}, Lf1/g;->b0(II)Z

    const v6, 0x8541

    .line 27
    invoke-virtual {v0, v6, v15}, Lf1/g;->b0(II)Z

    const v6, 0x8630

    const/16 v7, 0xb0

    .line 28
    invoke-virtual {v0, v6, v7}, Lf1/g;->b0(II)Z

    const v6, 0x8631

    const/16 v7, 0x1e

    .line 29
    invoke-virtual {v0, v6, v7}, Lf1/g;->b0(II)Z

    const v6, 0x8632

    const/4 v5, 0x4

    .line 30
    invoke-virtual {v0, v6, v5}, Lf1/g;->b0(II)Z

    const v5, 0x8670

    .line 31
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8600

    .line 32
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8602

    const/16 v6, 0xf3

    .line 33
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8603

    .line 34
    invoke-virtual {v0, v5, v1}, Lf1/g;->b0(II)Z

    const v5, 0x8604

    const/16 v6, 0xc

    .line 35
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8606

    const/4 v6, 0x5

    .line 36
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8607

    .line 37
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8620

    .line 38
    invoke-virtual {v0, v5, v4}, Lf1/g;->b0(II)Z

    const v5, 0x8640

    .line 39
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8641

    const/16 v6, 0x65

    .line 40
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8642

    const/4 v6, 0x7

    .line 41
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8652

    .line 42
    invoke-virtual {v0, v5, v1}, Lf1/g;->b0(II)Z

    const v5, 0x85aa

    const/16 v6, 0x50

    .line 43
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x85af

    const/16 v6, 0xc6

    .line 44
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x85ab

    .line 45
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8665

    .line 46
    invoke-virtual {v0, v5, v12}, Lf1/g;->b0(II)Z

    const v5, 0x8709

    .line 47
    invoke-virtual {v0, v5, v8}, Lf1/g;->b0(II)Z

    const v5, 0x870b

    const/16 v6, 0x2c

    .line 48
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x870c

    const/16 v6, 0x53

    .line 49
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x870d

    .line 50
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x870e

    const/16 v6, 0x30

    .line 51
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x9007

    .line 52
    invoke-virtual {v0, v5, v12}, Lf1/g;->b0(II)Z

    const v5, 0x85c7

    .line 53
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x85ca

    .line 54
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x85cb

    .line 55
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8c00

    .line 56
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c01

    .line 57
    invoke-virtual {v0, v5, v8}, Lf1/g;->b0(II)Z

    const v5, 0x8c02

    .line 58
    invoke-virtual {v0, v5, v8}, Lf1/g;->b0(II)Z

    const v5, 0x8c03

    .line 59
    invoke-virtual {v0, v5, v8}, Lf1/g;->b0(II)Z

    const v5, 0x8c04

    .line 60
    invoke-virtual {v0, v5, v8}, Lf1/g;->b0(II)Z

    const v5, 0x8c05

    .line 61
    invoke-virtual {v0, v5, v8}, Lf1/g;->b0(II)Z

    const v5, 0x8c06

    .line 62
    invoke-virtual {v0, v5, v8}, Lf1/g;->b0(II)Z

    const v5, 0x8c07

    .line 63
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c08

    const/16 v6, 0x52

    .line 64
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c09

    const/16 v6, 0x62

    .line 65
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c0a

    const/16 v6, 0x88

    .line 66
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c0b

    .line 67
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c0c

    .line 68
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c0d

    .line 69
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c0e

    .line 70
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c0f

    .line 71
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c10

    const/16 v6, 0x1c

    .line 72
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c11

    const/16 v6, 0x15

    .line 73
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c12

    .line 74
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8c13

    const/4 v6, 0x3

    .line 75
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c14

    .line 76
    invoke-virtual {v0, v5, v13}, Lf1/g;->b0(II)Z

    const v5, 0x8c15

    .line 77
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c16

    .line 78
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c17

    const/16 v6, 0x78

    .line 79
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c18

    .line 80
    invoke-virtual {v0, v5, v15}, Lf1/g;->b0(II)Z

    const v5, 0x8c19

    const/16 v6, 0xd

    .line 81
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c1a

    const/16 v6, 0xc9

    .line 82
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c1b

    const/16 v6, 0xa0

    .line 83
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c1c

    const/16 v6, 0x57

    .line 84
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c1d

    const/16 v6, 0x47

    .line 85
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c1e

    const/16 v6, 0x98

    .line 86
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c1f

    const/16 v6, 0x27

    .line 87
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c20

    const/16 v6, 0x12

    .line 88
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c21

    const/16 v6, 0x48

    .line 89
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c22

    const/16 v6, 0x4c

    .line 90
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c23

    .line 91
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c24

    .line 92
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c25

    .line 93
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c26

    .line 94
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8c27

    .line 95
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8c28

    .line 96
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8c29

    .line 97
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8c2a

    .line 98
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8c2b

    .line 99
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8c2c

    .line 100
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8c2d

    .line 101
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8c2e

    .line 102
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8c2f

    .line 103
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8c30

    .line 104
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8c31

    .line 105
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8c32

    .line 106
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8c33

    .line 107
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8c34

    .line 108
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8c35

    .line 109
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8c36

    .line 110
    invoke-virtual {v0, v5, v1}, Lf1/g;->b0(II)Z

    const v5, 0x8c37

    const/16 v6, 0x3a

    .line 111
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c38

    .line 112
    invoke-virtual {v0, v5, v13}, Lf1/g;->b0(II)Z

    const v5, 0x8c39

    const/16 v6, 0x18

    .line 113
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c3a

    const/16 v6, 0x71

    .line 114
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c3b

    const/16 v6, 0x38

    .line 115
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c3c

    .line 116
    invoke-virtual {v0, v5, v10}, Lf1/g;->b0(II)Z

    const v5, 0x8c3d

    .line 117
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c3e

    const/16 v6, 0x58

    .line 118
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c3f

    const/16 v6, 0x2c

    .line 119
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c40

    const/16 v6, 0x45

    .line 120
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c41

    .line 121
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c42

    const/16 v6, 0xc0

    .line 122
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c43

    const/16 v4, 0x6c

    .line 123
    invoke-virtual {v0, v5, v4}, Lf1/g;->b0(II)Z

    const v5, 0x8c44

    .line 124
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c45

    .line 125
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c46

    .line 126
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c47

    .line 127
    invoke-virtual {v0, v5, v7}, Lf1/g;->b0(II)Z

    const v5, 0x8c48

    .line 128
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8c49

    const/16 v14, 0x1d

    .line 129
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c4a

    .line 130
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c4b

    const/16 v14, 0x72

    .line 131
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c4c

    const/16 v14, 0x51

    .line 132
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c4d

    const/16 v14, 0xd0

    .line 133
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c4e

    .line 134
    invoke-virtual {v0, v5, v7}, Lf1/g;->b0(II)Z

    const v5, 0x8c4f

    .line 135
    invoke-virtual {v0, v5, v3}, Lf1/g;->b0(II)Z

    const v5, 0x8c50

    const/16 v14, 0x6e

    .line 136
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c51

    const/16 v14, 0x28

    .line 137
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c52

    const/16 v14, 0x55

    .line 138
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c53

    .line 139
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c54

    .line 140
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8c55

    .line 141
    invoke-virtual {v0, v5, v4}, Lf1/g;->b0(II)Z

    const v5, 0x8c56

    .line 142
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c57

    .line 143
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c58

    .line 144
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c59

    .line 145
    invoke-virtual {v0, v5, v7}, Lf1/g;->b0(II)Z

    const v5, 0x8c5a

    .line 146
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c5b

    .line 147
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c5c

    .line 148
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c5d

    const/16 v14, 0xfc

    .line 149
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c5e

    .line 150
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c5f

    const/16 v14, 0x54

    .line 151
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c60

    const/16 v14, 0x6f

    .line 152
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c61

    const/16 v14, 0x73

    .line 153
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c62

    const/16 v14, 0x68

    .line 154
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c63

    const/16 v14, 0x69

    .line 155
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c64

    const/16 v14, 0x62

    .line 156
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c65

    const/16 v14, 0x61

    .line 157
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c66

    .line 158
    invoke-virtual {v0, v5, v10}, Lf1/g;->b0(II)Z

    const v5, 0x8c67

    const/16 v14, 0x48

    .line 159
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c68

    const/16 v14, 0x32

    .line 160
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c69

    const/16 v14, 0x43

    .line 161
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c6a

    .line 162
    invoke-virtual {v0, v5, v15}, Lf1/g;->b0(II)Z

    const v5, 0x8c6b

    .line 163
    invoke-virtual {v0, v5, v3}, Lf1/g;->b0(II)Z

    const v5, 0x8c6c

    .line 164
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c6d

    .line 165
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c6e

    .line 166
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c6f

    const/16 v14, 0xfd

    .line 167
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c70

    .line 168
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c71

    .line 169
    invoke-virtual {v0, v5, v11}, Lf1/g;->b0(II)Z

    const v5, 0x8c72

    const/16 v14, 0x78

    .line 170
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c73

    .line 171
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8c74

    .line 172
    invoke-virtual {v0, v5, v8}, Lf1/g;->b0(II)Z

    const v5, 0x8c75

    .line 173
    invoke-virtual {v0, v5, v12}, Lf1/g;->b0(II)Z

    const v5, 0x8c76

    .line 174
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c77

    .line 175
    invoke-virtual {v0, v5, v15}, Lf1/g;->b0(II)Z

    const v5, 0x8c78

    .line 176
    invoke-virtual {v0, v5, v3}, Lf1/g;->b0(II)Z

    const v5, 0x8c79

    .line 177
    invoke-virtual {v0, v5, v3}, Lf1/g;->b0(II)Z

    const v5, 0x8c7a

    .line 178
    invoke-virtual {v0, v5, v3}, Lf1/g;->b0(II)Z

    const v5, 0x8c7b

    .line 179
    invoke-virtual {v0, v5, v3}, Lf1/g;->b0(II)Z

    const v5, 0x8c7c

    .line 180
    invoke-virtual {v0, v5, v3}, Lf1/g;->b0(II)Z

    const v5, 0x8c7d

    .line 181
    invoke-virtual {v0, v5, v3}, Lf1/g;->b0(II)Z

    const v5, 0x8c7e

    .line 182
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8c7f

    const/16 v14, 0x8b

    .line 183
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c80

    .line 184
    invoke-virtual {v0, v5, v1}, Lf1/g;->b0(II)Z

    const v5, 0x8c81

    const/4 v14, 0x3

    .line 185
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c82

    const/16 v14, 0x1a

    .line 186
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c83

    const/16 v14, 0x76

    .line 187
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c84

    const/16 v14, 0x47

    .line 188
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c85

    const/16 v14, 0x90

    .line 189
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c86

    const/16 v14, 0x84

    .line 190
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c87

    const/16 v14, 0xa2

    .line 191
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c88

    const/16 v14, 0x82

    .line 192
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c89

    const/16 v14, 0x93

    .line 193
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c8a

    const/16 v14, 0x9f

    .line 194
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c8b

    .line 195
    invoke-virtual {v0, v5, v3}, Lf1/g;->b0(II)Z

    const v5, 0x8c8c

    const/16 v14, 0x23

    .line 196
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c8d

    const/16 v14, 0x9

    .line 197
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c8e

    const/4 v14, 0x7

    .line 198
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c8f

    .line 199
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8c90

    const/16 v14, 0x83

    .line 200
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c91

    .line 201
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8c92

    .line 202
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c93

    .line 203
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c94

    const/16 v14, 0x65

    .line 204
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c95

    const/4 v14, 0x3

    .line 205
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c96

    const/16 v14, 0xc

    .line 206
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c97

    .line 207
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c98

    .line 208
    invoke-virtual {v0, v5, v12}, Lf1/g;->b0(II)Z

    const v5, 0x8c99

    .line 209
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8c9a

    .line 210
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8c9b

    const/16 v14, 0x1d

    .line 211
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c9c

    .line 212
    invoke-virtual {v0, v5, v13}, Lf1/g;->b0(II)Z

    const v5, 0x8c9d

    const/16 v14, 0x18

    .line 213
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c9e

    const/16 v14, 0x71

    .line 214
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8c9f

    const/16 v14, 0x38

    .line 215
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8ca0

    .line 216
    invoke-virtual {v0, v5, v10}, Lf1/g;->b0(II)Z

    const v5, 0x8ca1

    const/16 v14, 0x40

    .line 217
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8ca2

    const/16 v14, 0x58

    .line 218
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8ca3

    const/16 v14, 0x2c

    .line 219
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8ca4

    const/16 v14, 0x45

    .line 220
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8ca5

    .line 221
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8ca6

    .line 222
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8ca7

    .line 223
    invoke-virtual {v0, v5, v4}, Lf1/g;->b0(II)Z

    const v5, 0x8ca8

    .line 224
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8ca9

    .line 225
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8caa

    .line 226
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8cab

    .line 227
    invoke-virtual {v0, v5, v7}, Lf1/g;->b0(II)Z

    const v5, 0x8cac

    const/16 v14, 0x8c

    .line 228
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8cad

    .line 229
    invoke-virtual {v0, v5, v15}, Lf1/g;->b0(II)Z

    const v5, 0x8cae

    const/16 v14, 0xd0

    .line 230
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8caf

    const/16 v14, 0x8a

    .line 231
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8cb0

    .line 232
    invoke-virtual {v0, v5, v3}, Lf1/g;->b0(II)Z

    const v5, 0x8cb1

    const/16 v14, 0xe0

    .line 233
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8cb2

    .line 234
    invoke-virtual {v0, v5, v10}, Lf1/g;->b0(II)Z

    const v5, 0x8cb3

    .line 235
    invoke-virtual {v0, v5, v12}, Lf1/g;->b0(II)Z

    const v5, 0x8cb4

    .line 236
    invoke-virtual {v0, v5, v12}, Lf1/g;->b0(II)Z

    const v5, 0x8cb5

    const/16 v14, 0x3e

    .line 237
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8cb6

    const/16 v14, 0x96

    .line 238
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8cb7

    .line 239
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8cb8

    .line 240
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8cb9

    .line 241
    invoke-virtual {v0, v5, v4}, Lf1/g;->b0(II)Z

    const v5, 0x8cba

    .line 242
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8cbb

    .line 243
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8cbc

    .line 244
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8cbd

    const/16 v14, 0x18

    .line 245
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8cbe

    .line 246
    invoke-virtual {v0, v5, v9}, Lf1/g;->b0(II)Z

    const v5, 0x8cbf

    const/16 v14, 0x1d

    .line 247
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8cc0

    .line 248
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8cc1

    const/16 v14, 0xbc

    .line 249
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8cc2

    const/16 v14, 0x52

    .line 250
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8cc3

    const/16 v14, 0xd0

    .line 251
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8cc4

    .line 252
    invoke-virtual {v0, v5, v7}, Lf1/g;->b0(II)Z

    const v5, 0x8cc5

    .line 253
    invoke-virtual {v0, v5, v3}, Lf1/g;->b0(II)Z

    const v5, 0x8cc6

    const/16 v14, 0xb8

    .line 254
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8cc7

    const/16 v14, 0x28

    .line 255
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8cc8

    const/16 v14, 0x55

    .line 256
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8cc9

    const/16 v14, 0x40

    .line 257
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8cca

    .line 258
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8ccb

    .line 259
    invoke-virtual {v0, v5, v4}, Lf1/g;->b0(II)Z

    const v5, 0x8ccc

    .line 260
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8ccd

    .line 261
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8cce

    .line 262
    invoke-virtual {v0, v5, v2}, Lf1/g;->b0(II)Z

    const v5, 0x8ccf

    .line 263
    invoke-virtual {v0, v5, v7}, Lf1/g;->b0(II)Z

    const v5, 0x8cd0

    .line 264
    invoke-virtual {v0, v5, v1}, Lf1/g;->b0(II)Z

    const v5, 0x8cd1

    const/16 v14, 0x3a

    .line 265
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8cd2

    .line 266
    invoke-virtual {v0, v5, v13}, Lf1/g;->b0(II)Z

    const v5, 0x8cd3

    const/16 v14, 0xd0

    .line 267
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8cd4

    const/16 v14, 0x72

    .line 268
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8cd5

    const/16 v14, 0x38

    .line 269
    invoke-virtual {v0, v5, v14}, Lf1/g;->b0(II)Z

    const v5, 0x8cd6

    .line 270
    invoke-virtual {v0, v5, v10}, Lf1/g;->b0(II)Z

    const v5, 0x8cd7

    const/16 v10, 0x40

    .line 271
    invoke-virtual {v0, v5, v10}, Lf1/g;->b0(II)Z

    const v5, 0x8cd8

    .line 272
    invoke-virtual {v0, v5, v12}, Lf1/g;->b0(II)Z

    const v5, 0x8cd9

    const/16 v10, 0x2c

    .line 273
    invoke-virtual {v0, v5, v10}, Lf1/g;->b0(II)Z

    const v5, 0x8cda

    const/16 v10, 0x45

    .line 274
    invoke-virtual {v0, v5, v10}, Lf1/g;->b0(II)Z

    const v5, 0x8cdb

    .line 275
    invoke-virtual {v0, v5, v13}, Lf1/g;->b0(II)Z

    const v5, 0x8cdc

    .line 276
    invoke-virtual {v0, v5, v6}, Lf1/g;->b0(II)Z

    const v5, 0x8cdd

    .line 277
    invoke-virtual {v0, v5, v4}, Lf1/g;->b0(II)Z

    const v4, 0x8cde

    .line 278
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8cdf

    .line 279
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8ce0

    .line 280
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8ce1

    .line 281
    invoke-virtual {v0, v4, v7}, Lf1/g;->b0(II)Z

    const v4, 0x8ce2

    .line 282
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8ce3

    .line 283
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8ce4

    .line 284
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8ce5

    .line 285
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8ce6

    .line 286
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8ce7

    .line 287
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8ce8

    .line 288
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8ce9

    .line 289
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8cea

    .line 290
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8ceb

    .line 291
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8cec

    .line 292
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8ced

    .line 293
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8cee

    .line 294
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8cef

    .line 295
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8cf0

    .line 296
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8cf1

    .line 297
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8cf2

    .line 298
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8cf3

    .line 299
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8cf4

    .line 300
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8cf5

    .line 301
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8cf6

    .line 302
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8cf7

    .line 303
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8cf8

    .line 304
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8cf9

    .line 305
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8cfa

    .line 306
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8cfb

    .line 307
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8cfc

    .line 308
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8cfd

    .line 309
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8cfe

    .line 310
    invoke-virtual {v0, v4, v2}, Lf1/g;->b0(II)Z

    const v4, 0x8cff

    const/16 v5, 0x43

    .line 311
    invoke-virtual {v0, v4, v5}, Lf1/g;->b0(II)Z

    const v4, 0x8520

    .line 312
    invoke-virtual {v0, v4}, Lf1/g;->Y(I)I

    .line 313
    invoke-virtual {v0, v4}, Lf1/g;->Y(I)I

    .line 314
    invoke-virtual {v0, v4}, Lf1/g;->Y(I)I

    const/16 v5, 0x53f

    const/16 v6, 0x16

    .line 315
    invoke-virtual {v0, v6, v5}, Lf1/g;->Z(II)Z

    .line 316
    invoke-virtual {v0, v1, v9}, Lf1/g;->Z(II)Z

    .line 317
    invoke-virtual {v0, v1, v2}, Lf1/g;->Z(II)Z

    .line 318
    invoke-virtual {v0, v11}, Lf1/g;->X(I)I

    const v5, 0x8502

    .line 319
    invoke-virtual {v0, v5}, Lf1/g;->Y(I)I

    const v7, 0x850b

    .line 320
    invoke-virtual {v0, v7}, Lf1/g;->Y(I)I

    .line 321
    invoke-virtual {v0, v4}, Lf1/g;->Y(I)I

    const/16 v10, 0x73f

    .line 322
    invoke-virtual {v0, v6, v10}, Lf1/g;->Z(II)Z

    .line 323
    invoke-virtual {v0, v5, v8}, Lf1/g;->b0(II)Z

    const/16 v12, 0x1f

    .line 324
    invoke-virtual {v0, v7, v12}, Lf1/g;->b0(II)Z

    .line 325
    invoke-virtual {v0, v11, v10}, Lf1/g;->Z(II)Z

    const/16 v12, 0x53f

    .line 326
    invoke-virtual {v0, v6, v12}, Lf1/g;->Z(II)Z

    const v12, 0x854a

    .line 327
    invoke-virtual {v0, v12, v9}, Lf1/g;->b0(II)Z

    .line 328
    invoke-virtual {v0, v1, v2}, Lf1/g;->Z(II)Z

    .line 329
    invoke-virtual {v0, v11}, Lf1/g;->X(I)I

    .line 330
    invoke-virtual {v0, v5}, Lf1/g;->Y(I)I

    .line 331
    invoke-virtual {v0, v7}, Lf1/g;->Y(I)I

    .line 332
    invoke-virtual {v0, v4}, Lf1/g;->Y(I)I

    .line 333
    invoke-virtual {v0, v6, v10}, Lf1/g;->Z(II)Z

    .line 334
    invoke-virtual {v0, v5, v8}, Lf1/g;->b0(II)Z

    const/16 v4, 0x1f

    .line 335
    invoke-virtual {v0, v7, v4}, Lf1/g;->b0(II)Z

    .line 336
    invoke-virtual {v0, v11, v10}, Lf1/g;->Z(II)Z

    const v4, 0x852e

    .line 337
    invoke-virtual {v0, v4}, Lf1/g;->Y(I)I

    const v4, 0x852f

    .line 338
    invoke-virtual {v0, v4}, Lf1/g;->Y(I)I

    const v4, 0x858a

    .line 339
    invoke-virtual {v0, v4}, Lf1/g;->Y(I)I

    const v4, 0x858b

    .line 340
    invoke-virtual {v0, v4}, Lf1/g;->Y(I)I

    const v4, 0x8582

    .line 341
    invoke-virtual {v0, v4}, Lf1/g;->Y(I)I

    const v4, 0x8583

    .line 342
    invoke-virtual {v0, v4}, Lf1/g;->Y(I)I

    const v4, 0x858c

    .line 343
    invoke-virtual {v0, v4}, Lf1/g;->Y(I)I

    const v4, 0x858d

    .line 344
    invoke-virtual {v0, v4}, Lf1/g;->Y(I)I

    const v4, 0x8588

    .line 345
    invoke-virtual {v0, v4}, Lf1/g;->Y(I)I

    const v4, 0x8589

    .line 346
    invoke-virtual {v0, v4}, Lf1/g;->Y(I)I

    const v4, 0x8528

    .line 347
    invoke-virtual {v0, v4}, Lf1/g;->Y(I)I

    const v4, 0x8522

    .line 348
    invoke-virtual {v0, v4}, Lf1/g;->Y(I)I

    const v4, 0x8525

    .line 349
    invoke-virtual {v0, v4}, Lf1/g;->Y(I)I

    const v4, 0x8526

    .line 350
    invoke-virtual {v0, v4}, Lf1/g;->Y(I)I

    const/4 v4, 0x4

    const/16 v5, 0xedc

    .line 351
    invoke-virtual {v0, v4, v5}, Lf1/g;->Z(II)Z

    const/16 v4, 0x200

    .line 352
    invoke-virtual {v0, v1, v4}, Lf1/g;->Z(II)Z

    .line 353
    invoke-virtual {v0, v1, v2}, Lf1/g;->Z(II)Z

    .line 354
    invoke-virtual {v0, v1, v9}, Lf1/g;->Z(II)Z

    const/16 v4, 0x3063

    .line 355
    invoke-virtual {v0, v3, v4}, Lf1/g;->Z(II)Z

    const/16 v3, 0x203

    const/16 v4, 0x22

    .line 356
    invoke-virtual {v0, v4, v3}, Lf1/g;->Z(II)Z

    const/16 v3, 0x213

    .line 357
    invoke-virtual {v0, v4, v3}, Lf1/g;->Z(II)Z

    .line 358
    invoke-virtual {v0, v1, v2}, Lf1/g;->Z(II)Z

    const v1, 0x8573

    const/16 v3, 0xc1

    .line 359
    invoke-virtual {v0, v1, v3}, Lf1/g;->b0(II)Z

    const v1, 0x8574

    const/16 v3, 0x8

    .line 360
    invoke-virtual {v0, v1, v3}, Lf1/g;->b0(II)Z

    const v1, 0x8576

    const/16 v3, 0xa0

    .line 361
    invoke-virtual {v0, v1, v3}, Lf1/g;->b0(II)Z

    const/4 v1, 0x6

    const/16 v3, 0x78

    .line 362
    invoke-virtual {v0, v1, v3}, Lf1/g;->Z(II)Z

    const/16 v1, 0x140

    .line 363
    invoke-virtual {v0, v1, v2}, Lf1/g;->a0(II)Z

    const/16 v1, 0x144

    .line 364
    invoke-virtual {v0, v1, v2}, Lf1/g;->a0(II)Z

    const/16 v1, 0x148

    .line 365
    invoke-virtual {v0, v1, v2}, Lf1/g;->a0(II)Z

    const/16 v1, 0x14c

    .line 366
    invoke-virtual {v0, v1, v2}, Lf1/g;->a0(II)Z

    const/16 v1, 0x150

    .line 367
    invoke-virtual {v0, v1, v2}, Lf1/g;->a0(II)Z

    const/16 v1, 0x210

    const/16 v3, 0x1770

    .line 368
    invoke-virtual {v0, v1, v3}, Lf1/g;->a0(II)Z

    const/16 v1, 0x214

    const/4 v3, 0x4

    .line 369
    invoke-virtual {v0, v1, v3}, Lf1/g;->a0(II)Z

    const/16 v1, 0x218

    const/16 v3, 0x1e03

    .line 370
    invoke-virtual {v0, v1, v3}, Lf1/g;->a0(II)Z

    const/16 v1, 0x21c

    .line 371
    invoke-virtual {v0, v1, v9}, Lf1/g;->a0(II)Z

    const/16 v1, 0x220

    const/16 v3, 0x405

    .line 372
    invoke-virtual {v0, v1, v3}, Lf1/g;->a0(II)Z

    const/16 v1, 0x224

    const/16 v3, 0x4e20

    .line 373
    invoke-virtual {v0, v1, v3}, Lf1/g;->a0(II)Z

    const/16 v1, 0x228

    .line 374
    invoke-virtual {v0, v1, v15}, Lf1/g;->a0(II)Z

    const/16 v1, 0x22c

    const/4 v3, 0x3

    .line 375
    invoke-virtual {v0, v1, v3}, Lf1/g;->a0(II)Z

    const/16 v1, 0x230

    const/4 v3, 0x5

    .line 376
    invoke-virtual {v0, v1, v3}, Lf1/g;->a0(II)Z

    const/16 v1, 0x234

    const/16 v3, 0x1f

    .line 377
    invoke-virtual {v0, v1, v3}, Lf1/g;->a0(II)Z

    const/16 v1, 0x238

    .line 378
    invoke-virtual {v0, v1, v2}, Lf1/g;->a0(II)Z

    const/16 v1, 0x204

    .line 379
    invoke-virtual {v0, v1, v9}, Lf1/g;->a0(II)Z

    const/16 v1, 0x518

    .line 380
    invoke-virtual {v0, v1, v9}, Lf1/g;->a0(II)Z

    const/16 v1, 0x500

    const v2, -0x5cff7f79

    .line 381
    invoke-virtual {v0, v1, v2}, Lf1/g;->a0(II)Z

    const v1, 0x8502

    .line 382
    invoke-virtual {v0, v1, v8}, Lf1/g;->b0(II)Z

    const v1, 0x8503

    const/16 v2, 0x7f

    .line 383
    invoke-virtual {v0, v1, v2}, Lf1/g;->b0(II)Z

    const v1, 0x8504

    .line 384
    invoke-virtual {v0, v1, v8}, Lf1/g;->b0(II)Z

    const v1, 0x8505

    .line 385
    invoke-virtual {v0, v1, v8}, Lf1/g;->b0(II)Z

    const v1, 0x8506

    .line 386
    invoke-virtual {v0, v1, v8}, Lf1/g;->b0(II)Z

    const/16 v1, 0x1f

    const v2, 0x850b

    .line 387
    invoke-virtual {v0, v2, v1}, Lf1/g;->b0(II)Z

    const/16 v1, 0x73f

    .line 388
    invoke-virtual {v0, v11, v1}, Lf1/g;->Z(II)Z

    const/16 v1, 0x53f

    const/16 v2, 0x16

    .line 389
    invoke-virtual {v0, v2, v1}, Lf1/g;->Z(II)Z

    const/4 v1, 0x4

    const/16 v2, 0xedf

    .line 390
    invoke-virtual {v0, v1, v2}, Lf1/g;->Z(II)Z

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==============================>> flushParams() result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " chipid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lf1/q;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Chip3587"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {v0, v9}, Lf1/q;->H(Z)V

    return-void
.end method
