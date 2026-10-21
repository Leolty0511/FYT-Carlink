.class public abstract Lx0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:I

.field public b:Lo1/h0;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lx0/d;->b:Lo1/h0;

    .line 3
    iput p1, p0, Lx0/d;->a:I

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    return-void
.end method

.method public abstract b()V
.end method

.method public c(ILy/b;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d(I[F)[F
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/d;->b:Lo1/h0;

    invoke-virtual {v0, p1}, Lo1/h0;->f(I)[F

    move-result-object p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method public e(I[I)[I
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/d;->b:Lo1/h0;

    invoke-virtual {v0, p1}, Lo1/h0;->i(I)[I

    move-result-object p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method public f(I[I[F[Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->h:Lo1/y;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public i(Lo1/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx0/d;->b:Lo1/h0;

    return-void
.end method

.method public abstract j()V
.end method

.method public run()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------- Init Load/deInit DataMain.sSleepWakeup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lu0/b;->n4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Gyro"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v0, Lu0/b;->n4:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lx0/d;->j()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lx0/d;->b()V

    :goto_0
    return-void
.end method
