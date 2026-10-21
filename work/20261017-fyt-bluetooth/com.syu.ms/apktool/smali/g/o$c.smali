.class public Lg/o$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbase/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/o;->S(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:I

.field public d:I

.field public final synthetic e:Lg/o;


# direct methods
.method public constructor <init>(Lg/o;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lg/o$c;->e:Lg/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lg/o$c;->a:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lg/o$c;->b:Z

    .line 4
    iput p1, p0, Lg/o$c;->c:I

    .line 5
    iput v0, p0, Lg/o$c;->d:I

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lg/o$c;->b:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lg/o$c;->b:Z

    const/16 v0, 0x20

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 3
    invoke-static {v0, v1}, Lw0/f;->J(I[I)V

    .line 4
    invoke-static {}, Ly0/h;->M()V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lg/o$c;->d:I

    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget v0, p0, Lg/o$c;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lg/o$c;->c:I

    if-gez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lg/o$c;->h()I

    move-result v0

    iput v0, p0, Lg/o$c;->c:I

    .line 3
    :cond_0
    iget v0, p0, Lg/o$c;->c:I

    return v0
.end method

.method public f(I)I
    .locals 6

    .line 1
    iget v0, p0, Lg/o$c;->a:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 2
    :goto_0
    iget-boolean v1, p0, Lg/o$c;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput v1, p0, Lg/o$c;->d:I

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " set Radio volume vol : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "sound"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "sys.radio.mute"

    .line 4
    invoke-static {v1, v2}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    new-instance v1, Lj1/c;

    const-string/jumbo v3, "setParameter"

    invoke-direct {v1, v3}, Lj1/c;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Lj1/c;->g(Ljava/lang/Object;)Lj1/c;

    move-result-object v1

    const-class v3, Landroid/media/AudioManager;

    .line 7
    invoke-virtual {v1, v3}, Lj1/c;->e(Ljava/lang/Class;)Lj1/c;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "FM_Volume"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 8
    invoke-virtual {v1, v3}, Lj1/c;->d([Ljava/lang/Object;)Lj1/c;

    move-result-object v1

    invoke-virtual {v1}, Lj1/c;->a()Ljava/lang/Object;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sys.radio.vol"

    invoke-static {v1, v0}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return p1
.end method

.method public g(I)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lg/o$c;->h()I

    move-result v0

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lg/o$c;->c:I

    .line 3
    invoke-virtual {p0}, Lg/o$c;->c()I

    move-result p1

    iget v0, p0, Lg/o$c;->c:I

    if-le p1, v0, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lg/o$c;->f(I)I

    :cond_1
    return-void
.end method

.method public h()I
    .locals 2

    .line 1
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method
