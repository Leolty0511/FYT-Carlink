.class public Ld1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)V
    .locals 3

    .line 1
    sget v0, Ld1/d;->i:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Ld1/d;->i:I

    const/4 v0, 0x6

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Ld1/f;->j(I[I)V

    :cond_0
    return-void
.end method

.method public static b(I)V
    .locals 3

    .line 1
    sget v0, Ld1/d;->e:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Ld1/d;->e:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Ld1/f;->j(I[I)V

    :cond_0
    return-void
.end method

.method public static c(I)V
    .locals 3

    .line 1
    sget v0, Ld1/d;->g:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Ld1/d;->g:I

    const/4 v0, 0x4

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Ld1/f;->j(I[I)V

    :cond_0
    return-void
.end method

.method public static d(I)V
    .locals 3

    .line 1
    sget v0, Ld1/d;->f:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Ld1/d;->f:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Ld1/f;->j(I[I)V

    .line 4
    sget-object p0, Ld1/e;->a:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_0
    return-void
.end method

.method public static e(I)V
    .locals 3

    .line 1
    sget v0, Ld1/d;->d:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Ld1/d;->d:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Ld1/f;->j(I[I)V

    :cond_0
    return-void
.end method

.method public static f(I)V
    .locals 2

    .line 1
    sget v0, Ld1/d;->a:I

    if-ne v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>>>>>>>>>>>>    moduleId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tv"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sput p0, Ld1/d;->a:I

    .line 4
    sget-object v0, Ld1/d;->b:Ld1/g;

    invoke-interface {v0}, Ld1/g;->b()V

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    .line 5
    new-instance p0, Ld1/g$a;

    invoke-direct {p0}, Ld1/g$a;-><init>()V

    sput-object p0, Ld1/d;->b:Ld1/g;

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Ld1/c;

    invoke-direct {p0}, Ld1/c;-><init>()V

    sput-object p0, Ld1/d;->b:Ld1/g;

    goto :goto_0

    .line 7
    :cond_2
    new-instance p0, Ld1/b;

    invoke-direct {p0}, Ld1/b;-><init>()V

    sput-object p0, Ld1/d;->b:Ld1/g;

    goto :goto_0

    .line 8
    :cond_3
    new-instance p0, Ld1/a;

    invoke-direct {p0}, Ld1/a;-><init>()V

    sput-object p0, Ld1/d;->b:Ld1/g;

    .line 9
    :goto_0
    sget-object p0, Ld1/d;->b:Ld1/g;

    invoke-interface {p0}, Ld1/g;->a()V

    return-void
.end method

.method public static g(I)V
    .locals 3

    .line 1
    sget v0, Ld1/d;->h:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Ld1/d;->h:I

    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Ld1/f;->j(I[I)V

    :cond_0
    return-void
.end method

.method public static h(I)V
    .locals 4

    .line 1
    sget v0, Ld1/d;->c:I

    if-eq v0, p0, :cond_5

    .line 2
    sput p0, Ld1/d;->c:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v2, v1}, Ld1/f;->j(I[I)V

    .line 4
    sget-object v1, Ld1/e;->a:Lo1/y;

    invoke-virtual {v1}, Lo1/y;->c()V

    .line 5
    sget-boolean v1, Lm1/a;->e:Z

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Ld1/h;->X2()Ld1/h;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    sget-object v3, Lmodule/tv/TvStore;->a:Lmodule/tv/TvStore;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v1, v3, p0}, Lbase/b;->U2(II)V

    .line 8
    :cond_0
    invoke-static {}, Lg/f;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    if-lez p0, :cond_1

    move v1, v0

    .line 9
    :goto_0
    sget-object v3, La/b;->q:Ljava/lang/String;

    if-ne v1, v0, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-static {v3, v1}, Lu0/d;->m0(Ljava/lang/String;Z)V

    const/16 v1, 0x27

    if-nez p0, :cond_4

    move p0, v2

    goto :goto_2

    :cond_4
    move p0, v0

    :goto_2
    new-array v0, v0, [Ljava/lang/String;

    .line 10
    sget-object v3, La/b;->q:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-static {v1, p0, v0}, Lu0/d;->N3(II[Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static i(Ly/b;)V
    .locals 4

    if-eqz p0, :cond_0

    .line 1
    sget v0, Ld1/d;->c:I

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0}, Lbase/b;->L2()Lo1/x;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x27

    const/4 v2, 0x1

    .line 3
    sget-object v3, La/b;->q:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2, v3}, Lo1/x;->E(Ly/b;IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs j(I[I)V
    .locals 2

    .line 1
    invoke-static {}, Ld1/h;->X2()Ld1/h;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p0, p1, v1, v1}, Lbase/b;->H0(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
