.class public Lplugins/ZLink;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lo1/s;


# static fields
.field public static u:Lplugins/ZLink;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Landroid/os/Handler;

.field public m:Landroid/os/Looper;

.field public n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/lang/Runnable;

.field public final p:Lc/d;

.field public final q:Ljava/lang/Runnable;

.field public final r:Ljava/lang/Runnable;

.field public s:Lo1/p;

.field public final t:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lplugins/ZLink;->a:Z

    .line 3
    iput-boolean v0, p0, Lplugins/ZLink;->b:Z

    .line 4
    iput-boolean v0, p0, Lplugins/ZLink;->c:Z

    .line 5
    iput-boolean v0, p0, Lplugins/ZLink;->d:Z

    .line 6
    iput-boolean v0, p0, Lplugins/ZLink;->e:Z

    .line 7
    iput-boolean v0, p0, Lplugins/ZLink;->f:Z

    .line 8
    iput-boolean v0, p0, Lplugins/ZLink;->g:Z

    .line 9
    iput-boolean v0, p0, Lplugins/ZLink;->h:Z

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lplugins/ZLink;->n:Ljava/util/HashMap;

    .line 11
    new-instance v0, Lplugins/ZLink$k;

    invoke-direct {v0, p0}, Lplugins/ZLink$k;-><init>(Lplugins/ZLink;)V

    iput-object v0, p0, Lplugins/ZLink;->o:Ljava/lang/Runnable;

    .line 12
    new-instance v1, Lplugins/ZLink$n;

    invoke-direct {v1, p0}, Lplugins/ZLink$n;-><init>(Lplugins/ZLink;)V

    iput-object v1, p0, Lplugins/ZLink;->p:Lc/d;

    .line 13
    new-instance v1, Lplugins/ZLink$o;

    invoke-direct {v1, p0}, Lplugins/ZLink$o;-><init>(Lplugins/ZLink;)V

    iput-object v1, p0, Lplugins/ZLink;->q:Ljava/lang/Runnable;

    .line 14
    new-instance v1, Lplugins/ZLink$p;

    invoke-direct {v1, p0}, Lplugins/ZLink$p;-><init>(Lplugins/ZLink;)V

    iput-object v1, p0, Lplugins/ZLink;->r:Ljava/lang/Runnable;

    .line 15
    new-instance v1, Lplugins/ZLink$q;

    invoke-direct {v1, p0}, Lplugins/ZLink$q;-><init>(Lplugins/ZLink;)V

    iput-object v1, p0, Lplugins/ZLink;->s:Lo1/p;

    .line 16
    new-instance v1, Lplugins/ZLink$r;

    invoke-direct {v1, p0}, Lplugins/ZLink$r;-><init>(Lplugins/ZLink;)V

    iput-object v1, p0, Lplugins/ZLink;->t:Ljava/lang/Runnable;

    .line 17
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    const-string v3, "com.zjinnova.zlink"

    invoke-static {v2, v3}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 18
    :cond_0
    iget-object v2, p0, Lplugins/ZLink;->m:Landroid/os/Looper;

    if-nez v2, :cond_1

    .line 19
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "ZLink-handle"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 21
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lplugins/ZLink;->m:Landroid/os/Looper;

    .line 22
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lplugins/ZLink;->l:Landroid/os/Handler;

    .line 23
    :cond_1
    invoke-virtual {p0}, Lplugins/ZLink;->e0()V

    .line 24
    sget-object v2, Lu0/c;->h:Lo1/y;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 25
    sget-object v1, Lu0/c;->c:Lo1/y;

    invoke-virtual {v1, v0, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public static Y()Lplugins/ZLink;
    .locals 1

    .line 1
    sget-object v0, Lplugins/ZLink;->u:Lplugins/ZLink;

    if-nez v0, :cond_0

    new-instance v0, Lplugins/ZLink;

    invoke-direct {v0}, Lplugins/ZLink;-><init>()V

    sput-object v0, Lplugins/ZLink;->u:Lplugins/ZLink;

    .line 2
    :cond_0
    sget-object v0, Lplugins/ZLink;->u:Lplugins/ZLink;

    return-object v0
.end method


# virtual methods
.method public R(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lg/f;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lplugins/ZLink;->b:Z

    .line 3
    invoke-virtual {p0}, Lplugins/ZLink;->f0()V

    :cond_0
    return-void
.end method

.method public X(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lplugins/ZLink;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public Z(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lplugins/ZLink;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lplugins/ZLink;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lplugins/ZLink;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lplugins/ZLink;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lplugins/ZLink;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lplugins/ZLink;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public b0(Z)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lplugins/ZLink;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lg/f;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget v0, Lu0/b;->n4:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eqz p1, :cond_2

    move p1, v1

    .line 4
    :cond_2
    invoke-static {v2}, Lcom/syu/jni/ToolsJni;->cmd_252_Normal_Io_Get(I)I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 5
    :goto_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    sget-object v4, Lutil/log/LogType;->k:Lutil/log/LogType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Set HUB ENABLE to state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " otg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    if-ne v0, p1, :cond_4

    return-void

    .line 6
    :cond_4
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Set HUB ENABLE to state == "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 7
    invoke-static {v0, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    const-wide/16 v3, 0x1f4

    .line 8
    invoke-static {v3, v4}, La/i;->a0(J)V

    .line 9
    invoke-static {v2, p1}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    const-wide/16 v2, 0x64

    .line 10
    invoke-static {v2, v3}, La/i;->a0(J)V

    .line 11
    invoke-static {v0, v1}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    return-void
.end method

.method public c0()Z
    .locals 1

    const/16 v0, 0x9

    .line 1
    invoke-static {v0}, Lg/f;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ln0/j4;->d:Ln0/c4;

    instance-of v0, v0, Ln0/g4;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lplugins/ZLink;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lplugins/ZLink;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lplugins/ZLink;->n:Ljava/util/HashMap;

    new-instance v1, Lplugins/ZLink$u;

    invoke-direct {v1, p0}, Lplugins/ZLink$u;-><init>(Lplugins/ZLink;)V

    const-string v2, "MAIN_AUDIO_START"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lplugins/ZLink;->n:Ljava/util/HashMap;

    new-instance v1, Lplugins/ZLink$a;

    invoke-direct {v1, p0}, Lplugins/ZLink$a;-><init>(Lplugins/ZLink;)V

    const-string v2, "MAIN_AUDIO_STOP"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lplugins/ZLink;->n:Ljava/util/HashMap;

    new-instance v1, Lplugins/ZLink$b;

    invoke-direct {v1, p0}, Lplugins/ZLink$b;-><init>(Lplugins/ZLink;)V

    const-string v2, "SWITCHOTG"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lplugins/ZLink;->n:Ljava/util/HashMap;

    new-instance v1, Lplugins/ZLink$c;

    invoke-direct {v1, p0}, Lplugins/ZLink$c;-><init>(Lplugins/ZLink;)V

    const-string v2, "SWITCHHUB"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lplugins/ZLink;->n:Ljava/util/HashMap;

    new-instance v1, Lplugins/ZLink$d;

    invoke-direct {v1, p0}, Lplugins/ZLink$d;-><init>(Lplugins/ZLink;)V

    const-string v2, "CONNECTED"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lplugins/ZLink;->n:Ljava/util/HashMap;

    new-instance v1, Lplugins/ZLink$e;

    invoke-direct {v1, p0}, Lplugins/ZLink$e;-><init>(Lplugins/ZLink;)V

    const-string v2, "DISCONNECT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lplugins/ZLink;->n:Ljava/util/HashMap;

    new-instance v1, Lplugins/ZLink$f;

    invoke-direct {v1, p0}, Lplugins/ZLink$f;-><init>(Lplugins/ZLink;)V

    const-string v2, "ENTER"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lplugins/ZLink;->n:Ljava/util/HashMap;

    new-instance v1, Lplugins/ZLink$g;

    invoke-direct {v1, p0}, Lplugins/ZLink$g;-><init>(Lplugins/ZLink;)V

    const-string v2, "EXIT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lplugins/ZLink;->n:Ljava/util/HashMap;

    new-instance v1, Lplugins/ZLink$h;

    invoke-direct {v1, p0}, Lplugins/ZLink$h;-><init>(Lplugins/ZLink;)V

    const-string v2, "MAIN_PAGE_SHOW"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lplugins/ZLink;->n:Ljava/util/HashMap;

    new-instance v1, Lplugins/ZLink$i;

    invoke-direct {v1, p0}, Lplugins/ZLink$i;-><init>(Lplugins/ZLink;)V

    const-string v2, "MAIN_PAGE_HIDDEN"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lplugins/ZLink;->n:Ljava/util/HashMap;

    new-instance v1, Lplugins/ZLink$j;

    invoke-direct {v1, p0}, Lplugins/ZLink$j;-><init>(Lplugins/ZLink;)V

    const-string v2, "PHONE_CALL_ON"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lplugins/ZLink;->n:Ljava/util/HashMap;

    new-instance v1, Lplugins/ZLink$l;

    invoke-direct {v1, p0}, Lplugins/ZLink$l;-><init>(Lplugins/ZLink;)V

    const-string v2, "PHONE_CALL_OFF"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lplugins/ZLink;->n:Ljava/util/HashMap;

    new-instance v1, Lplugins/ZLink$m;

    invoke-direct {v1, p0}, Lplugins/ZLink$m;-><init>(Lplugins/ZLink;)V

    const-string v2, "REQ_OS_BT_STATUS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lplugins/ZLink;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lplugins/ZLink;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lplugins/ZLink;->l:Landroid/os/Handler;

    iget-object v1, p0, Lplugins/ZLink;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public g0(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.zjinnova.zlink"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3
    sget-object p1, La/b;->d:Lo1/d;

    invoke-virtual {p1, v1, p0}, Lo1/d;->a(Ljava/lang/Comparable;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lplugins/ZLink;->e:Z

    return-void
.end method

.method public h0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zjinnova.zlink"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "command"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "============>>> sendCommand command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "zlink"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public i0(I)V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zjinnova.zlink"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "command"

    const-string v3, "REQ_SPEC_FUNC_CMD"

    .line 2
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "specFuncCode"

    .line 3
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "============>>> sendKeyEvent keyCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zlink"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v2, Lutil/log/LogType;->k:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HANDLE ==>> CALL EVENT CODE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "status"

    .line 1
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lplugins/ZLink;->i:Ljava/lang/String;

    const-string p1, "command"

    .line 2
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lplugins/ZLink;->j:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lplugins/ZLink;->i:Ljava/lang/String;

    const-string v0, "CONNECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lplugins/ZLink;->i:Ljava/lang/String;

    const-string v0, "DISCONNECT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    const-string p1, "phoneMode"

    .line 4
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lplugins/ZLink;->k:Ljava/lang/String;

    const-string p2, "carplay_wired"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lplugins/ZLink;->k:Ljava/lang/String;

    const-string p2, "carplay_wireless"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lplugins/ZLink;->g:Z

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "------------  onReceive : status = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lplugins/ZLink;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " command = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lplugins/ZLink;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " phoneMode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lplugins/ZLink;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isIphone: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lplugins/ZLink;->g:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "zlink"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object p2, Lutil/log/LogType;->k:Lutil/log/LogType;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZLINK status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lplugins/ZLink;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lplugins/ZLink;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " phoneMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lplugins/ZLink;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lplugins/ZLink;->i:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lplugins/ZLink;->l:Landroid/os/Handler;

    new-instance p2, Lplugins/ZLink$s;

    invoke-direct {p2, p0}, Lplugins/ZLink$s;-><init>(Lplugins/ZLink;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    :cond_4
    iget-object p1, p0, Lplugins/ZLink;->j:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lplugins/ZLink;->l:Landroid/os/Handler;

    new-instance p2, Lplugins/ZLink$t;

    invoke-direct {p2, p0}, Lplugins/ZLink$t;-><init>(Lplugins/ZLink;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method
