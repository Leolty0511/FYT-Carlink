.class public Li1/x;
.super Li1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/x$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li1/a<",
        "Li1/x$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Ljava/lang/Integer;

.field public q:Ljava/lang/Integer;

.field public r:Ljava/lang/Integer;

.field public s:Ljava/lang/Integer;

.field public t:Ljava/lang/Runnable;

.field public final u:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Li1/a;-><init>(II)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Li1/x;->k:Z

    const/4 p2, 0x0

    .line 3
    iput p2, p0, Li1/x;->l:I

    const/4 p2, 0x5

    .line 4
    iput p2, p0, Li1/x;->m:I

    .line 5
    iput p1, p0, Li1/x;->n:I

    .line 6
    iput p1, p0, Li1/x;->o:I

    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, Li1/x;->p:Ljava/lang/Integer;

    iput-object p2, p0, Li1/x;->q:Ljava/lang/Integer;

    iput-object p2, p0, Li1/x;->r:Ljava/lang/Integer;

    iput-object p2, p0, Li1/x;->s:Ljava/lang/Integer;

    .line 8
    new-instance p2, Li1/x$a;

    invoke-direct {p2, p0}, Li1/x$a;-><init>(Li1/x;)V

    iput-object p2, p0, Li1/x;->t:Ljava/lang/Runnable;

    .line 9
    new-instance p2, Li1/x$b;

    invoke-direct {p2, p0}, Li1/x$b;-><init>(Li1/x;)V

    iput-object p2, p0, Li1/x;->u:Ljava/lang/Runnable;

    .line 10
    invoke-virtual {p0}, Li1/a;->v()V

    .line 11
    new-instance v0, Li1/x$c;

    invoke-direct {v0, p0}, Li1/x$c;-><init>(Li1/x;)V

    iput-object v0, p0, Li1/s;->a:Li1/e;

    .line 12
    invoke-virtual {v0}, Li1/e;->h()V

    .line 13
    sget-object v0, Lu0/c;->m:Lo1/y;

    invoke-virtual {v0, p2, p1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method


# virtual methods
.method public j(I[I[F[Ljava/lang/String;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============  PluginWLLeds handleCmd cmdCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ints :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-static {p2, v0}, Lo1/s0;->h([II)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 p3, 0x0

    .line 3
    aget p4, p2, p3

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz p4, :cond_8

    if-eq p4, v0, :cond_6

    if-eq p4, v3, :cond_4

    if-eq p4, v2, :cond_2

    :cond_1
    move p1, p3

    goto/16 :goto_5

    .line 4
    :cond_2
    aget p2, p2, v0

    if-ne p2, v0, :cond_3

    move p2, v0

    goto :goto_0

    :cond_3
    move p2, p3

    .line 5
    :goto_0
    iget p4, p0, Li1/x;->o:I

    if-eq p2, p4, :cond_1

    .line 6
    iput p2, p0, Li1/x;->o:I

    new-array p4, v3, [I

    aput v2, p4, p3

    aput p2, p4, v0

    .line 7
    invoke-virtual {p0, p1, p4}, Li1/s;->r(I[I)V

    :goto_1
    move p1, v0

    goto :goto_5

    .line 8
    :cond_4
    aget p4, p2, v0

    if-ltz p4, :cond_5

    aget p4, p2, v0

    const/16 v4, 0x3f

    if-gt p4, v4, :cond_5

    aget p2, p2, v0

    goto :goto_2

    :cond_5
    move p2, p3

    .line 9
    :goto_2
    iget p4, p0, Li1/x;->n:I

    if-eq p2, p4, :cond_1

    .line 10
    iput p2, p0, Li1/x;->n:I

    new-array p4, v3, [I

    aput v3, p4, p3

    aput p2, p4, v0

    .line 11
    invoke-virtual {p0, p1, p4}, Li1/s;->r(I[I)V

    goto :goto_1

    .line 12
    :cond_6
    aget p4, p2, v0

    if-ltz p4, :cond_7

    aget p4, p2, v0

    if-gt p4, v1, :cond_7

    aget p2, p2, v0

    goto :goto_3

    :cond_7
    move p2, p3

    .line 13
    :goto_3
    iget p4, p0, Li1/x;->m:I

    if-eq p2, p4, :cond_1

    .line 14
    iput p2, p0, Li1/x;->m:I

    new-array p4, v3, [I

    aput v0, p4, p3

    aput p2, p4, v0

    .line 15
    invoke-virtual {p0, p1, p4}, Li1/s;->r(I[I)V

    goto :goto_1

    .line 16
    :cond_8
    aget p4, p2, v0

    if-ltz p4, :cond_9

    aget p4, p2, v0

    if-gt p4, v2, :cond_9

    aget p2, p2, v0

    goto :goto_4

    :cond_9
    move p2, p3

    .line 17
    :goto_4
    iget p4, p0, Li1/x;->l:I

    if-eq p2, p4, :cond_1

    .line 18
    iput p2, p0, Li1/x;->l:I

    new-array p4, v3, [I

    aput p3, p4, p3

    aput p2, p4, v0

    .line 19
    invoke-virtual {p0, p1, p4}, Li1/s;->r(I[I)V

    goto :goto_1

    :goto_5
    if-eqz p1, :cond_a

    .line 20
    sget p1, Lu0/b;->a0:I

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Li1/a;->i:Landroid/os/Handler;

    if-eqz p1, :cond_a

    .line 21
    iget-object p2, p0, Li1/x;->t:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-array p1, v1, [I

    const/16 p2, 0x83

    aput p2, p1, p3

    .line 22
    iget p2, p0, Li1/x;->l:I

    aput p2, p1, v0

    iget p2, p0, Li1/x;->m:I

    aput p2, p1, v3

    iget p2, p0, Li1/x;->n:I

    aput p2, p1, v2

    const/4 p2, 0x4

    iget p3, p0, Li1/x;->o:I

    aput p3, p1, p2

    invoke-virtual {p0, p1}, Li1/x;->y([I)V

    .line 23
    iget-object p1, p0, Li1/a;->i:Landroid/os/Handler;

    iget-object p2, p0, Li1/x;->t:Ljava/lang/Runnable;

    const-wide/16 p3, 0x64

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    return v0

    .line 24
    :cond_b
    :goto_6
    invoke-super {p0, p1, p2, p3, p4}, Li1/s;->j(I[I[F[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l([I)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============  PluginWLLeds onHandle data: "

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
    array-length v0, p1

    if-lez v0, :cond_5

    .line 3
    array-length v0, p1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_5

    aget v4, p1, v3

    .line 4
    iget-object v5, p0, Li1/x;->p:Ljava/lang/Integer;

    if-nez v5, :cond_0

    and-int/lit16 v4, v4, 0xff

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Li1/x;->p:Ljava/lang/Integer;

    goto :goto_1

    .line 6
    :cond_0
    iget-object v5, p0, Li1/x;->q:Ljava/lang/Integer;

    if-nez v5, :cond_1

    and-int/lit16 v4, v4, 0xff

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Li1/x;->q:Ljava/lang/Integer;

    goto :goto_1

    .line 8
    :cond_1
    iget-object v5, p0, Li1/x;->r:Ljava/lang/Integer;

    if-nez v5, :cond_2

    and-int/lit16 v4, v4, 0xff

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Li1/x;->r:Ljava/lang/Integer;

    goto :goto_1

    .line 10
    :cond_2
    iget-object v5, p0, Li1/x;->s:Ljava/lang/Integer;

    if-nez v5, :cond_3

    and-int/lit16 v4, v4, 0xff

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Li1/x;->s:Ljava/lang/Integer;

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p0, v4}, Li1/x;->w(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 13
    iget-object v5, p0, Li1/x;->p:Ljava/lang/Integer;

    aput-object v5, v4, v2

    iget-object v5, p0, Li1/x;->q:Ljava/lang/Integer;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    iget-object v6, p0, Li1/x;->r:Ljava/lang/Integer;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Li1/x;->s:Ljava/lang/Integer;

    aput-object v6, v4, v5

    const-string v5, "DATA: %02X, %02X, %02X, %02X"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {p0}, Li1/x;->x()V

    const/4 v4, 0x0

    .line 15
    iput-object v4, p0, Li1/x;->s:Ljava/lang/Integer;

    iput-object v4, p0, Li1/x;->r:Ljava/lang/Integer;

    iput-object v4, p0, Li1/x;->q:Ljava/lang/Integer;

    iput-object v4, p0, Li1/x;->p:Ljava/lang/Integer;

    goto :goto_1

    .line 16
    :cond_4
    iget-object v5, p0, Li1/x;->q:Ljava/lang/Integer;

    iput-object v5, p0, Li1/x;->p:Ljava/lang/Integer;

    .line 17
    iget-object v5, p0, Li1/x;->r:Ljava/lang/Integer;

    iput-object v5, p0, Li1/x;->q:Ljava/lang/Integer;

    .line 18
    iget-object v5, p0, Li1/x;->s:Ljava/lang/Integer;

    iput-object v5, p0, Li1/x;->r:Ljava/lang/Integer;

    and-int/lit16 v4, v4, 0xff

    .line 19
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Li1/x;->s:Ljava/lang/Integer;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public p(Ly/b;II)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    new-array v3, v2, [I

    aput v1, v3, v1

    .line 1
    iget v4, p0, Li1/x;->l:I

    aput v4, v3, v0

    invoke-static {p1, p2, v3}, Lo1/x;->v(Ly/b;I[I)V

    new-array v3, v2, [I

    aput v0, v3, v1

    .line 2
    iget v4, p0, Li1/x;->m:I

    aput v4, v3, v0

    invoke-static {p1, p2, v3}, Lo1/x;->v(Ly/b;I[I)V

    new-array v3, v2, [I

    aput v2, v3, v1

    .line 3
    iget v4, p0, Li1/x;->n:I

    aput v4, v3, v0

    invoke-static {p1, p2, v3}, Lo1/x;->v(Ly/b;I[I)V

    new-array v2, v2, [I

    const/4 v3, 0x3

    aput v3, v2, v1

    .line 4
    iget v1, p0, Li1/x;->o:I

    aput v1, v2, v0

    invoke-static {p1, p2, v2}, Lo1/x;->v(Ly/b;I[I)V

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-super {p0, p1, p2, p3}, Li1/s;->p(Ly/b;II)Z

    move-result v0

    :goto_1
    return v0
.end method

.method public final w(I)Z
    .locals 8

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 1
    iget-object v2, p0, Li1/x;->p:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v2, p0, Li1/x;->q:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    iget-object v2, p0, Li1/x;->r:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x2

    aput v2, v1, v5

    iget-object v2, p0, Li1/x;->s:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x3

    aput v2, v1, v5

    const/4 v2, 0x4

    const/16 v5, 0xc3

    aput v5, v1, v2

    move v2, v3

    move v5, v2

    :goto_0
    const/16 v6, 0xff

    if-ge v2, v0, :cond_1

    .line 2
    aget v7, v1, v2

    add-int/2addr v5, v7

    and-int/lit16 v7, v5, 0xfff

    if-le v7, v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    and-int/2addr v5, v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    and-int/lit16 v0, v5, 0xff

    not-int v0, v0

    and-int/2addr v0, v6

    and-int/2addr p1, v6

    if-ne v0, p1, :cond_2

    move v3, v4

    :cond_2
    return v3
.end method

.method public final x()V
    .locals 5

    .line 1
    iget v0, p0, Li1/x;->l:I

    iget-object v1, p0, Li1/x;->p:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Li1/x;->p:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Li1/x;->l:I

    new-array v1, v2, [I

    aput v4, v1, v4

    aput v0, v1, v3

    .line 3
    invoke-virtual {p0, v4, v1}, Li1/s;->r(I[I)V

    .line 4
    :cond_0
    iget v0, p0, Li1/x;->m:I

    iget-object v1, p0, Li1/x;->q:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Li1/x;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Li1/x;->m:I

    new-array v1, v2, [I

    aput v3, v1, v4

    aput v0, v1, v3

    .line 6
    invoke-virtual {p0, v4, v1}, Li1/s;->r(I[I)V

    .line 7
    :cond_1
    iget v0, p0, Li1/x;->n:I

    iget-object v1, p0, Li1/x;->r:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 8
    iget-object v0, p0, Li1/x;->r:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Li1/x;->n:I

    new-array v1, v2, [I

    aput v2, v1, v4

    aput v0, v1, v3

    .line 9
    invoke-virtual {p0, v4, v1}, Li1/s;->r(I[I)V

    .line 10
    :cond_2
    iget v0, p0, Li1/x;->o:I

    iget-object v1, p0, Li1/x;->s:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, v3

    if-eq v0, v1, :cond_3

    .line 11
    iget-object v0, p0, Li1/x;->s:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/2addr v0, v3

    iput v0, p0, Li1/x;->o:I

    new-array v1, v2, [I

    const/4 v2, 0x3

    aput v2, v1, v4

    aput v0, v1, v3

    .line 12
    invoke-virtual {p0, v4, v1}, Li1/s;->r(I[I)V

    :cond_3
    return-void
.end method

.method public varargs y([I)V
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 1
    :cond_0
    array-length v1, p1

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v1, 0x2

    .line 2
    new-array v3, v2, [I

    const/16 v4, 0x55

    .line 3
    aput v4, v3, v0

    move v4, v0

    move v5, v4

    :goto_1
    if-ge v4, v1, :cond_2

    .line 4
    aget v6, p1, v4

    add-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x1

    .line 5
    aget v4, p1, v4

    aput v4, v3, v6

    move v4, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 p1, v5, 0x0

    and-int/lit16 p1, p1, 0xff

    and-int/lit16 v4, v5, 0xff

    add-int/2addr p1, v4

    and-int/lit16 p1, p1, 0xff

    .line 6
    aput p1, v3, v1

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============  PluginWLLeds write serial:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v0, v2}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Device"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Li1/a;->h:Li1/b0;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v3}, Lb/c$b;->f([I)V

    :cond_3
    return-void
.end method
