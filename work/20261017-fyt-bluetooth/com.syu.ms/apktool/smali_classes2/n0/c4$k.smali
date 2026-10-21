.class public Ln0/c4$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/c4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Ln0/c4;


# direct methods
.method public constructor <init>(Ln0/c4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/c4$k;->b:Ln0/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Ln0/c4$k;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    .line 2
    invoke-static {}, Lg/e;->e()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 3
    invoke-static {p0}, Ln0/k4;->i(Ljava/lang/Runnable;)V

    return-void

    .line 4
    :cond_0
    iget v0, p0, Ln0/c4$k;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ln0/c4$k;->a:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_5

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ln0/c4$k;->a:I

    .line 6
    sget-object v2, Lg/e;->a:Lg/g;

    instance-of v3, v2, Lchip/Chip;

    if-eqz v3, :cond_1

    check-cast v2, Lchip/Chip;

    invoke-virtual {v2}, Lchip/Chip;->l()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v0

    .line 7
    :goto_0
    invoke-static {v2}, Lu0/d;->c0(I)V

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===========>>>  isAutoFanCtrl : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ln0/c4$k;->b:Ln0/c4;

    iget-boolean v4, v4, Ln0/c4;->k:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " temp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AA"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v3, p0, Ln0/c4$k;->b:Ln0/c4;

    iget-boolean v4, v3, Ln0/c4;->k:Z

    if-eqz v4, :cond_5

    sget v4, Lu0/b;->f:I

    if-eq v4, v1, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v3}, Ln0/c4;->Q3()Z

    move-result v3

    if-nez v3, :cond_4

    .line 11
    iget-object v4, p0, Ln0/c4$k;->b:Ln0/c4;

    iget-object v5, v4, Ln0/c4;->j:[I

    aget v6, v5, v1

    if-lt v2, v6, :cond_3

    goto :goto_1

    :cond_3
    if-nez v3, :cond_5

    .line 12
    aget v1, v5, v0

    if-ge v2, v1, :cond_5

    .line 13
    invoke-virtual {v4, v0}, Ln0/c4;->f3(Z)V

    goto :goto_2

    .line 14
    :cond_4
    :goto_1
    iget-object v0, p0, Ln0/c4$k;->b:Ln0/c4;

    invoke-virtual {v0, v1}, Ln0/c4;->f3(Z)V

    nop

    :cond_5
    :goto_2
    return-void
.end method
