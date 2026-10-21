.class public Lg/o$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/o;


# direct methods
.method public constructor <init>(Lg/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/o$h;->a:Lg/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "======================>> 111  accOn  DataMain.sMcuOn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lu0/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  DataMain.sAccOn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lu0/b;->a0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Qin"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lg/o$h;->a:Lg/o;

    iget-boolean v1, v0, Lg/o;->e0:Z

    if-eqz v1, :cond_3

    .line 3
    sget v1, Lu0/b;->a0:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, v0, Lchip/Chip;->s:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 5
    iget-object v0, v0, Lg/o;->g0:Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 6
    iget-object v0, p0, Lg/o$h;->a:Lg/o;

    iget-object v1, v0, Lchip/Chip;->s:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 7
    iget-object v0, v0, Lg/o;->g0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    const/16 v1, 0xff

    .line 8
    invoke-static {v0, v1}, Lcom/syu/jni/ToolsJni;->cmd_147_7026_control_write(II)I

    .line 9
    :cond_3
    :goto_1
    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_5

    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_5

    sget v0, Lu0/b;->D:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    if-nez v0, :cond_5

    .line 10
    :cond_4
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Lc/e;->c(I)Z

    :cond_5
    return-void
.end method
