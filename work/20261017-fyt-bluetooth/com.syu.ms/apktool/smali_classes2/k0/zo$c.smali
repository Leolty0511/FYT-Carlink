.class public Lk0/zo$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/zo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/zo;


# direct methods
.method public constructor <init>(Lk0/zo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/zo$c;->a:Lk0/zo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->r0:I

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCarBackDelayTime  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lk0/zo;->c3()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "----DataMain.sAppId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lu0/b;->D:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lk0/zo;->o3()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 4
    invoke-static {}, Lk0/zo;->c3()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    invoke-static {}, Lk0/zo;->e3()I

    .line 6
    :cond_0
    invoke-static {}, Lk0/zo;->c3()I

    move-result v0

    if-gtz v0, :cond_2

    .line 7
    iget-object v0, p0, Lk0/zo$c;->a:Lk0/zo;

    iget v2, v0, Lk0/zo;->b:I

    if-nez v2, :cond_2

    iget v0, v0, Lk0/zo;->c:I

    if-nez v0, :cond_2

    const-wide/16 v2, 0x64

    .line 8
    invoke-static {v2, v3}, La/i;->a0(J)V

    .line 9
    iget-object v0, p0, Lk0/zo$c;->a:Lk0/zo;

    invoke-static {v0}, Lk0/zo;->z3(Lk0/zo;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lo1/u;->a0()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    .line 10
    invoke-static {v0, v2}, Ll0/b0;->l0(II)V

    .line 11
    invoke-static {v0, v1}, Ll0/b0;->l0(II)V

    .line 12
    iget-object v0, p0, Lk0/zo$c;->a:Lk0/zo;

    iget v0, v0, Lk0/zo;->g:I

    invoke-static {v0}, Ly0/h;->t0(I)V

    :cond_1
    const-wide/16 v0, 0xfa

    .line 13
    invoke-static {v0, v1}, La/i;->a0(J)V

    const-string v0, "persist.lesc.video.ignore"

    const-string v1, "false"

    .line 14
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lk0/zo$c;->a:Lk0/zo;

    invoke-static {v0, v2}, Lk0/zo;->B3(Lk0/zo;Z)Z

    :cond_2
    return-void
.end method
