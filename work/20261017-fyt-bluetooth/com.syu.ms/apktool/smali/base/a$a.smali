.class public Lbase/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbase/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbase/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lbase/a$a;->a:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lbase/a$a;->b:I

    .line 4
    iput v0, p0, Lbase/a$a;->c:I

    .line 5
    iput p1, p0, Lbase/a$a;->a:I

    .line 6
    invoke-virtual {p0}, Lbase/a$a;->i()I

    move-result v0

    .line 7
    sget-object v1, Lbase/Configure$Property;->z:Lbase/Configure$Property;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lbase/a$a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lbase/Configure$Property;->f(Ljava/lang/String;I)I

    move-result v1

    .line 8
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit16 p1, p1, 0x3ed

    .line 9
    invoke-static {p1, v0}, Lm1/c;->c(II)I

    move-result p1

    iput p1, p0, Lbase/a$a;->b:I

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lbase/a$a;->a:I

    return v0
.end method

.method public c()I
    .locals 2

    .line 1
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lbase/a$a;->a:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 4

    .line 1
    new-instance v0, Lj1/c;

    const-string v1, "isStreamMute"

    invoke-direct {v0, v1}, Lj1/c;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj1/c;->g(Ljava/lang/Object;)Lj1/c;

    move-result-object v0

    const-class v1, Landroid/media/AudioManager;

    .line 3
    invoke-virtual {v0, v1}, Lj1/c;->e(Ljava/lang/Class;)Lj1/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lbase/a$a;->a:I

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lj1/c;->d([Ljava/lang/Object;)Lj1/c;

    move-result-object v0

    invoke-virtual {v0}, Lj1/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lbase/a$a;->b:I

    if-gez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lbase/a$a;->i()I

    move-result v0

    iput v0, p0, Lbase/a$a;->b:I

    .line 3
    :cond_0
    iget v0, p0, Lbase/a$a;->b:I

    return v0
.end method

.method public f(I)I
    .locals 2

    .line 1
    iget v0, p0, Lbase/a$a;->c:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lbase/a$a;->e()I

    move-result p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " audioType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbase/a$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  current: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbase/a$a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbase/a$a;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sys max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbase/a$a;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sound"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v0, Lf/b;->d:Lf/b;

    iget-object v0, v0, Lf/b;->c:Lf/c;

    iget v1, p0, Lbase/a$a;->a:I

    invoke-virtual {v0, v1, p1}, Lf/c;->i(II)V

    const/4 p1, 0x0

    return p1
.end method

.method public g(I)V
    .locals 3

    if-gez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lbase/a$a;->i()I

    move-result v0

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3
    iget v0, p0, Lbase/a$a;->b:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 4
    :goto_0
    iput p1, p0, Lbase/a$a;->b:I

    if-eqz v0, :cond_2

    .line 5
    iget v0, p0, Lbase/a$a;->a:I

    add-int/lit16 v0, v0, 0x3ed

    invoke-static {v0, p1}, Lm1/c;->e(II)I

    .line 6
    sget-object p1, Lm1/a;->f:Lo1/g0;

    iget-object p1, p1, Lo1/g0;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7
    :cond_2
    invoke-virtual {p0}, Lbase/a$a;->h()I

    move-result p1

    .line 8
    sget-object v0, Lf/b;->d:Lf/b;

    iget-object v0, v0, Lf/b;->c:Lf/c;

    invoke-virtual {v0}, Lf/c;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p0}, Lbase/a$a;->c()I

    move-result v0

    if-eq v0, p1, :cond_4

    .line 10
    iget v0, p0, Lbase/a$a;->c:I

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Lbase/a$a;->e()I

    move-result p1

    .line 11
    :cond_3
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v0

    iget v2, p0, Lbase/a$a;->a:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1

    .line 12
    :cond_4
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object p1

    iget v0, p0, Lbase/a$a;->a:I

    invoke-virtual {p0}, Lbase/a$a;->e()I

    move-result v2

    invoke-virtual {p1, v0, v2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_1
    return-void
.end method

.method public h()I
    .locals 7

    .line 1
    sget v0, Lh0/c;->G:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    sget-boolean v0, Lh0/c;->m0:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0}, Lu0/i;->r3()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lu0/b;->D:I

    const/16 v3, 0xf

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 3
    :goto_1
    sget v3, Ly0/f;->T0:I

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    .line 4
    :goto_2
    sget v4, Ly0/f;->Q0:I

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v1

    .line 5
    :goto_3
    iget v5, p0, Lbase/a$a;->b:I

    sget v6, Ly0/f;->L:I

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, 0xa

    div-int/lit8 v5, v5, 0x14

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p0}, Lbase/a$a;->c()I

    move-result v0

    return v0

    :cond_4
    if-eqz v3, :cond_5

    .line 7
    iget v0, p0, Lbase/a$a;->a:I

    sget-object v3, La/c;->e:Lbase/a;

    invoke-interface {v3}, Lbase/a;->b()I

    move-result v3

    if-eq v0, v3, :cond_5

    .line 8
    invoke-virtual {p0}, Lbase/a$a;->c()I

    move-result v0

    return v0

    :cond_5
    if-eqz v4, :cond_7

    .line 9
    iget v0, p0, Lbase/a$a;->a:I

    sget-object v3, La/c;->b:Lbase/a;

    invoke-interface {v3}, Lbase/a;->b()I

    move-result v3

    if-ne v0, v3, :cond_7

    .line 10
    sget v0, Ly0/f;->J:I

    if-ne v0, v2, :cond_6

    move v1, v5

    :cond_6
    return v1

    .line 11
    :cond_7
    iget v0, p0, Lbase/a$a;->b:I

    return v0
.end method

.method public i()I
    .locals 2

    .line 1
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lbase/a$a;->a:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method
