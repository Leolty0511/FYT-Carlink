.class public Lg/k$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/k;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/k;


# direct methods
.method public constructor <init>(Lg/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/k$j;->a:Lg/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==================>> DataMain.sScreenOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lu0/b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  DataApp.sBootAnimOver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, La/b;->e0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Qin"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v0, Lu0/b;->g:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    sget v0, La/b;->e0:I

    if-ne v0, v2, :cond_1

    .line 3
    invoke-static {v2}, Lu0/d;->T1(I)V

    .line 4
    invoke-static {v2}, Lu0/d;->i(I)V

    .line 5
    invoke-static {v2}, Lu0/d;->v(I)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------------->>> 000 reverseCarplayState : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lg/k$j;->a:Lg/k;

    iget v3, v3, Lg/k;->n0:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lg/k$j;->a:Lg/k;

    iget v1, v0, Lg/k;->n0:I

    if-ne v1, v2, :cond_0

    const-string v1, "0 5000  0 0        0     5000  0 0"

    const-string v2, "0    5300  0 0        0     5300  0 0"

    const-string v3, "0    5600  0 0        0     5600  0 0"

    .line 8
    invoke-static {v0, v1, v2, v3}, Lg/k;->Y(Lg/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, " "

    const-string v2, "0    100   0 200      0     100   0 1000"

    .line 9
    invoke-static {v0, v1, v2, v1}, Lg/k;->Y(Lg/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :goto_0
    iget-object v0, p0, Lg/k$j;->a:Lg/k;

    iget-object v1, v0, Lchip/Chip;->s:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 11
    iget-object v0, v0, Lg/k;->q0:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lg/k$j;->a:Lg/k;

    iget-object v1, v0, Lchip/Chip;->s:Landroid/os/Handler;

    iget-object v0, v0, Lg/k;->q0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    iget-object v0, p0, Lg/k$j;->a:Lg/k;

    iget-object v1, v0, Lchip/Chip;->s:Landroid/os/Handler;

    iget-object v0, v0, Lg/k;->r0:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lg/k$j;->a:Lg/k;

    iget-object v1, v0, Lchip/Chip;->s:Landroid/os/Handler;

    iget-object v0, v0, Lg/k;->r0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p0, Lg/k$j;->a:Lg/k;

    iget-object v1, v0, Lchip/Chip;->s:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 16
    iget-object v0, v0, Lg/k;->q0:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    iget-object v0, p0, Lg/k$j;->a:Lg/k;

    iget-object v1, v0, Lchip/Chip;->s:Landroid/os/Handler;

    iget-object v0, v0, Lg/k;->r0:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    :cond_2
    :goto_1
    iget-object v0, p0, Lg/k$j;->a:Lg/k;

    invoke-virtual {v0}, Lg/k;->Z()V

    return-void
.end method
