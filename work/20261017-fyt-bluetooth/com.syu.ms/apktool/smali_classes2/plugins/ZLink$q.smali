.class public Lplugins/ZLink$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugins/ZLink;
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
    iput-object p1, p0, Lplugins/ZLink$q;->a:Lplugins/ZLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    check-cast p1, Ljava/lang/String;

    const-string v0, "com.zjinnova.zlink"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object v0, Lutil/log/LogType;->k:Lutil/log/LogType;

    const-string v1, "ZLINK IS KILLED Main Server Set HUB ENABLE 0"

    invoke-virtual {p1, v0, v1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lplugins/ZLink$q;->a:Lplugins/ZLink;

    iget-object v0, p1, Lplugins/ZLink;->l:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lplugins/ZLink;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    :cond_1
    iget-object p1, p0, Lplugins/ZLink$q;->a:Lplugins/ZLink;

    iget-boolean v0, p1, Lplugins/ZLink;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput-boolean v1, p1, Lplugins/ZLink;->a:Z

    .line 6
    :cond_2
    iget-boolean v0, p1, Lplugins/ZLink;->b:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p1, Lplugins/ZLink;->b:Z

    .line 7
    :cond_3
    iput-boolean v1, p1, Lplugins/ZLink;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method
