.class public Lh0/g;
.super Lbase/b;
.source "SourceFile"


# static fields
.field public static k:Lh0/g;


# instance fields
.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:Lj0/b;

.field public j:Z


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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh0/g;->g:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lh0/g;->h:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lh0/g;->i:Lj0/b;

    .line 5
    iput-boolean v0, p0, Lh0/g;->j:Z

    const-string v1, "BT"

    .line 6
    invoke-virtual {p0, v1}, Lbase/b;->P2(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    const-string v2, "Bt-TRAN"

    invoke-virtual {v1, v2}, Lo1/x;->n(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    sget-object v2, Lbase/Configure$Property;->q:Lbase/Configure$Property;

    const-string v3, "bt"

    invoke-virtual {v2, v3, v0}, Lbase/Configure$Property;->c(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lo1/x;->d:Z

    return-void
.end method

.method public static declared-synchronized Y2()Lh0/g;
    .locals 2

    const-class v0, Lh0/g;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lh0/g;->k:Lh0/g;

    if-nez v1, :cond_0

    new-instance v1, Lh0/g;

    invoke-direct {v1}, Lh0/g;-><init>()V

    sput-object v1, Lh0/g;->k:Lh0/g;

    .line 2
    :cond_0
    sget-object v1, Lh0/g;->k:Lh0/g;
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
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------- BT CMD = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3, p4}, Lo1/b0;->c(I[I[F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mRdaParser : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh0/g;->i:Lj0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BT"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lh0/g;->i:Lj0/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lj0/b;->F(I[I[F[Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x31

    const/4 v0, 0x0

    if-eq p1, p3, :cond_8

    const/16 p3, 0x32

    if-eq p1, p3, :cond_7

    const/16 p3, 0x34

    if-eq p1, p3, :cond_6

    const/16 p3, 0x35

    const/4 v1, 0x1

    if-eq p1, p3, :cond_5

    const/16 p3, 0x3b

    if-eq p1, p3, :cond_4

    const/16 p3, 0x44

    if-eq p1, p3, :cond_3

    const/16 p3, 0x45

    if-eq p1, p3, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 3
    :pswitch_0
    invoke-static {p4, v0}, Lo1/s0;->i([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 4
    sget-object p1, Lh0/c;->b:Lh0/f;

    aget-object p2, p4, v0

    invoke-interface {p1, p2}, Lh0/f;->t(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5
    :pswitch_1
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->Q()V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    invoke-static {p2, v0}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 7
    aget p1, p2, v0

    if-ne p1, v1, :cond_1

    move v0, v1

    .line 8
    :cond_1
    invoke-virtual {p0, v0}, Lh0/g;->X2(Z)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object p1

    const/16 p2, 0x240

    invoke-virtual {p1, p2}, Lc/e;->c(I)Z

    goto/16 :goto_0

    .line 10
    :pswitch_4
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->M()V

    goto/16 :goto_0

    .line 11
    :pswitch_5
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->B()V

    goto/16 :goto_0

    .line 12
    :pswitch_6
    invoke-virtual {p0, p4, v1}, Lh0/g;->e3([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 13
    sget-object p1, Lh0/c;->b:Lh0/f;

    aget-object p2, p4, v0

    invoke-interface {p1, p2}, Lh0/f;->y(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 14
    :pswitch_7
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->f()V

    goto/16 :goto_0

    .line 15
    :pswitch_8
    invoke-virtual {p0, p4, v1}, Lh0/g;->e3([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 16
    sget-object p1, Lh0/c;->b:Lh0/f;

    aget-object p2, p4, v0

    invoke-interface {p1, p2}, Lh0/f;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 17
    :pswitch_9
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->F()V

    goto/16 :goto_0

    .line 18
    :pswitch_a
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->d()V

    goto/16 :goto_0

    .line 19
    :pswitch_b
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->r()V

    goto/16 :goto_0

    .line 20
    :pswitch_c
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->G()V

    goto/16 :goto_0

    .line 21
    :pswitch_d
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->s()V

    goto/16 :goto_0

    .line 22
    :pswitch_e
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->S()V

    goto/16 :goto_0

    .line 23
    :pswitch_f
    invoke-virtual {p0, p2, v1}, Lh0/g;->b3([II)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 24
    sget-object p1, Lh0/c;->b:Lh0/f;

    aget p2, p2, v0

    invoke-interface {p1, p2}, Lh0/f;->H(I)V

    goto/16 :goto_0

    .line 25
    :pswitch_10
    invoke-virtual {p0, p2, v1}, Lh0/g;->b3([II)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 26
    aget p1, p2, v0

    invoke-static {p1}, Lh0/e;->u(I)V

    goto/16 :goto_0

    .line 27
    :pswitch_11
    invoke-virtual {p0, p2, v1}, Lh0/g;->b3([II)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 28
    sget-object p1, Lh0/c;->b:Lh0/f;

    aget p2, p2, v0

    invoke-interface {p1, p2}, Lh0/f;->x(I)V

    goto/16 :goto_0

    .line 29
    :pswitch_12
    invoke-virtual {p0, p2, v1}, Lh0/g;->b3([II)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 30
    aget p1, p2, v0

    invoke-static {p1}, Lh0/e;->f(I)V

    goto/16 :goto_0

    .line 31
    :pswitch_13
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->w()V

    goto/16 :goto_0

    .line 32
    :pswitch_14
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->j()V

    goto/16 :goto_0

    .line 33
    :pswitch_15
    invoke-virtual {p0, p4, v1}, Lh0/g;->e3([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 34
    sget-object p1, Lh0/c;->b:Lh0/f;

    aget-object p2, p4, v0

    invoke-interface {p1, p2}, Lh0/f;->N(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    :pswitch_16
    invoke-virtual {p0, p4, v1}, Lh0/g;->e3([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 36
    sget-object p1, Lh0/c;->b:Lh0/f;

    aget-object p2, p4, v0

    invoke-interface {p1, p2}, Lh0/f;->u(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 37
    :pswitch_17
    invoke-virtual {p0, p4, v1}, Lh0/g;->e3([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 38
    sget-object p1, Lh0/c;->b:Lh0/f;

    aget-object p2, p4, v0

    invoke-interface {p1, p2}, Lh0/f;->A(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 39
    :pswitch_18
    invoke-virtual {p0, p4, v1}, Lh0/g;->e3([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 40
    sget-object p1, Lh0/c;->b:Lh0/f;

    aget-object p2, p4, v0

    invoke-interface {p1, p2}, Lh0/f;->K(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 41
    :pswitch_19
    invoke-virtual {p0, p4, v1}, Lh0/g;->e3([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 42
    sget-object p1, Lh0/c;->b:Lh0/f;

    aget-object p2, p4, v0

    invoke-interface {p1, p2}, Lh0/f;->D(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 43
    :pswitch_1a
    invoke-virtual {p0, p2, v1}, Lh0/g;->b3([II)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 44
    sget-object p1, Lh0/c;->b:Lh0/f;

    aget p2, p2, v0

    invoke-interface {p1, p2}, Lh0/f;->L(I)V

    goto/16 :goto_0

    .line 45
    :pswitch_1b
    invoke-virtual {p0, p4, v1}, Lh0/g;->e3([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 46
    sget-object p1, Lh0/c;->b:Lh0/f;

    aget-object p2, p4, v0

    invoke-interface {p1, p2}, Lh0/f;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 47
    :pswitch_1c
    invoke-virtual {p0, p4, v1}, Lh0/g;->e3([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 48
    sget-object p1, Lh0/c;->b:Lh0/f;

    aget-object p2, p4, v0

    invoke-interface {p1, p2}, Lh0/f;->U(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 49
    :pswitch_1d
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->reset()V

    goto/16 :goto_0

    .line 50
    :pswitch_1e
    invoke-virtual {p0, p2, v1}, Lh0/g;->b3([II)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 51
    aget p1, p2, v0

    invoke-static {p1}, Lh0/e;->A(I)V

    goto/16 :goto_0

    .line 52
    :pswitch_1f
    invoke-virtual {p0, p2, v1}, Lh0/g;->b3([II)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 53
    sget-object p1, Lh0/c;->b:Lh0/f;

    aget p2, p2, v0

    invoke-interface {p1, p2}, Lh0/f;->C(I)V

    goto/16 :goto_0

    .line 54
    :pswitch_20
    invoke-virtual {p0, p2, v1}, Lh0/g;->b3([II)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 55
    sget-object p1, Lh0/c;->b:Lh0/f;

    aget p2, p2, v0

    invoke-interface {p1, p2}, Lh0/f;->I(I)V

    goto/16 :goto_0

    .line 56
    :pswitch_21
    invoke-virtual {p0, p2, v1}, Lh0/g;->b3([II)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 57
    sget-object p1, Lh0/c;->b:Lh0/f;

    aget p2, p2, v0

    invoke-interface {p1, p2}, Lh0/f;->P(I)V

    goto/16 :goto_0

    .line 58
    :pswitch_22
    invoke-virtual {p0, p4, v1}, Lh0/g;->e3([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 59
    aget-object p1, p4, v0

    invoke-static {p1}, Lh0/e;->q(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 60
    :pswitch_23
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->z()V

    goto/16 :goto_0

    .line 61
    :pswitch_24
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->e()V

    goto/16 :goto_0

    .line 62
    :pswitch_25
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->n()V

    goto/16 :goto_0

    .line 63
    :pswitch_26
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->T()V

    goto/16 :goto_0

    .line 64
    :pswitch_27
    invoke-virtual {p0, p4, v1}, Lh0/g;->e3([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 65
    sget-object p1, Lh0/c;->b:Lh0/f;

    aget-object p2, p4, v0

    invoke-interface {p1, p2}, Lh0/f;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 66
    :pswitch_28
    invoke-virtual {p0, p2, v1}, Lh0/g;->b3([II)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 67
    sget-object p1, Lh0/c;->b:Lh0/f;

    aget p2, p2, v0

    invoke-interface {p1, p2}, Lh0/f;->h(I)V

    goto/16 :goto_0

    .line 68
    :pswitch_29
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->l()V

    goto/16 :goto_0

    .line 69
    :pswitch_2a
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->k()V

    goto/16 :goto_0

    .line 70
    :pswitch_2b
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->E()V

    goto/16 :goto_0

    .line 71
    :pswitch_2c
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->p()V

    goto/16 :goto_0

    .line 72
    :pswitch_2d
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->V()V

    goto/16 :goto_0

    .line 73
    :pswitch_2e
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->i()V

    goto/16 :goto_0

    .line 74
    :cond_2
    invoke-static {p2, v0}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 75
    sget-object p1, Lh0/c;->b:Lh0/f;

    aget p2, p2, v0

    invoke-interface {p1, p2}, Lh0/f;->q(I)V

    goto :goto_0

    .line 76
    :cond_3
    invoke-static {p2, v0}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 77
    sget-object p1, Lh0/c;->b:Lh0/f;

    aget p2, p2, v0

    invoke-interface {p1, p2}, Lh0/f;->J(I)V

    goto :goto_0

    .line 78
    :cond_4
    invoke-static {p4, v0}, Lo1/s0;->i([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 79
    sget-object p1, Lh0/c;->b:Lh0/f;

    instance-of p2, p1, Lh0/b;

    if-eqz p2, :cond_9

    .line 80
    check-cast p1, Lh0/b;

    aget-object p2, p4, v0

    invoke-virtual {p1, p2}, Lh0/b;->b0(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_5
    invoke-virtual {p0, p4, v1}, Lh0/g;->e3([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 82
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object p2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C_BT_NUMBER_NAME = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p4, v0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 83
    aget-object p1, p4, v0

    invoke-static {p1}, Lh0/e;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_6
    invoke-static {p4}, Lh0/e;->b([Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_7
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->m()V

    goto :goto_0

    .line 86
    :cond_8
    invoke-static {p4, v0}, Lo1/s0;->i([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 87
    sget-object p1, Lh0/c;->b:Lh0/f;

    aget-object p2, p4, v0

    invoke-interface {p1, p2}, Lh0/f;->o(Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
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
    .packed-switch 0x37
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public O2(I[I[F[Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_a

    if-eq p1, v1, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/16 v2, 0x12

    if-eq p1, v2, :cond_7

    const/16 v2, 0x13

    if-eq p1, v2, :cond_6

    const/16 v2, 0x16

    if-eq p1, v2, :cond_5

    const/16 v2, 0x18

    if-eq p1, v2, :cond_4

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_3

    const/16 v2, 0x22

    if-eq p1, v2, :cond_2

    const/16 v2, 0x1c

    if-eq p1, v2, :cond_1

    const/16 v2, 0x1d

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 1
    :pswitch_0
    invoke-static {p4, v1}, Lo1/p0;->h([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2
    aget-object p1, p4, v0

    invoke-static {p1}, Lh0/e;->S(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    invoke-static {p4, v1}, Lo1/p0;->h([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 4
    aget-object p1, p4, v0

    invoke-static {p1}, Lh0/e;->F(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5
    :pswitch_2
    invoke-static {p4, v1}, Lo1/p0;->h([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 6
    aget-object p1, p4, v0

    invoke-static {p1}, Lh0/e;->E(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7
    :pswitch_3
    invoke-static {p2, v1}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 8
    aget p1, p2, v0

    invoke-static {p1}, Lh0/e;->l(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_4
    invoke-static {p2, v1}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 10
    aget p1, p2, v0

    invoke-static {p1}, Lh0/e;->s(I)V

    .line 11
    sget-object p1, Lh0/c;->b:Lh0/f;

    if-eqz p1, :cond_b

    instance-of p1, p1, Lmodule/bt/CmdBtSG9832;

    if-eqz p1, :cond_b

    .line 12
    sget p1, Lmodule/bt/CmdBtSG9832;->v:I

    if-ne p1, v1, :cond_b

    .line 13
    sget-object p1, Lh0/c;->b:Lh0/f;

    check-cast p1, Lmodule/bt/CmdBtSG9832;

    invoke-virtual {p1}, Lmodule/bt/CmdBtSG9832;->k0()V

    goto/16 :goto_0

    .line 14
    :pswitch_5
    invoke-static {p4, v1}, Lo1/p0;->h([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 15
    aget-object p1, p4, v0

    invoke-static {p1}, Lh0/e;->q(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 16
    :pswitch_6
    invoke-static {p4, v1}, Lo1/p0;->h([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 17
    aget-object p1, p4, v0

    invoke-static {p1}, Lh0/e;->O(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 18
    :pswitch_7
    invoke-static {p4, v1}, Lo1/p0;->h([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 19
    aget-object p1, p4, v0

    invoke-static {p1}, Lh0/e;->N(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 20
    :pswitch_8
    invoke-static {p1, p2, p3, p4}, Lh0/e;->X(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 21
    :cond_0
    invoke-static {p2, v1}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 22
    aget p1, p2, v0

    invoke-static {p1}, Lh0/e;->L(I)V

    goto :goto_0

    .line 23
    :cond_1
    invoke-static {p2, v1}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 24
    aget p1, p2, v0

    invoke-static {p1}, Lh0/e;->m(I)V

    goto :goto_0

    .line 25
    :cond_2
    invoke-static {p2, v1}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 26
    aget p1, p2, v0

    invoke-static {p1}, Lh0/e;->c(I)V

    goto :goto_0

    .line 27
    :cond_3
    invoke-static {p4, v1}, Lo1/p0;->h([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 28
    aget-object p1, p4, v0

    invoke-static {p1}, Lh0/e;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 p3, 0x0

    .line 29
    invoke-static {p1, p2, p3, p4}, Lh0/e;->X(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_5
    invoke-static {p1, p2, p3, p4}, Lh0/e;->X(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_6
    invoke-static {p1, p2, p3, p4}, Lh0/e;->X(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_7
    invoke-static {p2, v1}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 33
    aget p1, p2, v0

    invoke-static {p1}, Lh0/e;->B(I)V

    goto :goto_0

    .line 34
    :cond_8
    invoke-static {p2, v1}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 35
    aget p1, p2, v0

    invoke-static {p1}, Lh0/e;->o(I)V

    goto :goto_0

    .line 36
    :cond_9
    invoke-static {p4, v1}, Lo1/p0;->h([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 37
    aget-object p1, p4, v0

    invoke-static {p1}, Lh0/e;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_a
    invoke-static {p4, v1}, Lo1/p0;->h([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 39
    aget-object p1, p4, v0

    invoke-static {p1}, Lh0/e;->k(Ljava/lang/String;)V

    :cond_b
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

.method public X2(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lh0/c;->f:Z

    if-eq v0, p1, :cond_0

    .line 2
    sput-boolean p1, Lh0/c;->f:Z

    const/16 v0, 0x37

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->W(I[I)V

    const/16 v0, 0xd6

    .line 4
    invoke-static {v0, p1}, Lm1/c;->e(II)I

    :cond_0
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 7

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
    iget-object v0, p0, Lh0/g;->i:Lj0/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3}, Lj0/b;->R(Ly/b;II)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_f

    const/4 p3, 0x1

    if-eq p2, p3, :cond_e

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_d

    const/4 v2, 0x3

    if-eq p2, v2, :cond_c

    const/4 v2, 0x4

    if-eq p2, v2, :cond_b

    const/16 v2, 0x14

    if-eq p2, v2, :cond_a

    const/16 v2, 0x17

    if-eq p2, v2, :cond_9

    const/16 v2, 0x33

    if-eq p2, v2, :cond_8

    const/16 v2, 0x37

    if-eq p2, v2, :cond_7

    const/16 v2, 0x3a

    if-eq p2, v2, :cond_5

    const/16 v2, 0x40

    if-eq p2, v2, :cond_4

    const/16 v2, 0x44

    if-eq p2, v2, :cond_3

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    packed-switch p2, :pswitch_data_4

    goto/16 :goto_1

    .line 4
    :pswitch_0
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v0, Lh0/c;->t:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 5
    :pswitch_1
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    new-array p3, p3, [I

    sget v2, Lh0/c;->C:I

    aput v2, p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_1

    .line 6
    :pswitch_2
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v0, Lh0/c;->s:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 7
    :pswitch_3
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v0

    invoke-virtual {v0}, Lplugins/ZLink;->d0()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v0

    invoke-virtual {v0}, Lh1/a;->j()Z

    move-result v0

    if-nez v0, :cond_10

    .line 8
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    new-array p3, p3, [I

    sget v2, Lh0/c;->U:I

    aput v2, p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_1

    .line 9
    :pswitch_4
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    new-array p3, p3, [I

    iget v2, p0, Lh0/g;->h:I

    aput v2, p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_1

    .line 10
    :pswitch_5
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    new-array p3, p3, [I

    sget v2, Lh0/c;->T:I

    aput v2, p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_1

    .line 11
    :pswitch_6
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    new-array p3, p3, [I

    sget v2, Lh0/c;->a0:I

    aput v2, p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_1

    .line 12
    :pswitch_7
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    new-array p3, p3, [I

    sget v2, Lh0/c;->S:I

    aput v2, p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_1

    .line 13
    :pswitch_8
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    new-array p3, p3, [I

    sget v2, Lh0/c;->Q:I

    aput v2, p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_1

    .line 14
    :pswitch_9
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    new-array p3, p3, [I

    sget v2, Lh0/c;->O:I

    aput v2, p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_1

    .line 15
    :pswitch_a
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    new-array p3, p3, [I

    sget v2, Lh0/c;->H:I

    aput v2, p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_1

    .line 16
    :pswitch_b
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v0, Lh0/c;->o:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 17
    :pswitch_c
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v0, Lh0/c;->n:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 18
    :pswitch_d
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    new-array p3, p3, [I

    sget v2, Lh0/c;->z:I

    aput v2, p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_1

    .line 19
    :pswitch_e
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v0, Lh0/c;->w:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 20
    :pswitch_f
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v0, Lh0/c;->v:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 21
    :pswitch_10
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v0, Lh0/c;->u:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 22
    :pswitch_11
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v0, Lh0/c;->r:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 23
    :pswitch_12
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    new-array p3, p3, [I

    sget v2, Lh0/c;->N:I

    aput v2, p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_1

    .line 24
    :pswitch_13
    sget-wide v2, Lh0/c;->e0:J

    .line 25
    iget-object v4, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    const/16 v5, 0x20

    shr-long v5, v2, v5

    long-to-int v5, v5

    aput v5, v0, v1

    long-to-int v1, v2

    aput v1, v0, p3

    invoke-virtual {v4, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_1

    .line 26
    :pswitch_14
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    new-array p3, p3, [I

    sget v2, Lh0/c;->M:I

    aput v2, p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_1

    .line 27
    :pswitch_15
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    new-array p3, p3, [I

    sget v2, Lh0/c;->E:I

    aput v2, p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_1

    .line 28
    :pswitch_16
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v0, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 29
    :pswitch_17
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v0, Lh0/c;->q:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 30
    :pswitch_18
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v0, Lh0/c;->p:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 31
    :cond_3
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    new-array p3, p3, [I

    sget v2, Lh0/c;->D:I

    aput v2, p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_1

    .line 32
    :cond_4
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    new-array p3, p3, [I

    iget-boolean v2, p0, Lh0/g;->j:Z

    aput v2, p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_1

    .line 33
    :cond_5
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    new-array v2, p3, [I

    sget v3, Lh0/c;->W:I

    if-ne v3, p3, :cond_6

    goto :goto_0

    :cond_6
    move p3, v1

    :goto_0
    aput p3, v2, v1

    invoke-virtual {v0, p1, p2, v2}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_1

    .line 34
    :cond_7
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    new-array p3, p3, [I

    sget-boolean v2, Lh0/c;->f:Z

    aput v2, p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_1

    .line 35
    :cond_8
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v0, Lh0/c;->y:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto :goto_1

    .line 36
    :cond_9
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v0, Lh0/c;->x:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto :goto_1

    .line 37
    :cond_a
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    new-array p3, p3, [I

    sget v2, Lh0/c;->A:I

    aput v2, p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_1

    .line 38
    :cond_b
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    new-array p3, p3, [I

    sget v2, Lh0/c;->K:I

    aput v2, p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_1

    .line 39
    :cond_c
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    new-array p3, p3, [I

    sget v2, Lh0/c;->J:I

    aput v2, p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_1

    .line 40
    :cond_d
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    new-array p3, p3, [I

    sget v2, Lh0/c;->I:I

    aput v2, p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_1

    .line 41
    :cond_e
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v0, Lh0/c;->m:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto :goto_1

    .line 42
    :cond_f
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v0, Lh0/c;->l:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    :cond_10
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1f
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized Z2(Lz/e;)Lj0/b;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lh0/g;->i:Lj0/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj0/b;->C()Lz/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lj0/b;

    invoke-direct {v0, p1}, Lj0/b;-><init>(Lz/e;)V

    iput-object v0, p0, Lh0/g;->i:Lj0/b;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lh0/g;->d3(Z)V

    .line 4
    :cond_1
    iget-object p1, p0, Lh0/g;->i:Lj0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a3()Lj0/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lh0/g;->i:Lj0/b;

    return-object v0
.end method

.method public final b3([II)Z
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

.method public c3(I)V
    .locals 3

    .line 1
    iget v0, p0, Lh0/g;->h:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lh0/g;->h:I

    const/16 v0, 0x2a

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->W(I[I)V

    :cond_0
    return-void
.end method

.method public final d3(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lh0/g;->j:Z

    if-eq p1, v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lh0/g;->j:Z

    const/16 v0, 0x40

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->W(I[I)V

    :cond_0
    return-void
.end method

.method public final e3([Ljava/lang/String;I)Z
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
