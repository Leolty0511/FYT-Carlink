.class public Lchip/Chip$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchip/Chip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lchip/Chip;


# direct methods
.method public constructor <init>(Lchip/Chip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchip/Chip$a;->b:Lchip/Chip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lchip/Chip$a;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initImage  DataMain.sSleepWakeup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lu0/b;->n4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " DataMain.sMcuOn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lu0/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chip"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v0, Lu0/b;->n4:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    iget-boolean v3, p0, Lchip/Chip$a;->a:Z

    if-eq v0, v3, :cond_1

    move v1, v2

    :cond_1
    if-nez v1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v1

    invoke-virtual {v1}, Lf1/o;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 5
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v1

    invoke-virtual {v1}, Lf1/o;->k()Z

    .line 6
    sget-object v1, Lu0/c;->j:Lo1/y;

    iget-object v3, p0, Lchip/Chip$a;->b:Lchip/Chip;

    iget-object v3, v3, Lchip/Chip;->Q:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    iput-boolean v0, p0, Lchip/Chip$a;->a:Z

    return-void

    .line 8
    :cond_3
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v1

    invoke-virtual {v1}, Lf1/o;->m()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v1

    invoke-virtual {v1}, Lf1/o;->r()Z

    .line 10
    iput-boolean v0, p0, Lchip/Chip$a;->a:Z

    return-void

    .line 11
    :cond_4
    sget-object v1, Le1/a;->b:Le1/l;

    if-eqz v1, :cond_6

    instance-of v2, v1, Le1/c;

    if-eqz v2, :cond_6

    .line 12
    check-cast v1, Le1/c;

    .line 13
    iput-boolean v0, p0, Lchip/Chip$a;->a:Z

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {v1}, Le1/c;->b()V

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {v1}, Le1/c;->d()V

    :cond_6
    :goto_1
    return-void
.end method
