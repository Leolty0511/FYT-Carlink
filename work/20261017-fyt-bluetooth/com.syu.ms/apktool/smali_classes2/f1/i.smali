.class public Lf1/i;
.super Lf1/q;
.source "SourceFile"


# instance fields
.field public final P:I

.field public final Q:Z

.field public R:Lf1/q$c;

.field public S:Z

.field public T:Lo1/l0;

.field public U:Lq1/b;

.field public V:I

.field public W:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lf1/q$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILp1/a;ILandroid/os/Handler;)V
    .locals 6

    const/16 v1, 0x9

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lf1/q;-><init>(IILp1/a;ILandroid/os/Handler;)V

    const/16 p1, 0x64

    .line 2
    iput p1, p0, Lf1/i;->P:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lf1/i;->Q:Z

    .line 4
    new-instance p1, Lf1/q$c;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Lf1/q$c;-><init>(II)V

    iput-object p1, p0, Lf1/i;->R:Lf1/q$c;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lf1/i;->S:Z

    .line 6
    new-instance p1, Lo1/l0;

    invoke-direct {p1}, Lo1/l0;-><init>()V

    iput-object p1, p0, Lf1/i;->T:Lo1/l0;

    .line 7
    new-instance p1, Lq1/b;

    const/4 p3, 0x3

    invoke-direct {p1, p2, p3}, Lq1/b;-><init>(II)V

    iput-object p1, p0, Lf1/i;->U:Lq1/b;

    .line 8
    iput p2, p0, Lf1/i;->V:I

    .line 9
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lf1/i;->W:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public D()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Lf1/q;->D()V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============================>> RESET  Waiting onUEvent START 1 chipid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chip6911C"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object v0, Lbase/Configure$Property;->B:Lbase/Configure$Property;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lbase/Configure$Property;->b(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget v0, p0, Lf1/q;->h:I

    invoke-static {v0}, Lcom/syu/jni/ToolsJni;->cmd_33_reset_videoIc(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lf1/q;->H(Z)V

    .line 7
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==============================>> RESET Waiting onUEvent END 1 chipid : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/q;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public M()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============================>> setup()  chipid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf1/q;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chip6911C"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lf1/i;->D()V

    .line 4
    iget-boolean v0, p0, Lf1/q;->r:Z

    return v0
.end method

.method public X(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/i;->U:Lq1/b;

    invoke-virtual {v0}, Lq1/b;->a()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lf1/i;->S:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lf1/q;->k:I

    .line 4
    invoke-virtual {p0, v0, v0}, Lf1/q;->y(II)[I

    move-result-object v0

    const/16 v1, 0xad

    invoke-static {v1, v0}, Lu0/d;->I3(I[I)V

    .line 5
    invoke-super {p0}, Lf1/q;->a()V

    return-void
.end method

.method public declared-synchronized c(I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lf1/q;->i:I

    if-eq v0, p1, :cond_3

    invoke-virtual {p0}, Lf1/q;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lf1/q;->c(I)V

    .line 3
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lf1/i;->R:Lf1/q$c;

    const-string v1, "sys.c6911c.w"

    const/16 v2, 0x500

    invoke-static {v1, v2}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lf1/q$c;->a:I

    .line 5
    iget-object v0, p0, Lf1/i;->R:Lf1/q$c;

    const-string v1, "sys.c6911c.h"

    const/16 v2, 0x2d0

    invoke-static {v1, v2}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lf1/q$c;->b:I

    .line 6
    :cond_1
    iget v0, p0, Lf1/q;->i:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lf1/q;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    monitor-exit p0

    return-void

    .line 8
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public k()I
    .locals 8

    .line 1
    iget-boolean v0, p0, Lf1/q;->r:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lf1/i;->U:Lq1/b;

    iget v2, p0, Lf1/i;->V:I

    invoke-virtual {v0, v2}, Lq1/b;->g(I)I

    move-result v0

    const/4 v2, 0x1

    const-string v3, " chipid : "

    const-string v4, "==============================>> 00 SET "

    const-string v5, "Chip6911C"

    const/4 v6, -0x1

    if-eq v0, v6, :cond_3

    .line 3
    iget v7, p0, Lf1/q;->k:I

    if-eq v7, v0, :cond_3

    .line 4
    invoke-virtual {p0, v0}, Lf1/i;->X(I)Z

    .line 5
    iput-boolean v2, p0, Lf1/i;->S:Z

    .line 6
    iget-object v0, p0, Lf1/i;->R:Lf1/q$c;

    iget v7, v0, Lf1/q$c;->a:I

    if-lez v7, :cond_2

    iget v0, v0, Lf1/q$c;->b:I

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v6, 0xe

    :cond_2
    :goto_0
    iput v6, p0, Lf1/q;->k:I

    goto :goto_1

    .line 7
    :cond_3
    iget-boolean v0, p0, Lf1/i;->S:Z

    if-eqz v0, :cond_4

    .line 8
    iput-boolean v1, p0, Lf1/i;->S:Z

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lf1/i;->R:Lf1/q$c;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lf1/q;->h:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xad

    .line 10
    iget-object v6, p0, Lf1/i;->R:Lf1/q$c;

    iget v7, v6, Lf1/q$c;->a:I

    iget v6, v6, Lf1/q$c;->b:I

    invoke-virtual {p0, v7, v6}, Lf1/q;->y(II)[I

    move-result-object v6

    invoke-static {v0, v6}, Lu0/d;->I3(I[I)V

    .line 11
    :cond_4
    :goto_1
    iget-object v0, p0, Lf1/i;->T:Lo1/l0;

    const/16 v6, 0x1f4

    invoke-virtual {v0, v6}, Lo1/l0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Lf1/i;->T:Lo1/l0;

    invoke-virtual {v0}, Lo1/l0;->a()V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lf1/i;->R:Lf1/q$c;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "  sNtscPal : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf1/i;->V:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lf1/q;->h:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_5
    iget-object v0, p0, Lf1/i;->U:Lq1/b;

    invoke-virtual {v0}, Lq1/b;->d()I

    move-result v0

    if-gez v0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    return v1
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
    .locals 1

    .line 1
    iget v0, p0, Lf1/q;->k:I

    invoke-virtual {p0, v0}, Lf1/i;->X(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lf1/q;->H(Z)V

    return-void
.end method

.method public x(Ljava/lang/String;)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lf1/q;->r:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x64

    .line 2
    invoke-static {v2, v3}, Lo1/s0;->C(J)V

    const/16 v0, 0xff

    const/16 v2, 0x80

    .line 3
    invoke-virtual {p0, v0, v2}, Lf1/q;->V(II)I

    const/16 v3, 0xee

    const/4 v4, 0x1

    .line 4
    invoke-virtual {p0, v3, v4}, Lf1/q;->V(II)I

    const/16 v5, 0xd2

    .line 5
    invoke-virtual {p0, v0, v5}, Lf1/q;->V(II)I

    const/16 v5, 0x83

    const/16 v6, 0x11

    .line 6
    invoke-virtual {p0, v5, v6}, Lf1/q;->V(II)I

    const/16 v5, 0x96

    .line 7
    invoke-virtual {p0, v5}, Lf1/q;->A(I)I

    move-result v5

    const/16 v6, 0x97

    .line 8
    invoke-virtual {p0, v6}, Lf1/q;->A(I)I

    move-result v6

    .line 9
    invoke-static {v5, v6}, Lo1/s0;->x(II)I

    move-result v5

    const/16 v6, 0x8b

    .line 10
    invoke-virtual {p0, v6}, Lf1/q;->A(I)I

    move-result v6

    const/16 v7, 0x8c

    .line 11
    invoke-virtual {p0, v7}, Lf1/q;->A(I)I

    move-result v7

    .line 12
    invoke-static {v6, v7}, Lo1/s0;->x(II)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    .line 13
    new-instance v7, Lf1/q$c;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v8}, Lf1/q$c;-><init>(II)V

    const/16 v9, 0x64

    if-le v6, v9, :cond_3

    if-le v5, v9, :cond_3

    .line 14
    iget-object v7, p0, Lf1/i;->R:Lf1/q$c;

    iget v9, v7, Lf1/q$c;->a:I

    if-ne v9, v6, :cond_1

    iget v9, v7, Lf1/q$c;->b:I

    if-eq v9, v5, :cond_2

    .line 15
    :cond_1
    iput-boolean v4, p0, Lf1/i;->S:Z

    .line 16
    :cond_2
    iput v6, v7, Lf1/q$c;->a:I

    .line 17
    iput v5, v7, Lf1/q$c;->b:I

    const/16 v7, 0xe

    .line 18
    new-instance v9, Lf1/q$c;

    invoke-direct {v9, v6, v5}, Lf1/q$c;-><init>(II)V

    goto :goto_0

    :cond_3
    move-object v9, v7

    move v7, v8

    .line 19
    :goto_0
    invoke-virtual {p0, v0, v2}, Lf1/q;->V(II)I

    .line 20
    invoke-virtual {p0, v3, v1}, Lf1/q;->V(II)I

    .line 21
    iget v0, p0, Lf1/i;->V:I

    if-eq v0, v7, :cond_6

    .line 22
    iget v0, v9, Lf1/q$c;->a:I

    if-lez v0, :cond_4

    iget v0, v9, Lf1/q$c;->b:I

    if-gtz v0, :cond_5

    .line 23
    :cond_4
    iput v1, p0, Lf1/q;->B:I

    .line 24
    iput v8, p0, Lf1/q;->k:I

    .line 25
    :cond_5
    iput v7, p0, Lf1/i;->V:I

    .line 26
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ============>>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " videoSize: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lf1/i;->R:Lf1/q$c;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " width : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Chip6911C"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method
