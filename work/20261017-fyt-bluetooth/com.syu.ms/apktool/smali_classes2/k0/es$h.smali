.class public Lk0/es$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/es;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/es;


# direct methods
.method public constructor <init>(Lk0/es;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/es$h;->a:Lk0/es;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lk0/es;->J:I

    sget v1, Lk0/nt;->Q:I

    if-eq v0, v1, :cond_2

    .line 2
    sput v1, Lk0/es;->J:I

    .line 3
    sget v0, Lu0/b;->r0:I

    if-nez v0, :cond_2

    .line 4
    sget v0, Lk0/es;->J:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lk0/es$h;->a:Lk0/es;

    const/4 v1, 0x5

    iput v1, v0, Lk0/es;->c:I

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lk0/es$h;->a:Lk0/es;

    invoke-static {v0}, Lk0/es;->c3(Lk0/es;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lo1/u;->a0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lo1/u;->k()V

    const-wide/16 v0, 0x15e

    .line 8
    invoke-static {v0, v1}, La/i;->a0(J)V

    const-string v0, "persist.lesc.video.ignore"

    const-string v1, "false"

    .line 9
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lk0/es$h;->a:Lk0/es;

    iget v0, v0, Lk0/es;->h:I

    invoke-static {v0}, Ly0/h;->t0(I)V

    .line 11
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Out iJumppage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lk0/es$h;->a:Lk0/es;

    invoke-static {v3}, Lk0/es;->c3(Lk0/es;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ----JumpPage.isCarUiTop() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo1/u;->a0()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 12
    :cond_1
    iget-object v0, p0, Lk0/es$h;->a:Lk0/es;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lk0/es;->d3(Lk0/es;Z)Z

    :cond_2
    :goto_0
    return-void
.end method
