.class public Lf1/p;
.super Lf1/q;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILandroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lf1/q;-><init>(IILandroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public M()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lf1/p;->p()V

    .line 3
    iget-boolean v0, p0, Lf1/q;->r:Z

    return v0
.end method

.method public X(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public k()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check Signal EmptyDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmptyDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public o()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lf1/q;->G(II)V

    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    iget v0, p0, Lf1/q;->k:I

    invoke-virtual {p0, v0}, Lf1/p;->X(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lf1/q;->H(Z)V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lf1/q;->k:I

    return-void
.end method
