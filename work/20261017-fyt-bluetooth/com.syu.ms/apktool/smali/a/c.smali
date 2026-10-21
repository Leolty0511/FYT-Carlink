.class public La/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lbase/a;

.field public static b:Lbase/a;

.field public static c:Lbase/a;

.field public static d:Lbase/a;

.field public static e:Lbase/a;

.field public static f:Lbase/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lbase/a$a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lbase/a$a;-><init>(I)V

    sput-object v0, La/c;->b:Lbase/a;

    .line 2
    new-instance v0, Lbase/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbase/a$a;-><init>(I)V

    sput-object v0, La/c;->c:Lbase/a;

    .line 3
    new-instance v0, Lbase/a$a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lbase/a$a;-><init>(I)V

    sput-object v0, La/c;->d:Lbase/a;

    .line 4
    new-instance v0, Lbase/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbase/a$a;-><init>(I)V

    sput-object v0, La/c;->e:Lbase/a;

    .line 5
    new-instance v0, Lbase/a$a;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lbase/a$a;-><init>(I)V

    sput-object v0, La/c;->f:Lbase/a;

    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public static b()Z
    .locals 1

    .line 1
    sget-object v0, La/c;->b:Lbase/a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lbase/a;->d()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x5

    .line 1
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    const-string v1, " ;volNotify = "

    const-string v2, " ;volVa = "

    const-string v3, " ;volNavi = "

    const-string v4, " ;volPlayer = "

    const-string/jumbo v5, "volBt = "

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/c;->e()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/c;->o()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, La/c;->k()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/c;->u()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ;volFm = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/c;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/c;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/c;->e()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/c;->o()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, La/c;->k()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/c;->u()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ;volPhone = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/c;->n()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/c;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()I
    .locals 1

    .line 1
    sget-object v0, La/c;->f:Lbase/a;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lbase/a;->b()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static e()I
    .locals 1

    .line 1
    sget-object v0, La/c;->d:Lbase/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lbase/a;->c()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static f(I)V
    .locals 1

    .line 1
    sget-object v0, La/c;->d:Lbase/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lbase/a;->f(I)I

    :cond_0
    return-void
.end method

.method public static g()I
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "======>>  volBtMax "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, La/c;->d:Lbase/a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lbase/a;->e()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  bt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, La/c;->d:Lbase/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sound"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, La/c;->d:Lbase/a;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lbase/a;->e()I

    move-result v2

    :goto_1
    return v2
.end method

.method public static h()I
    .locals 1

    .line 1
    sget-object v0, La/c;->a:Lbase/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lbase/a;->c()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static i(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " set Radio volume vol : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, La/c;->a:Lbase/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sound"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, La/c;->a:Lbase/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lbase/a;->f(I)I

    :cond_0
    return-void
.end method

.method public static j()I
    .locals 1

    .line 1
    sget-object v0, La/c;->a:Lbase/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lbase/a;->e()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static k()I
    .locals 1

    .line 1
    sget-object v0, La/c;->c:Lbase/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lbase/a;->c()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static l(I)V
    .locals 1

    .line 1
    sget-object v0, La/c;->c:Lbase/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lbase/a;->f(I)I

    :cond_0
    return-void
.end method

.method public static m()I
    .locals 1

    .line 1
    sget-object v0, La/c;->c:Lbase/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lbase/a;->e()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static n()I
    .locals 1

    .line 1
    sget-object v0, La/c;->d:Lbase/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lbase/a;->c()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static o()I
    .locals 1

    .line 1
    sget-object v0, La/c;->b:Lbase/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lbase/a;->c()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static p(I)V
    .locals 1

    .line 1
    sput p0, Ly0/f;->q:I

    .line 2
    sget-object v0, La/c;->b:Lbase/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lbase/a;->f(I)I

    :cond_0
    return-void
.end method

.method public static q()I
    .locals 1

    .line 1
    sget-object v0, La/c;->b:Lbase/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lbase/a;->e()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static r()I
    .locals 1

    .line 1
    sget-object v0, La/c;->f:Lbase/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lbase/a;->c()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static s(I)V
    .locals 1

    .line 1
    sget-object v0, La/c;->f:Lbase/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lbase/a;->f(I)I

    :cond_0
    return-void
.end method

.method public static t()I
    .locals 1

    .line 1
    sget-object v0, La/c;->f:Lbase/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lbase/a;->e()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static u()I
    .locals 1

    .line 1
    sget-object v0, La/c;->e:Lbase/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lbase/a;->c()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static v(I)V
    .locals 1

    .line 1
    sget-object v0, La/c;->e:Lbase/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lbase/a;->f(I)I

    :cond_0
    return-void
.end method

.method public static w()I
    .locals 1

    .line 1
    sget-object v0, La/c;->e:Lbase/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lbase/a;->e()I

    move-result v0

    :goto_0
    return v0
.end method
