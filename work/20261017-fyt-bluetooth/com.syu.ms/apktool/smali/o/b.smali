.class public Lo/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/b$a;,
        Lo/b$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Looper;

.field public final c:Landroid/os/Handler;

.field public final d:Lo/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lo/b$a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/b;->a:Landroid/content/Context;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lo/b;->b:Landroid/os/Looper;

    .line 4
    new-instance p1, Lo/b$b;

    invoke-direct {p1, p0, p2, p4}, Lo/b$b;-><init>(Lo/b;Landroid/os/Looper;Z)V

    iput-object p1, p0, Lo/b;->c:Landroid/os/Handler;

    .line 5
    iput-object p3, p0, Lo/b;->d:Lo/b$a;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lo/b;->b:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lo/b;->d:Lo/b$a;

    invoke-interface {v0, p1}, Lo/b$a;->executeMessage(Landroid/os/Message;)V

    .line 3
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lo/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b(I)Landroid/os/Message;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public c(II)Landroid/os/Message;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/b;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public d(III)Landroid/os/Message;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public e(IIIIIII)Landroid/os/Message;
    .locals 1

    .line 1
    invoke-static {}, Lo/f;->b()Lo/f;

    move-result-object v0

    .line 2
    iput p2, v0, Lo/f;->h:I

    .line 3
    iput p3, v0, Lo/f;->i:I

    .line 4
    iput p4, v0, Lo/f;->j:I

    .line 5
    iput p5, v0, Lo/f;->k:I

    .line 6
    iput p6, v0, Lo/f;->l:I

    .line 7
    iput p7, v0, Lo/f;->m:I

    .line 8
    iget-object p2, p0, Lo/b;->c:Landroid/os/Handler;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public f(IILjava/lang/Object;)Landroid/os/Message;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/b;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public g(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/b;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public h(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 1
    invoke-static {}, Lo/f;->b()Lo/f;

    move-result-object v0

    .line 2
    iput-object p2, v0, Lo/f;->c:Ljava/lang/Object;

    .line 3
    iput-object p3, v0, Lo/f;->d:Ljava/lang/Object;

    .line 4
    iget-object p2, p0, Lo/b;->c:Landroid/os/Handler;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public i(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 1
    invoke-static {}, Lo/f;->b()Lo/f;

    move-result-object v0

    .line 2
    iput-object p2, v0, Lo/f;->c:Ljava/lang/Object;

    .line 3
    iput-object p3, v0, Lo/f;->d:Ljava/lang/Object;

    .line 4
    iput-object p4, v0, Lo/f;->e:Ljava/lang/Object;

    .line 5
    iput-object p5, v0, Lo/f;->f:Ljava/lang/Object;

    .line 6
    iget-object p2, p0, Lo/b;->c:Landroid/os/Handler;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public j(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
