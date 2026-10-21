.class public Lplugins/ZLink$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugins/ZLink;->e0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lplugins/ZLink;


# direct methods
.method public constructor <init>(Lplugins/ZLink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lplugins/ZLink$i;->a:Lplugins/ZLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->k:Lutil/log/LogType;

    const-string v2, "HANDLE ==>> MAIN_PAGE_HIDDEN"

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lg/f;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lplugins/ZLink$i;->a:Lplugins/ZLink;

    iget-boolean v1, v0, Lplugins/ZLink;->b:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lplugins/ZLink;->b:Z

    .line 5
    invoke-virtual {v0}, Lplugins/ZLink;->c0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lplugins/ZLink$i;->a:Lplugins/ZLink;

    iget-boolean v1, v0, Lplugins/ZLink;->f:Z

    invoke-virtual {v0, v1}, Lplugins/ZLink;->b0(Z)V

    .line 6
    :cond_1
    iget-object v0, p0, Lplugins/ZLink$i;->a:Lplugins/ZLink;

    invoke-virtual {v0}, Lplugins/ZLink;->f0()V

    return-void
.end method
