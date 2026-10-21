.class public abstract Li1/a;
.super Li1/s;
.source "SourceFile"

# interfaces
.implements Li1/b0$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Pack:",
        "Li1/e;",
        ">",
        "Li1/s<",
        "TPack;>;",
        "Li1/b0$a;"
    }
.end annotation


# instance fields
.field public h:Li1/b0;

.field public i:Landroid/os/Handler;

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Li1/s;-><init>(II)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Li1/a;->i:Landroid/os/Handler;

    .line 3
    new-instance p1, Li1/a$a;

    invoke-direct {p1, p0}, Li1/a$a;-><init>(Li1/a;)V

    iput-object p1, p0, Li1/a;->j:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a(Li1/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/a;->h:Li1/b0;

    return-void
.end method

.method public c([B)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Li1/s;->b([B)V

    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    iget-object v0, p0, Li1/a;->i:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "plgin-Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Li1/a;->i:Landroid/os/Handler;

    :cond_0
    return-void
.end method
