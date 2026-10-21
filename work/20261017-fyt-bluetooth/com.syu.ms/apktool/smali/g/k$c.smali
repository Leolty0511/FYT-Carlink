.class public Lg/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lg/k;


# direct methods
.method public constructor <init>(Lg/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/k$c;->b:Lg/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lg/k$c;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string/jumbo v0, "zj.zsender.link.status"

    const/4 v1, -0x1

    .line 1
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    .line 2
    iget v1, p0, Lg/k$c;->a:I

    if-eq v1, v0, :cond_2

    .line 3
    iput v0, p0, Lg/k$c;->a:I

    .line 4
    iget-object v1, p0, Lg/k$c;->b:Lg/k;

    iput v0, v1, Lg/k;->n0:I

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------->>> 000 reverseCarplayState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/k$c;->b:Lg/k;

    iget v1, v1, Lg/k;->n0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Qin"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lg/k$c;->b:Lg/k;

    iget v1, v0, Lg/k;->n0:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, " "

    const-string v3, "0    100   0 200      0     100   0 1000"

    .line 7
    invoke-static {v0, v1, v3, v1}, Lg/k;->Y(Lg/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "0 5000  0 0        0     5000  0 0"

    const-string v3, "0    5300  0 0        0     5300  0 0"

    const-string v4, "0    5600  0 0        0     5600  0 0"

    .line 8
    invoke-static {v0, v1, v3, v4}, Lg/k;->Y(Lg/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    iget v1, p0, Lg/k$c;->a:I

    invoke-virtual {v0, v1}, Lu0/i;->p4(I)V

    .line 10
    iget v0, p0, Lg/k$c;->a:I

    if-eq v0, v2, :cond_1

    sget v0, Lu0/b;->D:I

    if-eqz v0, :cond_1

    .line 11
    sget-object v0, Lu0/b;->c:Lu0/h;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lu0/h;->c(I)V

    .line 12
    invoke-static {}, La/i;->D()V

    .line 13
    :cond_1
    iget-object v0, p0, Lg/k$c;->b:Lg/k;

    invoke-virtual {v0}, Lg/k;->Z()V

    .line 14
    :cond_2
    iget-object v0, p0, Lg/k$c;->b:Lg/k;

    iget-object v0, v0, Lchip/Chip;->s:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    iget-object v0, p0, Lg/k$c;->b:Lg/k;

    iget-object v0, v0, Lchip/Chip;->s:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
