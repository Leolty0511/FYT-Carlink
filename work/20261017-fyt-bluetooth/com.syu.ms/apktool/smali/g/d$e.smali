.class public Lg/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/d;


# direct methods
.method public constructor <init>(Lg/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/d$e;->a:Lg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lu0/b;->n4:I

    const-string v1, "audio.hw.allow_close"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string/jumbo v4, "\u4f11\u7720"

    invoke-virtual {v0, v4}, Ln1/b;->s(Ljava/lang/String;)V

    const-string v0, "ms"

    const-string/jumbo v4, "sSleepWakeup 89 53 sleep sleep"

    .line 3
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, La/i;->D()V

    const-string v0, "1"

    .line 5
    invoke-static {v1, v0}, La/i;->Z(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lg/d$e;->a:Lg/d;

    invoke-static {v0}, Lg/d;->o(Lg/d;)V

    .line 7
    invoke-static {v2}, Lo1/q0;->A(I)V

    .line 8
    invoke-static {v3}, Lg/d;->I(I)V

    .line 9
    invoke-static {}, Lo1/q0;->t()I

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lu0/b;->J0:I

    if-eq v0, v3, :cond_0

    const-string/jumbo v0, "sys.fyt.dvr"

    .line 10
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    :cond_0
    iget-object v0, p0, Lg/d$e;->a:Lg/d;

    invoke-virtual {v0, v3}, Lg/d;->y(I)V

    .line 12
    invoke-static {v3}, Lg/d;->q(Z)Z

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string/jumbo v4, "\u4f11\u7720\u5524\u9192"

    invoke-virtual {v0, v4}, Ln1/b;->s(Ljava/lang/String;)V

    const-string v0, "0"

    .line 14
    invoke-static {v1, v0}, La/i;->Z(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lg/d$e;->a:Lg/d;

    invoke-static {v0}, Lg/d;->o(Lg/d;)V

    .line 16
    iget-object v0, p0, Lg/d$e;->a:Lg/d;

    invoke-static {v0}, Lg/d;->r(Lg/d;)V

    .line 17
    invoke-static {v3}, Lo1/q0;->A(I)V

    .line 18
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    new-instance v1, Lg/d$e$a;

    invoke-direct {v1, p0}, Lg/d$e$a;-><init>(Lg/d$e;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    invoke-static {}, Lg/d;->p()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lo1/q0;->t()I

    move-result v0

    if-nez v0, :cond_3

    .line 20
    :cond_2
    iget-object v0, p0, Lg/d$e;->a:Lg/d;

    invoke-virtual {v0, v2}, Lg/d;->y(I)V

    .line 21
    invoke-static {v2}, Lg/d;->q(Z)Z

    .line 22
    :cond_3
    :goto_0
    :try_start_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/syu/jni/ToolsJni;->cmd_19_airplane_mode(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :catch_0
    iget-object v0, p0, Lg/d$e;->a:Lg/d;

    invoke-static {v0}, Lg/d;->s(Lg/d;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24
    iget-object v0, p0, Lg/d$e;->a:Lg/d;

    invoke-static {v0, v2}, Lg/d;->t(Lg/d;Z)Z

    goto :goto_1

    .line 25
    :cond_4
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v1, p0, Lg/d$e;->a:Lg/d;

    invoke-static {v1}, Lg/d;->u(Lg/d;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lg/d$e;->a:Lg/d;

    invoke-static {v2}, Lg/d;->v(Lg/d;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method
