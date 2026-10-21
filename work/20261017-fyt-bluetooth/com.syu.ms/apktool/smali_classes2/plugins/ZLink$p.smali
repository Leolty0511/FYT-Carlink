.class public Lplugins/ZLink$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugins/ZLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lplugins/ZLink;


# direct methods
.method public constructor <init>(Lplugins/ZLink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lplugins/ZLink$p;->b:Lplugins/ZLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lplugins/ZLink$p;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lplugins/ZLink$p;->a:Z

    iget-object v1, p0, Lplugins/ZLink$p;->b:Lplugins/ZLink;

    invoke-virtual {v1}, Lplugins/ZLink;->d0()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lplugins/ZLink$p;->b:Lplugins/ZLink;

    invoke-virtual {v0}, Lplugins/ZLink;->d0()Z

    move-result v0

    iput-boolean v0, p0, Lplugins/ZLink$p;->a:Z

    .line 3
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->k:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZLINK CALL EVENT CHANGED seted:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lplugins/ZLink$p;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "   event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lplugins/ZLink$p;->a:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lplugins/ZLink$p;->b:Lplugins/ZLink;

    iget-object v3, v3, Lplugins/ZLink;->p:Lc/d;

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/4 v1, 0x6

    iget-boolean v2, p0, Lplugins/ZLink$p;->a:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lplugins/ZLink$p;->b:Lplugins/ZLink;

    iget-object v2, v2, Lplugins/ZLink;->p:Lc/d;

    goto :goto_1

    :cond_2
    move-object v2, v4

    :goto_1
    invoke-virtual {v0, v1, v2}, Lc/e;->i(ILc/d;)V

    .line 5
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/4 v1, 0x5

    iget-boolean v2, p0, Lplugins/ZLink$p;->a:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lplugins/ZLink$p;->b:Lplugins/ZLink;

    iget-object v4, v2, Lplugins/ZLink;->p:Lc/d;

    :cond_3
    invoke-virtual {v0, v1, v4}, Lc/e;->i(ILc/d;)V

    return-void
.end method
