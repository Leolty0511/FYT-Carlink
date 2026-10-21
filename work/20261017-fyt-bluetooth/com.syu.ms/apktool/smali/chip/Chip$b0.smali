.class public Lchip/Chip$b0;
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
.field public final synthetic a:Lchip/Chip;


# direct methods
.method public constructor <init>(Lchip/Chip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchip/Chip$b0;->a:Lchip/Chip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, La/b;->e0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lchip/Chip$b0;->a:Lchip/Chip;

    iget-object v0, v0, Lchip/Chip;->K:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    =======>>>  reversingTakeOver =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lchip/Chip$b0;->a:Lchip/Chip;

    iget-object v1, v1, Lchip/Chip;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "     state:   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/syu/jni/ToolsJni;->cmd_32_get_boot_reverse_status()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chip"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lchip/Chip$b0;->a:Lchip/Chip;

    iget-object v0, v0, Lchip/Chip;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5
    invoke-static {}, Lcom/syu/jni/ToolsJni;->cmd_32_get_boot_reverse_status()I

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lu0/b;->k4:I

    if-nez v0, :cond_3

    const-string/jumbo v0, "sys.car.reverse"

    const-string v1, "0"

    .line 6
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    invoke-static {v0, v2}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lchip/Chip$b0;->a:Lchip/Chip;

    invoke-virtual {v0}, Lchip/Chip;->K()V

    .line 9
    :cond_3
    :goto_0
    iget-object v0, p0, Lchip/Chip$b0;->a:Lchip/Chip;

    iget-object v0, v0, Lchip/Chip;->K:Landroid/os/Handler;

    if-eqz v0, :cond_4

    const-wide/16 v1, 0xc8

    .line 10
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method
