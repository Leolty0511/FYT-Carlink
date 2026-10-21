.class public abstract Lui/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lui/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lui/b$a;->a:Z

    const-string v1, "ro.syu.enableVolBar"

    .line 3
    invoke-static {v1, v0}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lui/b$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    const-string v0, "ro.syu.enableVolBar"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lui/b$a;->a:Z

    return-void
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lui/b$a;->a:Z

    return v0
.end method

.method public hide()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=====>>> hide()isEnableVolBar() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lui/b$a;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VOL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lui/b$a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lui/b$a;->d()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Ly0/h;->R(I)V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=====>>> show() isEnableVolBar() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lui/b$a;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VOL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lui/b$a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lui/b$a;->e()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Ly0/h;->R(I)V

    :goto_0
    return-void
.end method
