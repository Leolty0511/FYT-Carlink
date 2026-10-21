.class public Lchip/Chip$m;
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
    iput-object p1, p0, Lchip/Chip$m;->a:Lchip/Chip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lchip/Chip$m;->a:Lchip/Chip;

    iget v1, v0, Lchip/Chip;->w:I

    sget v2, Lk0/nt;->a:I

    if-eq v1, v2, :cond_0

    .line 2
    iput v2, v0, Lchip/Chip;->w:I

    .line 3
    iget-object v0, v0, Lchip/Chip;->a:Lo1/h0;

    const/16 v1, 0xd3

    invoke-virtual {v0, v1, v2}, Lo1/h0;->q(II)V

    .line 4
    iget-object v0, p0, Lchip/Chip$m;->a:Lchip/Chip;

    iget-object v0, v0, Lchip/Chip;->a:Lo1/h0;

    invoke-virtual {v0, v1}, Lo1/h0;->e(I)V

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 5
    iget-object v2, p0, Lchip/Chip$m;->a:Lchip/Chip;

    iget v2, v2, Lchip/Chip;->w:I

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lo1/s0;->c(II)I

    move-result v2

    const/4 v4, 0x0

    aput v2, v1, v4

    iget-object v2, p0, Lchip/Chip$m;->a:Lchip/Chip;

    iget v2, v2, Lchip/Chip;->w:I

    const/4 v5, 0x2

    invoke-static {v2, v5}, Lo1/s0;->c(II)I

    move-result v2

    const/4 v6, 0x1

    aput v2, v1, v6

    iget-object v2, p0, Lchip/Chip$m;->a:Lchip/Chip;

    iget v2, v2, Lchip/Chip;->w:I

    invoke-static {v2, v6}, Lo1/s0;->c(II)I

    move-result v2

    aput v2, v1, v5

    iget-object v2, p0, Lchip/Chip$m;->a:Lchip/Chip;

    iget v2, v2, Lchip/Chip;->w:I

    invoke-static {v2, v4}, Lo1/s0;->c(II)I

    move-result v2

    aput v2, v1, v3

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "write Canbus mem Data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v4, v0}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " len : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MCU"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {v1}, Lo1/s0;->r([I)[B

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/syu/jni/ToolsJni;->cmd_149_write_data([BI)I

    :cond_0
    return-void
.end method
