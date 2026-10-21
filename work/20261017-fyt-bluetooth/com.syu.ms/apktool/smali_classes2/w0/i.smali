.class public Lw0/i;
.super Lbase/b;
.source "SourceFile"


# static fields
.field public static g:Lw0/i;


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

    const-string v1, "Radio-TRAN"

    invoke-virtual {v0, v1}, Lo1/x;->n(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    sget-object v1, Lbase/Configure$Property;->q:Lbase/Configure$Property;

    const-string v2, "radio"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lbase/Configure$Property;->c(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lo1/x;->d:Z

    return-void
.end method

.method public static declared-synchronized X2()Lw0/i;
    .locals 2

    const-class v0, Lw0/i;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lw0/i;->g:Lw0/i;

    if-nez v1, :cond_0

    new-instance v1, Lw0/i;

    invoke-direct {v1}, Lw0/i;-><init>()V

    sput-object v1, Lw0/i;->g:Lw0/i;

    .line 2
    :cond_0
    sget-object v1, Lw0/i;->g:Lw0/i;
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
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public N2(I[I[F[Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "00 >>>>>>>>>>>>>>    cmd :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "radio"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lw0/d;->b:Lw0/g;

    instance-of v0, v0, Lw0/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "sys.syu.radio.ta"

    invoke-static {v0, v1}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "false"

    .line 3
    invoke-static {v0, v2}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    .line 4
    :pswitch_0
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1}, Lw0/g;->reset()V

    goto/16 :goto_1

    .line 5
    :pswitch_1
    invoke-static {p2, v1}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 6
    sget-object p1, Lw0/d;->b:Lw0/g;

    aget v1, p2, v1

    array-length v2, p2

    if-le v2, v0, :cond_1

    array-length v2, p2

    invoke-static {p2, v0, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, v1, p2, p3, p4}, Lw0/g;->t(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7
    :pswitch_2
    invoke-static {p2, v1}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, La/c;->a:Lbase/a;

    if-eqz p1, :cond_6

    .line 8
    aget p2, p2, v1

    if-ne p2, v0, :cond_2

    .line 9
    invoke-interface {p1, v0}, Lbase/a;->a(Z)V

    goto/16 :goto_1

    .line 10
    :cond_2
    invoke-interface {p1, v1}, Lbase/a;->a(Z)V

    goto/16 :goto_1

    :pswitch_3
    if-eqz p4, :cond_3

    .line 11
    sget p1, Lw0/d;->a:I

    if-eq p1, v0, :cond_6

    .line 12
    aget-object p1, p4, v1

    invoke-static {p1}, Lw0/f;->x(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 13
    :cond_3
    sget p1, Lw0/d;->a:I

    if-eq p1, v0, :cond_6

    const-string p1, "----"

    .line 14
    invoke-static {p1}, Lw0/f;->x(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 15
    :pswitch_4
    invoke-static {p2, p3, p4}, Lw0/f;->p([I[F[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 16
    :pswitch_5
    invoke-virtual {p0, p2, v0}, Lw0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 17
    sget-object p1, Lw0/d;->b:Lw0/g;

    aget p2, p2, v1

    invoke-interface {p1, p2}, Lw0/g;->q(I)V

    goto/16 :goto_1

    .line 18
    :pswitch_6
    invoke-virtual {p0, p2, v0}, Lw0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 19
    aget p1, p2, v1

    invoke-static {p1}, Lw0/f;->b(I)V

    goto/16 :goto_1

    .line 20
    :pswitch_7
    invoke-virtual {p0, p2, v0}, Lw0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 21
    sget-object p1, Lw0/d;->b:Lw0/g;

    aget p2, p2, v1

    invoke-interface {p1, p2}, Lw0/g;->r(I)V

    goto/16 :goto_1

    .line 22
    :pswitch_8
    invoke-virtual {p0, p2, v0}, Lw0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 23
    sget-object p1, Lw0/d;->b:Lw0/g;

    aget p2, p2, v1

    invoke-interface {p1, p2}, Lw0/g;->v(I)V

    goto/16 :goto_1

    .line 24
    :pswitch_9
    invoke-virtual {p0, p2, v0}, Lw0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 25
    sget-object p1, Lw0/d;->b:Lw0/g;

    aget p2, p2, v1

    invoke-interface {p1, p2}, Lw0/g;->o(I)V

    goto/16 :goto_1

    .line 26
    :pswitch_a
    invoke-virtual {p0, p2, v0}, Lw0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 27
    sget-object p1, Lw0/d;->b:Lw0/g;

    aget p2, p2, v1

    invoke-interface {p1, p2}, Lw0/g;->n(I)V

    goto/16 :goto_1

    .line 28
    :pswitch_b
    invoke-virtual {p0, p2, v0}, Lw0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 29
    sget-object p1, Lw0/d;->b:Lw0/g;

    aget p2, p2, v1

    invoke-interface {p1, p2}, Lw0/g;->w(I)V

    goto/16 :goto_1

    .line 30
    :pswitch_c
    invoke-virtual {p0, p2, v0}, Lw0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 31
    sget-object p1, Lw0/d;->b:Lw0/g;

    aget p2, p2, v1

    invoke-interface {p1, p2}, Lw0/g;->A(I)V

    goto/16 :goto_1

    .line 32
    :pswitch_d
    invoke-virtual {p0, p2, v0}, Lw0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 33
    sget-object p1, Lw0/d;->b:Lw0/g;

    aget p2, p2, v1

    invoke-interface {p1, p2}, Lw0/g;->p(I)V

    goto/16 :goto_1

    .line 34
    :pswitch_e
    invoke-virtual {p0, p2, v0}, Lw0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 35
    sget-object p1, Lw0/d;->b:Lw0/g;

    aget p2, p2, v1

    invoke-interface {p1, p2}, Lw0/g;->u(I)V

    goto/16 :goto_1

    .line 36
    :pswitch_f
    invoke-virtual {p0, p2, v0}, Lw0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 37
    sget-object p1, Lw0/d;->b:Lw0/g;

    aget p2, p2, v1

    invoke-interface {p1, p2}, Lw0/g;->s(I)V

    goto/16 :goto_1

    .line 38
    :pswitch_10
    invoke-virtual {p0, p2, v2}, Lw0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 39
    sget-object p1, Lw0/d;->b:Lw0/g;

    aget p3, p2, v1

    aget p2, p2, v0

    invoke-interface {p1, p3, p2}, Lw0/g;->y(II)V

    goto/16 :goto_1

    .line 40
    :pswitch_11
    invoke-virtual {p0, p2, v2}, Lw0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 41
    sget-object p1, Lw0/d;->b:Lw0/g;

    aget p3, p2, v1

    aget p2, p2, v0

    invoke-interface {p1, p3, p2}, Lw0/g;->l(II)V

    goto/16 :goto_1

    .line 42
    :pswitch_12
    invoke-virtual {p0, p2, v0}, Lw0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 43
    sget-object p1, Lw0/d;->b:Lw0/g;

    aget p2, p2, v1

    invoke-interface {p1, p2}, Lw0/g;->f(I)V

    goto :goto_1

    .line 44
    :pswitch_13
    invoke-virtual {p0, p2, v0}, Lw0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 45
    sget-object p1, Lw0/d;->b:Lw0/g;

    aget p2, p2, v1

    invoke-interface {p1, p2}, Lw0/g;->x(I)V

    goto :goto_1

    .line 46
    :pswitch_14
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1}, Lw0/g;->save()V

    goto :goto_1

    .line 47
    :pswitch_15
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1}, Lw0/g;->k()V

    goto :goto_1

    .line 48
    :pswitch_16
    invoke-virtual {p0, p2, v0}, Lw0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 49
    sget-object p1, Lw0/d;->b:Lw0/g;

    aget p2, p2, v1

    invoke-interface {p1, p2}, Lw0/g;->j(I)V

    goto :goto_1

    .line 50
    :pswitch_17
    invoke-virtual {p0, p2, v0}, Lw0/i;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 51
    sget-object p1, Lw0/d;->b:Lw0/g;

    aget p2, p2, v1

    invoke-interface {p1, p2}, Lw0/g;->z(I)V

    goto :goto_1

    .line 52
    :pswitch_18
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1}, Lw0/g;->B()V

    goto :goto_1

    .line 53
    :pswitch_19
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1}, Lw0/g;->h()V

    goto :goto_1

    .line 54
    :pswitch_1a
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1}, Lw0/g;->d()V

    goto :goto_1

    .line 55
    :pswitch_1b
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1}, Lw0/g;->i()V

    goto :goto_1

    .line 56
    :cond_4
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1}, Lw0/g;->g()V

    goto :goto_1

    .line 57
    :cond_5
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1}, Lw0/g;->c()V

    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1b
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
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
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
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lbase/b;->Y1(Ly/b;II)V

    .line 2
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    invoke-virtual {v0, p1, p2}, Lo1/x;->m(Ly/b;I)Z

    if-nez p3, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object p3, Lw0/d;->b:Lw0/g;

    if-eqz p3, :cond_2

    invoke-interface {p3, p1, p2}, Lw0/g;->m(Ly/b;I)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    const/16 p3, 0x1d

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, p3, :cond_b

    const/16 p3, 0x20

    if-eq p2, p3, :cond_8

    const/16 p3, 0x23

    if-eq p2, p3, :cond_7

    const/16 p3, 0x24

    if-eq p2, p3, :cond_6

    const/high16 p3, 0x10000

    const/16 v2, 0x12

    const/16 v3, 0xc

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    .line 4
    :pswitch_0
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->D:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_4

    .line 5
    :pswitch_1
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v0, Lw0/d;->I:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_4

    .line 6
    :pswitch_2
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->C:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_4

    .line 7
    :pswitch_3
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->B:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_4

    .line 8
    :pswitch_4
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->y:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_4

    .line 9
    :pswitch_5
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->A:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_4

    .line 10
    :pswitch_6
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->z:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_4

    .line 11
    :pswitch_7
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->x:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_4

    .line 12
    :pswitch_8
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->w:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_4

    .line 13
    :pswitch_9
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->v:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_4

    .line 14
    :pswitch_a
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->u:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_4

    .line 15
    :pswitch_b
    sget-object p2, Lw0/d;->b:Lw0/g;

    instance-of p3, p2, Lw0/h;

    if-eqz p3, :cond_3

    .line 16
    check-cast p2, Lw0/h;

    invoke-virtual {p2, p1}, Lw0/h;->D(Ly/b;)V

    goto/16 :goto_4

    .line 17
    :cond_3
    invoke-static {}, Lw0/f;->g()V

    goto/16 :goto_4

    .line 18
    :pswitch_c
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->t:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_4

    .line 19
    :pswitch_d
    invoke-static {}, Lw0/i;->X2()Lw0/i;

    move-result-object v0

    invoke-virtual {v0}, Lbase/b;->L2()Lo1/x;

    move-result-object v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_4

    add-int/lit8 v5, v4, 0x0

    .line 20
    sget-object v6, Lw0/d;->f:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v0, p1, p2, v5, v6}, Lo1/x;->E(Ly/b;IILjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-ge v1, v2, :cond_c

    add-int v3, v1, p3

    .line 21
    sget-object v4, Lw0/d;->g:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, p1, p2, v3, v4}, Lo1/x;->E(Ly/b;IILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 22
    :pswitch_e
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v0, Lw0/d;->H:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_4

    .line 23
    :pswitch_f
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->s:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_4

    .line 24
    :pswitch_10
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->r:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_4

    .line 25
    :pswitch_11
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->q:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_4

    .line 26
    :pswitch_12
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->p:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_4

    .line 27
    :pswitch_13
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->o:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_4

    .line 28
    :pswitch_14
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->n:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_4

    .line 29
    :pswitch_15
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->m:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_4

    .line 30
    :pswitch_16
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->l:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_4

    :pswitch_17
    move v4, v1

    :goto_2
    const/4 v5, 0x2

    if-ge v4, v3, :cond_5

    .line 31
    iget-object v6, p0, Lbase/b;->f:Lo1/x;

    new-array v5, v5, [I

    add-int/lit8 v7, v4, 0x0

    aput v7, v5, v1

    sget-object v7, Lw0/d;->d:[I

    aget v7, v7, v4

    aput v7, v5, v0

    invoke-virtual {v6, p1, p2, v5}, Lo1/x;->G(Ly/b;I[I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_3
    if-ge v3, v2, :cond_c

    .line 32
    iget-object v4, p0, Lbase/b;->f:Lo1/x;

    new-array v6, v5, [I

    add-int v7, v3, p3

    aput v7, v6, v1

    sget-object v7, Lw0/d;->e:[I

    aget v7, v7, v3

    aput v7, v6, v0

    invoke-virtual {v4, p1, p2, v6}, Lo1/x;->G(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 33
    :pswitch_18
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->j:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_4

    .line 34
    :pswitch_19
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->k:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_4

    .line 35
    :pswitch_1a
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->i:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_4

    .line 36
    :pswitch_1b
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->h:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_4

    .line 37
    :cond_6
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->G:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_4

    .line 38
    :cond_7
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->F:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_4

    .line 39
    :cond_8
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v2, v0, [I

    sget-object v3, La/c;->a:Lbase/a;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Lbase/a;->d()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    move v0, v1

    :cond_a
    aput v0, v2, v1

    invoke-virtual {p3, p1, p2, v2}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_4

    .line 40
    :cond_b
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lw0/d;->E:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    :cond_c
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
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
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
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
