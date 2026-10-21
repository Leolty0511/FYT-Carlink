.class public Ln0/a1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Ln0/a1;


# direct methods
.method public constructor <init>(Ln0/a1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/a1$d;->b:Ln0/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Ln0/a1$d;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lu0/b;->g1:I

    const-string v1, "ro.fyt.speed_max"

    invoke-static {v1, v0}, La/i;->k(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lu0/b;->g1:I

    .line 2
    sget v0, Lu0/b;->X1:I

    sget v1, Lu0/b;->g1:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Ln0/a1$d;->b:Ln0/a1;

    iget-boolean v0, v0, Ln0/a1;->G:Z

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v1, p0, Ln0/a1$d;->b:Ln0/a1;

    iget-object v1, v1, Ln0/a1;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v1, p0, Ln0/a1$d;->b:Ln0/a1;

    iget-object v1, v1, Ln0/a1;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v1, p0, Ln0/a1$d;->b:Ln0/a1;

    iget-object v1, v1, Ln0/a1;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Ln0/a1$d;->b:Ln0/a1;

    iput-boolean v2, v0, Ln0/a1;->G:Z

    .line 8
    :cond_1
    :goto_0
    sget v0, Lu0/b;->m:I

    if-nez v0, :cond_4

    iget v0, p0, Ln0/a1$d;->a:I

    sget v1, Lu0/b;->X1:I

    if-eq v0, v1, :cond_4

    const-string v0, "persist.fyt.disable_video"

    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v0

    .line 10
    sget v3, Lu0/b;->X1:I

    iput v3, p0, Ln0/a1$d;->a:I

    if-eqz v0, :cond_2

    const/16 v0, 0x14

    if-le v3, v0, :cond_2

    move v2, v1

    .line 11
    :cond_2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->k:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "20km/h == DataMain.sHandbrakeEnable == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lu0/b;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " DataMain.sHandbrake == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lu0/b;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " hideVideo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    const-string v0, "1"

    goto :goto_1

    :cond_3
    const-string v0, "0"

    :goto_1
    const-string v1, "sys.lsec_hidevideo"

    .line 12
    invoke-static {v1, v0}, La/i;->Z(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lsec.hidevideo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    return-void
.end method
