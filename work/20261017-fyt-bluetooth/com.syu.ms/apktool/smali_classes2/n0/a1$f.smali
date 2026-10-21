.class public Ln0/a1$f;
.super Landroid/os/Handler;
.source "SourceFile"


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
.method public constructor <init>(Ln0/a1;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/a1$f;->b:Ln0/a1;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Ln0/a1$f;->a:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    sget p1, Lu0/b;->g1:I

    const-string v0, "ro.fyt.speed_max"

    invoke-static {v0, p1}, La/i;->k(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lu0/b;->g1:I

    .line 2
    sget p1, Lu0/b;->X1:I

    sget v0, Lu0/b;->g1:I

    const/4 v1, 0x1

    if-le p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Ln0/a1$f;->b:Ln0/a1;

    iget-boolean v0, p1, Ln0/a1;->G:Z

    if-nez v0, :cond_0

    const-string v0, "Speed up to 120KM/H . Please slow down !"

    .line 4
    invoke-static {p1, v0}, Ln0/a1;->S3(Ln0/a1;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Ln0/a1$f;->b:Ln0/a1;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attention: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->g1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "KM/H !"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ln0/a1;->S3(Ln0/a1;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Ln0/a1$f;->b:Ln0/a1;

    iput-boolean v1, p1, Ln0/a1;->G:Z

    .line 7
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object p1

    iget-object v0, p0, Ln0/a1$f;->b:Ln0/a1;

    invoke-static {v0}, Ln0/a1;->T3(Ln0/a1;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    :cond_0
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object p1

    iget-object v0, p0, Ln0/a1$f;->b:Ln0/a1;

    invoke-static {v0}, Ln0/a1;->T3(Ln0/a1;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object p1

    iget-object v0, p0, Ln0/a1$f;->b:Ln0/a1;

    invoke-static {v0}, Ln0/a1;->T3(Ln0/a1;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    sget p1, Lu0/b;->m:I

    if-nez p1, :cond_3

    iget p1, p0, Ln0/a1$f;->a:I

    sget v0, Lu0/b;->X1:I

    if-eq p1, v0, :cond_3

    const-string p1, "persist.fyt.disable_video"

    .line 11
    invoke-static {p1, v1}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result p1

    .line 12
    sget v0, Lu0/b;->X1:I

    iput v0, p0, Ln0/a1$f;->a:I

    if-eqz p1, :cond_1

    const/16 p1, 0x14

    if-le v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object v0, Lutil/log/LogType;->k:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "20km/h == DataMain.sHandbrakeEnable == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lu0/b;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " DataMain.sHandbrake == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lu0/b;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " hideVideo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const-string p1, "1"

    goto :goto_1

    :cond_2
    const-string p1, "0"

    :goto_1
    const-string v0, "sys.lsec_hidevideo"

    .line 14
    invoke-static {v0, p1}, La/i;->Z(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.lsec.hidevideo"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method
