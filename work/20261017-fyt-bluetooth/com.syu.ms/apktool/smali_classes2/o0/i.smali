.class public Lo0/i;
.super Lbase/b;
.source "SourceFile"


# static fields
.field public static g:Lo0/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lbase/b;-><init>()V

    .line 2
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    const-string v1, "Dvd-TRAN"

    invoke-virtual {v0, v1}, Lo1/x;->n(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    sget-object v1, Lbase/Configure$Property;->q:Lbase/Configure$Property;

    const-string v2, "dvd"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lbase/Configure$Property;->c(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lo1/x;->d:Z

    const-string v0, "DVD"

    .line 4
    invoke-virtual {p0, v0}, Lbase/b;->P2(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized X2()Lo0/i;
    .locals 2

    const-class v0, Lo0/i;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lo0/i;->g:Lo0/i;

    if-nez v1, :cond_0

    new-instance v1, Lo0/i;

    invoke-direct {v1}, Lo0/i;-><init>()V

    sput-object v1, Lo0/i;->g:Lo0/i;

    .line 2
    :cond_0
    sget-object v1, Lo0/i;->g:Lo0/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 2

    const/16 p3, 0x800

    const/16 p4, 0x2800

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    new-instance p1, Ly/f;

    sget p2, Lo0/e;->j:I

    invoke-direct {p1, p2}, Ly/f;-><init>(I)V

    return-object p1

    .line 2
    :pswitch_1
    new-instance p1, Ly/f;

    sget p2, Lo0/e;->i:I

    invoke-direct {p1, p2}, Ly/f;-><init>(I)V

    return-object p1

    .line 3
    :pswitch_2
    new-instance p1, Ly/f;

    sget p2, Lo0/e;->h:I

    invoke-direct {p1, p2}, Ly/f;-><init>(I)V

    return-object p1

    .line 4
    :pswitch_3
    new-instance p1, Ly/f;

    sget p2, Lo0/e;->I:I

    invoke-direct {p1, p2}, Ly/f;-><init>(I)V

    return-object p1

    .line 5
    :pswitch_4
    new-instance p1, Ly/f;

    sget p2, Lo0/e;->k:I

    invoke-direct {p1, p2}, Ly/f;-><init>(I)V

    return-object p1

    .line 6
    :pswitch_5
    invoke-virtual {p0, p2, v0}, Lo0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    aget p1, p2, v1

    if-ltz p1, :cond_0

    aget p1, p2, v1

    if-ge p1, p3, :cond_0

    .line 7
    new-instance p1, Ly/f;

    sget-object p3, Lo0/e;->c0:[I

    aget p4, p2, v1

    aget p3, p3, p4

    sget-object p4, Lo0/e;->Z:[Ljava/lang/String;

    aget p2, p2, v1

    aget-object p2, p4, p2

    invoke-direct {p1, p3, p2}, Ly/f;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 8
    :pswitch_6
    invoke-virtual {p0, p2, v0}, Lo0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    aget p1, p2, v1

    if-ltz p1, :cond_0

    aget p1, p2, v1

    if-ge p1, p3, :cond_0

    .line 9
    new-instance p1, Ly/f;

    sget-object p3, Lo0/e;->b0:[I

    aget p4, p2, v1

    aget p3, p3, p4

    sget-object p4, Lo0/e;->Y:[Ljava/lang/String;

    aget p2, p2, v1

    aget-object p2, p4, p2

    invoke-direct {p1, p3, p2}, Ly/f;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 10
    :pswitch_7
    invoke-virtual {p0, p2, v0}, Lo0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    aget p1, p2, v1

    if-ltz p1, :cond_0

    aget p1, p2, v1

    if-ge p1, p3, :cond_0

    .line 11
    new-instance p1, Ly/f;

    sget-object p3, Lo0/e;->a0:[I

    aget p4, p2, v1

    aget p3, p3, p4

    sget-object p4, Lo0/e;->X:[Ljava/lang/String;

    aget p2, p2, v1

    aget-object p2, p4, p2

    invoke-direct {p1, p3, p2}, Ly/f;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 12
    :pswitch_8
    invoke-virtual {p0, p2, v0}, Lo0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    aget p1, p2, v1

    if-ltz p1, :cond_0

    aget p1, p2, v1

    if-ge p1, p4, :cond_0

    .line 13
    new-instance p1, Ly/f;

    sget-object p3, Lo0/e;->W:[Ljava/lang/String;

    aget p2, p2, v1

    aget-object p2, p3, p2

    invoke-direct {p1, p2}, Ly/f;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 14
    :pswitch_9
    invoke-virtual {p0, p2, v0}, Lo0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    aget p1, p2, v1

    if-ltz p1, :cond_0

    aget p1, p2, v1

    if-ge p1, p4, :cond_0

    .line 15
    new-instance p1, Ly/f;

    sget-object p3, Lo0/e;->V:[Ljava/lang/String;

    aget p2, p2, v1

    aget-object p2, p3, p2

    invoke-direct {p1, p2}, Ly/f;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 16
    :pswitch_a
    invoke-virtual {p0, p2, v0}, Lo0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    aget p1, p2, v1

    if-ltz p1, :cond_0

    aget p1, p2, v1

    if-ge p1, p4, :cond_0

    .line 17
    new-instance p1, Ly/f;

    sget-object p3, Lo0/e;->U:[Ljava/lang/String;

    aget p2, p2, v1

    aget-object p2, p3, p2

    invoke-direct {p1, p2}, Ly/f;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public N2(I[I[F[Ljava/lang/String;)V
    .locals 1

    const/4 p3, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0, p2, v0}, Lo0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lo0/e;->b:Lo0/h;

    aget p2, p2, p3

    invoke-virtual {p1, p2}, Lo0/h;->z(I)V

    .line 3
    :cond_0
    :pswitch_1
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->v()V

    goto/16 :goto_0

    .line 4
    :pswitch_2
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->a()V

    goto/16 :goto_0

    .line 5
    :pswitch_3
    invoke-static {p4, v0}, Lo1/p0;->h([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    aget-object p1, p4, p3

    invoke-static {p1}, Lo0/g;->X(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7
    :pswitch_4
    invoke-virtual {p0, p2, v0}, Lo0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    aget p1, p2, p3

    invoke-static {p1}, Lo0/g;->h(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_5
    invoke-virtual {p0, p2, v0}, Lo0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    sget-object p1, Lo0/e;->b:Lo0/h;

    aget p2, p2, p3

    invoke-virtual {p1, p2}, Lo0/h;->s(I)V

    goto/16 :goto_0

    .line 11
    :pswitch_6
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->t()V

    goto/16 :goto_0

    .line 12
    :pswitch_7
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->b()V

    goto/16 :goto_0

    .line 13
    :pswitch_8
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->x()V

    goto/16 :goto_0

    .line 14
    :pswitch_9
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->y()V

    goto/16 :goto_0

    .line 15
    :pswitch_a
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->B()V

    goto/16 :goto_0

    .line 16
    :pswitch_b
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->k()V

    goto/16 :goto_0

    .line 17
    :pswitch_c
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->w()V

    goto/16 :goto_0

    .line 18
    :pswitch_d
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->E()V

    goto/16 :goto_0

    .line 19
    :pswitch_e
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->n()V

    goto/16 :goto_0

    .line 20
    :pswitch_f
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->o()V

    goto/16 :goto_0

    .line 21
    :pswitch_10
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->j()V

    goto :goto_0

    .line 22
    :pswitch_11
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->i()V

    goto :goto_0

    .line 23
    :pswitch_12
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->l()V

    goto :goto_0

    .line 24
    :pswitch_13
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->r()V

    goto :goto_0

    .line 25
    :pswitch_14
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->p()V

    goto :goto_0

    .line 26
    :pswitch_15
    invoke-virtual {p0, p2, v0}, Lo0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 27
    sget-object p1, Lo0/e;->b:Lo0/h;

    aget p2, p2, p3

    invoke-virtual {p1, p2}, Lo0/h;->q(I)V

    goto :goto_0

    :pswitch_16
    const/4 p1, 0x2

    .line 28
    invoke-virtual {p0, p2, p1}, Lo0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 29
    sget-object p1, Lo0/e;->b:Lo0/h;

    aget p3, p2, p3

    aget p2, p2, v0

    invoke-virtual {p1, p3, p2}, Lo0/h;->C(II)V

    goto :goto_0

    .line 30
    :pswitch_17
    invoke-virtual {p0, p2, v0}, Lo0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 31
    sget-object p1, Lo0/e;->b:Lo0/h;

    aget p2, p2, p3

    invoke-virtual {p1, p2}, Lo0/h;->A(I)V

    goto :goto_0

    .line 32
    :pswitch_18
    invoke-virtual {p0, p2, v0}, Lo0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x11

    new-array p4, v0, [I

    .line 33
    sget v0, Lo0/e;->E:I

    aput v0, p4, p3

    invoke-static {p1, p4}, Lo0/g;->T(I[I)V

    .line 34
    sget-object p1, Lo0/e;->b:Lo0/h;

    aget p2, p2, p3

    invoke-virtual {p1, p2}, Lo0/h;->D(I)V

    goto :goto_0

    .line 35
    :pswitch_19
    sget-boolean p1, Lo0/e;->e:Z

    if-nez p1, :cond_1

    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->f()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public O2(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public P0(Ly/b;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    invoke-virtual {v0, p1, p2}, Lo1/x;->p(Ly/b;I)V

    return-void
.end method

.method public Q2(Lo1/h0;)V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    invoke-virtual {v0, p1, p2}, Lo1/x;->m(Ly/b;I)Z

    if-nez p3, :cond_1

    return-void

    :cond_1
    const/4 p3, 0x0

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 2
    :pswitch_1
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->S:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 3
    :pswitch_2
    sget v1, Lo0/e;->g0:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 4
    iget-object v2, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    aput v1, v0, p3

    invoke-virtual {v2, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 5
    :pswitch_3
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->R:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 6
    :pswitch_4
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->Q:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 7
    :pswitch_5
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->P:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 8
    :pswitch_6
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->O:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 9
    :pswitch_7
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->A:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 10
    :pswitch_8
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v0, Lo0/e;->q:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 11
    :pswitch_9
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->k:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 12
    :pswitch_a
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->j:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 13
    :pswitch_b
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->i:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 14
    :pswitch_c
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->h:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 15
    :pswitch_d
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->f:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 16
    :pswitch_e
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->a:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 17
    :pswitch_f
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->N:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 18
    :pswitch_10
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->M:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 19
    :pswitch_11
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->J:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 20
    :pswitch_12
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->I:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 21
    :pswitch_13
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->D:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 22
    :pswitch_14
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->F:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 23
    :pswitch_15
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->E:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 24
    :pswitch_16
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v0, Lo0/e;->p:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 25
    :pswitch_17
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->C:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 26
    :pswitch_18
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->B:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 27
    :pswitch_19
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->s:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 28
    :pswitch_1a
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->r:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_0

    .line 29
    :pswitch_1b
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->y:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_0

    .line 30
    :pswitch_1c
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->x:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_0

    .line 31
    :pswitch_1d
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->w:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_0

    .line 32
    :pswitch_1e
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->v:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_0

    .line 33
    :pswitch_1f
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->u:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_0

    .line 34
    :pswitch_20
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lo0/e;->t:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_0

    .line 35
    :pswitch_21
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v0, Lo0/e;->o:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto :goto_0

    .line 36
    :pswitch_22
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v0, Lo0/e;->n:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto :goto_0

    .line 37
    :pswitch_23
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v0, Lo0/e;->m:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final Y2([II)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    array-length p1, p1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
