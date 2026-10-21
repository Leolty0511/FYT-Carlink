.class public Ln0/o0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbase/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:Ln0/o0;


# direct methods
.method public constructor <init>(Ln0/o0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/o0$e;->c:Ln0/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    .line 2
    iput p1, p0, Ln0/o0$e;->a:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Ln0/o0$e;->b:I

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
    iget v0, p0, Ln0/o0$e;->a:I

    return v0
.end method

.method public c()I
    .locals 2

    .line 1
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Ln0/o0$e;->a:I

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

    iget v2, p0, Ln0/o0$e;->a:I

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
    iget v0, p0, Ln0/o0$e;->b:I

    if-gez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ln0/o0$e;->h()I

    move-result v0

    iput v0, p0, Ln0/o0$e;->b:I

    .line 3
    :cond_0
    iget v0, p0, Ln0/o0$e;->b:I

    return v0
.end method

.method public f(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Ln0/o0$e;->c:Ln0/o0;

    iget-boolean v0, v0, Ln0/o0;->A:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ln0/o0$e;->e()I

    move-result p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " audioType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ln0/o0$e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  current: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ln0/o0$e;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mute : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln0/o0$e;->c:Ln0/o0;

    iget-boolean v1, v1, Ln0/o0;->A:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sound"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Ln0/o0$e;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return v2
.end method

.method public g(I)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Ln0/o0$e;->h()I

    move-result v0

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Ln0/o0$e;->b:I

    .line 3
    invoke-virtual {p0}, Ln0/o0$e;->c()I

    move-result p1

    iget v0, p0, Ln0/o0$e;->b:I

    if-le p1, v0, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Ln0/o0$e;->f(I)I

    :cond_1
    return-void
.end method

.method public h()I
    .locals 2

    .line 1
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Ln0/o0$e;->a:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method
