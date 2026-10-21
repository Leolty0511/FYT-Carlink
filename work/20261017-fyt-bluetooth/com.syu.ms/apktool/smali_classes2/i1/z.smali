.class public Li1/z;
.super Li1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/z$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li1/a<",
        "Li1/z$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final A:Ljava/lang/Runnable;

.field public final k:Ljava/lang/String;

.field public final l:Z

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Lo1/h0;

.field public v:I

.field public w:I

.field public x:I

.field public y:Ljava/lang/Runnable;

.field public final z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(II)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Li1/a;-><init>(II)V

    const-string p1, "PluginZhiHangRadar"

    .line 2
    iput-object p1, p0, Li1/z;->k:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Li1/z;->l:Z

    .line 4
    iput p1, p0, Li1/z;->m:I

    const/4 p2, 0x2

    .line 5
    iput p2, p0, Li1/z;->n:I

    const/4 p2, 0x4

    .line 6
    iput p2, p0, Li1/z;->o:I

    const/16 p2, 0x8

    .line 7
    iput p2, p0, Li1/z;->p:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Li1/z;->q:I

    .line 9
    iput v0, p0, Li1/z;->r:I

    .line 10
    iput v0, p0, Li1/z;->s:I

    .line 11
    iput v0, p0, Li1/z;->t:I

    .line 12
    new-instance v1, Lo1/h0;

    const-string v2, "zh_radar"

    invoke-direct {v1, v2}, Lo1/h0;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Li1/z;->u:Lo1/h0;

    const/16 v1, 0x10

    .line 13
    iput v1, p0, Li1/z;->v:I

    .line 14
    iput v0, p0, Li1/z;->w:I

    .line 15
    iput v0, p0, Li1/z;->x:I

    .line 16
    new-instance v1, Li1/z$a;

    invoke-direct {v1, p0}, Li1/z$a;-><init>(Li1/z;)V

    iput-object v1, p0, Li1/z;->y:Ljava/lang/Runnable;

    .line 17
    new-instance v1, Li1/z$b;

    invoke-direct {v1, p0}, Li1/z$b;-><init>(Li1/z;)V

    iput-object v1, p0, Li1/z;->z:Ljava/lang/Runnable;

    .line 18
    new-instance v2, Li1/z$c;

    invoke-direct {v2, p0}, Li1/z$c;-><init>(Li1/z;)V

    iput-object v2, p0, Li1/z;->A:Ljava/lang/Runnable;

    .line 19
    new-instance v3, Li1/z$d;

    invoke-direct {v3, p0}, Li1/z$d;-><init>(Li1/z;)V

    iput-object v3, p0, Li1/s;->a:Li1/e;

    .line 20
    invoke-virtual {v3}, Li1/e;->h()V

    .line 21
    invoke-virtual {p0}, Li1/a;->v()V

    .line 22
    iget-object v3, p0, Li1/z;->u:Lo1/h0;

    const/16 v4, 0xf

    invoke-virtual {v3, v0, v4}, Lo1/h0;->h(II)I

    move-result v3

    iput v3, p0, Li1/z;->x:I

    and-int/lit8 v4, v3, 0x1

    if-lez v4, :cond_0

    move v4, p1

    goto :goto_0

    :cond_0
    move v4, v0

    .line 23
    :goto_0
    iput v4, p0, Li1/z;->q:I

    and-int/lit8 v4, v3, 0x2

    if-lez v4, :cond_1

    move v4, p1

    goto :goto_1

    :cond_1
    move v4, v0

    .line 24
    :goto_1
    iput v4, p0, Li1/z;->r:I

    and-int/lit8 v4, v3, 0x4

    if-lez v4, :cond_2

    move v4, p1

    goto :goto_2

    :cond_2
    move v4, v0

    .line 25
    :goto_2
    iput v4, p0, Li1/z;->s:I

    and-int/2addr p2, v3

    if-lez p2, :cond_3

    move p2, p1

    goto :goto_3

    :cond_3
    move p2, v0

    .line 26
    :goto_3
    iput p2, p0, Li1/z;->t:I

    .line 27
    sget-object p2, Lu0/c;->B:Lo1/y;

    invoke-virtual {p2, v1, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 28
    sget-object p2, Lu0/c;->f:Lo1/y;

    invoke-virtual {p2, v1, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 29
    sget-object p2, Lu0/c;->c:Lo1/y;

    invoke-virtual {p2, v1, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 30
    sget-object p2, Lu0/c;->m:Lo1/y;

    invoke-virtual {p2, v1, p1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 31
    sget-object p2, Lo1/h;->b:Lo1/y;

    invoke-virtual {p2, v2, p1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public static synthetic w(Li1/z;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Li1/z;->y:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized A(IZ)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Li1/z;->x:I

    and-int/lit8 v1, v0, 0xf

    if-eqz p2, :cond_0

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    not-int p1, p1

    and-int/2addr p1, v0

    :goto_0
    if-eq v1, p1, :cond_1

    .line 2
    iput p1, p0, Li1/z;->x:I

    .line 3
    iget-object p2, p0, Li1/z;->u:Lo1/h0;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lo1/h0;->q(II)V

    .line 4
    iget-object p1, p0, Li1/z;->u:Lo1/h0;

    invoke-virtual {p1, v0}, Lo1/h0;->e(I)V

    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 5
    iget p2, p0, Li1/z;->v:I

    aput p2, p1, v0

    const/4 p2, 0x1

    iget v0, p0, Li1/z;->w:I

    aput v0, p1, p2

    const/4 p2, 0x2

    iget v0, p0, Li1/z;->x:I

    aput v0, p1, p2

    invoke-virtual {p0, p1}, Li1/z;->z([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public j(I[I[F[Ljava/lang/String;)Z
    .locals 7

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "PluginZhiHangRadar handleCmd : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " ints : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Device"

    invoke-static {p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    invoke-static {p2, p3}, Lo1/s0;->h([II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3
    aget v0, p2, p3

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_d

    if-eq v0, p4, :cond_a

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_1

    goto/16 :goto_6

    .line 4
    :cond_1
    invoke-static {p2, p4}, Lo1/s0;->h([II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5
    aget p2, p2, p4

    if-ne p2, p4, :cond_2

    move p2, p4

    goto :goto_0

    :cond_2
    move p2, p3

    .line 6
    :goto_0
    iget v0, p0, Li1/z;->t:I

    if-eq v0, p2, :cond_e

    .line 7
    iput p2, p0, Li1/z;->t:I

    new-array v0, v1, [I

    aput p3, v0, p3

    .line 8
    iget v1, p0, Li1/z;->q:I

    aput v1, v0, p4

    iget v1, p0, Li1/z;->s:I

    aput v1, v0, v4

    iget v1, p0, Li1/z;->r:I

    aput v1, v0, v3

    aput p2, v0, v2

    invoke-virtual {p0, p1, v0}, Li1/s;->r(I[I)V

    const/16 p1, 0x8

    if-ne p2, p4, :cond_3

    move p3, p4

    .line 9
    :cond_3
    invoke-virtual {p0, p1, p3}, Li1/z;->A(IZ)V

    goto/16 :goto_6

    .line 10
    :cond_4
    invoke-static {p2, p4}, Lo1/s0;->h([II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 11
    aget p2, p2, p4

    if-ne p2, p4, :cond_5

    move p2, p4

    goto :goto_1

    :cond_5
    move p2, p3

    .line 12
    :goto_1
    iget v0, p0, Li1/z;->r:I

    if-eq v0, p2, :cond_e

    .line 13
    iput p2, p0, Li1/z;->r:I

    new-array v0, v1, [I

    aput p3, v0, p3

    .line 14
    iget v1, p0, Li1/z;->q:I

    aput v1, v0, p4

    iget v1, p0, Li1/z;->s:I

    aput v1, v0, v4

    aput p2, v0, v3

    iget v1, p0, Li1/z;->t:I

    aput v1, v0, v2

    invoke-virtual {p0, p1, v0}, Li1/s;->r(I[I)V

    if-ne p2, p4, :cond_6

    move p3, p4

    .line 15
    :cond_6
    invoke-virtual {p0, v4, p3}, Li1/z;->A(IZ)V

    goto/16 :goto_6

    .line 16
    :cond_7
    invoke-static {p2, p4}, Lo1/s0;->h([II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 17
    aget p2, p2, p4

    if-ne p2, p4, :cond_8

    move p2, p4

    goto :goto_2

    :cond_8
    move p2, p3

    .line 18
    :goto_2
    iget v0, p0, Li1/z;->s:I

    if-eq v0, p2, :cond_e

    .line 19
    iput p2, p0, Li1/z;->s:I

    if-ne p2, p4, :cond_9

    move p2, p4

    goto :goto_3

    :cond_9
    move p2, p3

    .line 20
    :goto_3
    invoke-virtual {p0, v2, p2}, Li1/z;->A(IZ)V

    new-array p2, v1, [I

    aput p3, p2, p3

    .line 21
    iget p3, p0, Li1/z;->q:I

    aput p3, p2, p4

    iget p3, p0, Li1/z;->s:I

    aput p3, p2, v4

    iget p3, p0, Li1/z;->r:I

    aput p3, p2, v3

    iget p3, p0, Li1/z;->t:I

    aput p3, p2, v2

    invoke-virtual {p0, p1, p2}, Li1/s;->r(I[I)V

    goto/16 :goto_6

    .line 22
    :cond_a
    invoke-static {p2, p4}, Lo1/s0;->h([II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 23
    aget p2, p2, p4

    if-ne p2, p4, :cond_b

    move p2, p4

    goto :goto_4

    :cond_b
    move p2, p3

    .line 24
    :goto_4
    iget v0, p0, Li1/z;->q:I

    if-eq v0, p2, :cond_e

    .line 25
    iput p2, p0, Li1/z;->q:I

    if-ne p2, p4, :cond_c

    move p2, p4

    goto :goto_5

    :cond_c
    move p2, p3

    .line 26
    :goto_5
    invoke-virtual {p0, p4, p2}, Li1/z;->A(IZ)V

    new-array p2, v1, [I

    aput p3, p2, p3

    .line 27
    iget p3, p0, Li1/z;->q:I

    aput p3, p2, p4

    iget p3, p0, Li1/z;->s:I

    aput p3, p2, v4

    iget p3, p0, Li1/z;->r:I

    aput p3, p2, v3

    iget p3, p0, Li1/z;->t:I

    aput p3, p2, v2

    invoke-virtual {p0, p1, p2}, Li1/s;->r(I[I)V

    goto :goto_6

    .line 28
    :cond_d
    invoke-static {p2, v2}, Lo1/s0;->h([II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 29
    aget v0, p2, p4

    iput v0, p0, Li1/z;->q:I

    .line 30
    aget v5, p2, v4

    iput v5, p0, Li1/z;->s:I

    .line 31
    aget v6, p2, v3

    iput v6, p0, Li1/z;->r:I

    .line 32
    aget p2, p2, v2

    iput p2, p0, Li1/z;->t:I

    shl-int/2addr v6, p4

    or-int/2addr v0, v6

    shl-int/2addr v5, v4

    or-int/2addr v0, v5

    shl-int/2addr p2, v3

    or-int/2addr p2, v0

    and-int/lit8 p2, p2, 0xf

    .line 33
    iget v0, p0, Li1/z;->x:I

    if-eq v0, p2, :cond_e

    .line 34
    iput p2, p0, Li1/z;->x:I

    .line 35
    iget-object v0, p0, Li1/z;->u:Lo1/h0;

    invoke-virtual {v0, p3, p2}, Lo1/h0;->q(II)V

    .line 36
    iget-object v0, p0, Li1/z;->u:Lo1/h0;

    invoke-virtual {v0, p3}, Lo1/h0;->e(I)V

    new-array v0, v3, [I

    .line 37
    iget v5, p0, Li1/z;->v:I

    aput v5, v0, p3

    iget v5, p0, Li1/z;->w:I

    aput v5, v0, p4

    aput p2, v0, v4

    invoke-virtual {p0, v0}, Li1/z;->z([I)V

    new-array p2, v1, [I

    aput p3, p2, p3

    .line 38
    iget p3, p0, Li1/z;->q:I

    aput p3, p2, p4

    iget p3, p0, Li1/z;->s:I

    aput p3, p2, v4

    iget p3, p0, Li1/z;->r:I

    aput p3, p2, v3

    iget p3, p0, Li1/z;->t:I

    aput p3, p2, v2

    invoke-virtual {p0, p1, p2}, Li1/s;->r(I[I)V

    :cond_e
    :goto_6
    move p3, p4

    :goto_7
    return p3
.end method

.method public l([I)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PluginZhiHangRadar onHandle DATA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Li1/s;->a:Li1/e;

    check-cast v1, Li1/z$d;

    iget-object v1, v1, Li1/e;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_a

    .line 3
    aget v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x22

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v2, :cond_5

    const/16 v2, 0x23

    if-eq v1, v2, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    aget v1, p1, v6

    and-int/lit16 v1, v1, 0xff

    .line 5
    aget v2, p1, v5

    and-int/lit16 v2, v2, 0xff

    .line 6
    aget v7, p1, v4

    and-int/lit16 v7, v7, 0xff

    .line 7
    aget v8, p1, v3

    and-int/lit16 v8, v8, 0xff

    .line 8
    sget v9, Lu0/b;->o:I

    if-nez v9, :cond_4

    .line 9
    sget v9, Ll0/c0;->g:I

    if-ne v9, v1, :cond_1

    sget v9, Ll0/c0;->h:I

    if-ne v9, v2, :cond_1

    sget v9, Ll0/c0;->i:I

    if-ne v9, v7, :cond_1

    sget v9, Ll0/c0;->j:I

    if-eq v9, v8, :cond_3

    :cond_1
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-nez v7, :cond_2

    if-nez v8, :cond_2

    .line 10
    sget v9, Ll0/c0;->c:I

    if-nez v9, :cond_2

    sget v9, Ll0/c0;->d:I

    if-nez v9, :cond_2

    sget v9, Ll0/c0;->e:I

    if-nez v9, :cond_2

    sget v9, Ll0/c0;->f:I

    if-nez v9, :cond_2

    .line 11
    sget v9, Lu0/b;->p:I

    if-ne v9, v6, :cond_3

    .line 12
    sput v5, Ll0/c0;->k:I

    .line 13
    sget-object v9, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v9}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 15
    :cond_3
    :goto_0
    sput v1, Ll0/c0;->g:I

    .line 16
    sput v2, Ll0/c0;->h:I

    .line 17
    sput v7, Ll0/c0;->i:I

    .line 18
    sput v8, Ll0/c0;->j:I

    .line 19
    :cond_4
    aget v1, p1, v6

    aget v5, p1, v5

    aget v6, p1, v4

    aget v7, p1, v3

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v3, p0

    move v4, v1

    invoke-virtual/range {v3 .. v9}, Li1/z;->y(IIIIZZ)V

    goto :goto_2

    .line 20
    :cond_5
    aget v1, p1, v6

    and-int/lit16 v1, v1, 0xff

    .line 21
    aget v2, p1, v5

    and-int/lit16 v2, v2, 0xff

    .line 22
    aget v7, p1, v4

    and-int/lit16 v7, v7, 0xff

    .line 23
    aget v8, p1, v3

    and-int/lit16 v8, v8, 0xff

    .line 24
    sget v9, Lu0/b;->o:I

    if-nez v9, :cond_9

    .line 25
    sget v9, Ll0/c0;->c:I

    if-ne v9, v1, :cond_6

    sget v9, Ll0/c0;->d:I

    if-ne v9, v2, :cond_6

    sget v9, Ll0/c0;->e:I

    if-ne v9, v7, :cond_6

    sget v9, Ll0/c0;->f:I

    if-eq v9, v8, :cond_8

    :cond_6
    if-nez v1, :cond_7

    if-nez v2, :cond_7

    if-nez v7, :cond_7

    if-nez v8, :cond_7

    .line 26
    sget v9, Ll0/c0;->g:I

    if-nez v9, :cond_7

    sget v9, Ll0/c0;->h:I

    if-nez v9, :cond_7

    sget v9, Ll0/c0;->i:I

    if-nez v9, :cond_7

    sget v9, Ll0/c0;->j:I

    if-nez v9, :cond_7

    .line 27
    sget v9, Lu0/b;->p:I

    if-ne v9, v6, :cond_8

    .line 28
    sput v5, Ll0/c0;->k:I

    .line 29
    sget-object v9, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v9}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 30
    :cond_7
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 31
    :cond_8
    :goto_1
    sput v1, Ll0/c0;->c:I

    .line 32
    sput v2, Ll0/c0;->d:I

    .line 33
    sput v7, Ll0/c0;->e:I

    .line 34
    sput v8, Ll0/c0;->f:I

    .line 35
    :cond_9
    aget v1, p1, v6

    aget v5, p1, v5

    aget v6, p1, v4

    aget v7, p1, v3

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p0

    move v4, v1

    invoke-virtual/range {v3 .. v9}, Li1/z;->y(IIIIZZ)V

    :cond_a
    :goto_2
    return-void
.end method

.method public o([B)V
    .locals 0

    return-void
.end method

.method public p(Ly/b;II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x5

    new-array p3, p3, [I

    aput v0, p3, v0

    .line 1
    iget v0, p0, Li1/z;->q:I

    aput v0, p3, v1

    const/4 v0, 0x2

    iget v2, p0, Li1/z;->s:I

    aput v2, p3, v0

    const/4 v0, 0x3

    iget v2, p0, Li1/z;->r:I

    aput v2, p3, v0

    const/4 v0, 0x4

    iget v2, p0, Li1/z;->t:I

    aput v2, p3, v0

    invoke-virtual {p0, p1, p2, p3}, Li1/s;->t(Ly/b;I[I)V

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public final x(II)V
    .locals 5

    and-int/lit16 p2, p2, 0xff

    const/16 v0, 0xa

    const/4 v1, 0x1

    if-lez p2, :cond_0

    if-gt p2, v0, :cond_0

    sub-int/2addr p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-gez p2, :cond_1

    return-void

    .line 1
    :cond_1
    sget v2, Lu0/b;->G:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v2, :cond_2

    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-nez v2, :cond_2

    new-array p2, v1, [I

    aput v0, p2, v4

    .line 2
    invoke-static {p1, p2}, Lu0/d;->I3(I[I)V

    .line 3
    sget-object p2, Lu0/c;->R:Lo1/z;

    new-array v2, v3, [I

    aput p1, v2, v4

    aput v0, v2, v1

    invoke-virtual {p2, v2}, Lo1/z;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-array v0, v1, [I

    aput p2, v0, v4

    .line 4
    invoke-static {p1, v0}, Lu0/d;->I3(I[I)V

    .line 5
    sget-object v0, Lu0/c;->R:Lo1/z;

    new-array v2, v3, [I

    aput p1, v2, v4

    aput p2, v2, v1

    invoke-virtual {v0, v2}, Lo1/z;->c(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final y(IIIIZZ)V
    .locals 2

    if-eqz p5, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    const/4 v1, 0x0

    if-eqz p6, :cond_1

    goto :goto_1

    :cond_1
    move p3, v1

    .line 1
    :goto_1
    invoke-virtual {p0, v0, p3}, Li1/z;->x(II)V

    if-eqz p5, :cond_2

    const/16 p3, 0xf

    goto :goto_2

    :cond_2
    const/16 p3, 0x13

    :goto_2
    if-eqz p6, :cond_3

    goto :goto_3

    :cond_3
    move p2, v1

    .line 2
    :goto_3
    invoke-virtual {p0, p3, p2}, Li1/z;->x(II)V

    if-eqz p5, :cond_4

    const/16 p2, 0x11

    goto :goto_4

    :cond_4
    const/16 p2, 0x15

    :goto_4
    if-eqz p6, :cond_5

    goto :goto_5

    :cond_5
    move p4, v1

    .line 3
    :goto_5
    invoke-virtual {p0, p2, p4}, Li1/z;->x(II)V

    if-eqz p5, :cond_6

    const/16 p2, 0xe

    goto :goto_6

    :cond_6
    const/16 p2, 0x12

    :goto_6
    if-eqz p6, :cond_7

    goto :goto_7

    :cond_7
    move p1, v1

    .line 4
    :goto_7
    invoke-virtual {p0, p2, p1}, Li1/z;->x(II)V

    return-void
.end method

.method public varargs z([I)V
    .locals 8

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x6

    new-array v1, v0, [I

    const/16 v2, 0x55

    const/4 v3, 0x0

    aput v2, v1, v3

    move v2, v3

    move v4, v2

    .line 2
    :goto_0
    array-length v5, p1

    const/16 v6, 0xff

    if-ge v2, v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    .line 3
    aget v7, p1, v2

    aput v7, v1, v5

    .line 4
    aget v2, p1, v2

    and-int/2addr v2, v6

    add-int/2addr v4, v2

    move v2, v5

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    and-int/lit16 v2, v4, 0xff

    aput v2, v1, p1

    const/4 p1, 0x5

    aput v6, v1, p1

    .line 5
    iget-object p1, p0, Li1/a;->h:Li1/b0;

    if-eqz p1, :cond_2

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PluginZhiHangRadar Write DATA : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v3, v0}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Device"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Li1/a;->h:Li1/b0;

    invoke-virtual {p1, v1}, Lb/c$b;->f([I)V

    :cond_2
    return-void
.end method
