.class public Lc1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lc1/p;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc1/p;->K2()I

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lo1/q;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lo1/q;

    .line 3
    sget-object v0, Lz/a;->p:Lo1/f0;

    sget-object v1, Lz/a;->f:Lo1/e0;

    invoke-virtual {v0, v1, p0}, Lo1/f0;->d(Lo1/e0;Lo1/q;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lz/a;->p:Lo1/f0;

    invoke-virtual {p0}, Lo1/f0;->c()V

    const-string v0, "NOT IN USE, TPMS SERIAL THREAD KEEP WAIT"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic b(Lc1/p;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lc1/b;->a(Lc1/p;)V

    return-void
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static d(I)Lc1/p;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 1
    :pswitch_0
    new-instance p0, Lc1/p;

    invoke-direct {p0}, Lc1/p;-><init>()V

    return-object p0

    .line 2
    :pswitch_1
    new-instance p0, Lc1/o;

    invoke-direct {p0}, Lc1/o;-><init>()V

    return-object p0

    .line 3
    :pswitch_2
    new-instance p0, Lc1/n;

    invoke-direct {p0}, Lc1/n;-><init>()V

    return-object p0

    .line 4
    :pswitch_3
    new-instance p0, Lc1/m;

    invoke-direct {p0}, Lc1/m;-><init>()V

    return-object p0

    .line 5
    :pswitch_4
    new-instance p0, Lc1/l;

    invoke-direct {p0}, Lc1/l;-><init>()V

    return-object p0

    .line 6
    :pswitch_5
    new-instance p0, Lc1/k;

    invoke-direct {p0}, Lc1/k;-><init>()V

    return-object p0

    .line 7
    :pswitch_6
    new-instance p0, Lc1/j;

    invoke-direct {p0}, Lc1/j;-><init>()V

    return-object p0

    .line 8
    :pswitch_7
    new-instance p0, Lc1/i;

    invoke-direct {p0}, Lc1/i;-><init>()V

    return-object p0

    .line 9
    :pswitch_8
    new-instance p0, Lc1/h;

    invoke-direct {p0}, Lc1/h;-><init>()V

    return-object p0

    .line 10
    :pswitch_9
    new-instance p0, Lc1/g;

    invoke-direct {p0}, Lc1/g;-><init>()V

    return-object p0

    .line 11
    :pswitch_a
    new-instance p0, Lc1/f;

    invoke-direct {p0}, Lc1/f;-><init>()V

    return-object p0

    .line 12
    :pswitch_b
    new-instance p0, Lc1/e;

    invoke-direct {p0}, Lc1/e;-><init>()V

    return-object p0

    .line 13
    :pswitch_c
    new-instance p0, Lc1/d;

    invoke-direct {p0}, Lc1/d;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static e(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static f(I)V
    .locals 3

    .line 1
    sget v0, Lc1/a;->e:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lc1/a;->e:I

    const/16 v0, 0x1f4

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lc1/b;->i(I[I)V

    :cond_0
    return-void
.end method

.method public static g(I)V
    .locals 2

    .line 1
    sget v0, Lc1/a;->a:I

    if-eq v0, p0, :cond_3

    .line 2
    invoke-static {}, Lc1/c;->O2()Lc1/c;

    move-result-object v0

    invoke-virtual {v0}, Lc1/c;->P2()Lc1/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lc1/p;->N2()V

    .line 4
    :cond_0
    invoke-static {p0}, Lc1/b;->d(I)Lc1/p;

    move-result-object v0

    .line 5
    invoke-static {}, Lc1/c;->O2()Lc1/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc1/c;->Q2(Lc1/p;)V

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lc1/p;->L2()V

    .line 7
    :cond_1
    sget-object v1, Lz/a;->p:Lo1/f0;

    invoke-virtual {v1}, Lo1/f0;->c()V

    .line 8
    sput-object v0, Lc1/a;->c:Lc1/p;

    .line 9
    sget-boolean v0, Lm1/a;->c:Z

    if-eqz v0, :cond_2

    .line 10
    sget-object v0, Lc1/a;->c:Lc1/p;

    invoke-static {v0}, Lc1/b;->a(Lc1/p;)V

    goto :goto_0

    .line 11
    :cond_2
    sget-object v0, Lz/a;->F:Ljava/util/ArrayList;

    new-instance v1, Lc1/b$a;

    invoke-direct {v1}, Lc1/b$a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :goto_0
    sget v0, Lc1/a;->a:I

    sput v0, Lc1/a;->b:I

    .line 13
    sput p0, Lc1/a;->a:I

    :cond_3
    return-void
.end method

.method public static varargs h(ILjava/lang/String;[I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x0

    .line 1
    invoke-static {p0, p2, p1, v0}, Lc1/b;->j(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs i(I[I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0}, Lc1/b;->j(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public static j(I[I[F[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lc1/c;->O2()Lc1/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1, p2, p3}, Lc1/c;->H0(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
