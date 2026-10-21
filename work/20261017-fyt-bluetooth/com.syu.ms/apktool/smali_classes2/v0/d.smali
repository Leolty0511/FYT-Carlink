.class public Lv0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Lv0/m;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 1
    new-instance p0, Lv0/m;

    invoke-direct {p0}, Lv0/m;-><init>()V

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lv0/l;

    invoke-direct {p0}, Lv0/l;-><init>()V

    return-object p0

    .line 3
    :cond_1
    new-instance p0, Lv0/k;

    invoke-direct {p0}, Lv0/k;-><init>()V

    return-object p0

    .line 4
    :cond_2
    new-instance p0, Lv0/j;

    invoke-direct {p0}, Lv0/j;-><init>()V

    return-object p0

    .line 5
    :cond_3
    new-instance p0, Lv0/i;

    invoke-direct {p0}, Lv0/i;-><init>()V

    return-object p0
.end method

.method public static b(I)V
    .locals 3

    .line 1
    sget v0, Lv0/b;->a:I

    if-eq v0, p0, :cond_4

    .line 2
    invoke-static {}, Lv0/h;->M2()Lv0/h;

    move-result-object v0

    invoke-virtual {v0}, Lv0/h;->N2()Lv0/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lv0/m;->L2()V

    .line 4
    :cond_0
    invoke-static {p0}, Lv0/d;->a(I)Lv0/m;

    move-result-object v0

    .line 5
    invoke-static {}, Lv0/h;->M2()Lv0/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lv0/h;->O2(Lv0/m;)V

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lv0/m;->K2()V

    .line 7
    :cond_1
    sget-object v1, Lz/a;->q:Lo1/f0;

    invoke-virtual {v1}, Lo1/f0;->c()V

    .line 8
    sput-object v0, Lv0/b;->c:Lv0/m;

    .line 9
    sget-boolean v0, Lm1/a;->c:Z

    if-eqz v0, :cond_3

    .line 10
    sget-object v0, Lv0/b;->c:Lv0/m;

    instance-of v2, v0, Lo1/q;

    if-eqz v2, :cond_2

    .line 11
    check-cast v0, Lo1/q;

    .line 12
    sget-object v2, Lz/a;->g:Lo1/e0;

    invoke-virtual {v1, v2, v0}, Lo1/f0;->d(Lo1/e0;Lo1/q;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v1}, Lo1/f0;->c()V

    const-string v0, "NOT IN USE, OBD SERIAL THREAD KEEP WAIT"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_3
    sget-object v0, Lz/a;->F:Ljava/util/ArrayList;

    new-instance v1, Lv0/d$a;

    invoke-direct {v1}, Lv0/d$a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :goto_0
    sget v0, Lv0/b;->a:I

    sput v0, Lv0/b;->b:I

    .line 17
    sput p0, Lv0/b;->a:I

    :cond_4
    return-void
.end method

.method public static c(II)V
    .locals 2

    .line 1
    sget-object v0, Lv0/b;->d:[Lo1/x;

    sget-object v1, Lv0/b;->f:[I

    invoke-static {v0, v1, p0, p1}, Lo1/x;->D([Lo1/x;[III)V

    return-void
.end method

.method public static d(II)V
    .locals 1

    .line 1
    sget-object v0, Lv0/b;->d:[Lo1/x;

    invoke-static {v0, p0, p1}, Lo1/x;->x([Lo1/x;II)V

    return-void
.end method

.method public static e(III)V
    .locals 1

    .line 1
    sget-object v0, Lv0/b;->d:[Lo1/x;

    invoke-static {v0, p0, p1, p2}, Lo1/x;->y([Lo1/x;III)V

    return-void
.end method

.method public static f(IILjava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lv0/b;->d:[Lo1/x;

    invoke-static {v0, p0, p1, p2}, Lo1/x;->z([Lo1/x;IILjava/lang/String;)V

    return-void
.end method

.method public static g(I[I)V
    .locals 1

    .line 1
    sget-object v0, Lv0/b;->d:[Lo1/x;

    invoke-static {v0, p0, p1}, Lo1/x;->B([Lo1/x;I[I)V

    return-void
.end method

.method public static h(I[I[Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lv0/b;->d:[Lo1/x;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    return-void
.end method
