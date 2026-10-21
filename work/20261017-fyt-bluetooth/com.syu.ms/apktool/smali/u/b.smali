.class public Lu/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/b$b;,
        Lu/b$c;
    }
.end annotation


# static fields
.field public static f:[Ljava/lang/String;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/os/Handler;

.field public c:Landroid/os/Messenger;

.field public d:Landroid/os/Messenger;

.field public e:Lu/b$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sput-object v0, Lu/b;->f:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CMD_CHANNEL_HALF_CONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CMD_CHANNEL_FULL_CONNECTION"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CMD_CHANNEL_FULLY_CONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CMD_CHANNEL_DISCONNECT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CMD_CHANNEL_DISCONNECTED"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lu/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/b;->g(I)V

    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AsyncChannel"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lu/b;->d(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lu/b;->h(I)V

    return-void
.end method

.method public c(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lu/b;->d(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    const/4 p1, 0x0

    return p1
.end method

.method public d(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu/b;->a:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lu/b;->b:Landroid/os/Handler;

    .line 3
    new-instance p1, Landroid/os/Messenger;

    iget-object p2, p0, Lu/b;->b:Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lu/b;->c:Landroid/os/Messenger;

    .line 4
    iput-object p3, p0, Lu/b;->d:Landroid/os/Messenger;

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x11004

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iget-object v1, p0, Lu/b;->c:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 4
    iget-object v1, p0, Lu/b;->d:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    iget-object v0, p0, Lu/b;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Lu/b;->g(I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lu/b;->d:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lu/b;->e:Lu/b$b;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lu/b;->e:Lu/b$b;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1
    return-void
.end method

.method public final g(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu/b;->b:Landroid/os/Handler;

    const v1, 0x11004

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lu/b;->d:Landroid/os/Messenger;

    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 5
    iget-object p1, p0, Lu/b;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final h(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lu/b;->b:Landroid/os/Handler;

    const v1, 0x11000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lu/b;->d:Landroid/os/Messenger;

    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 5
    new-instance p1, Lu/b$b;

    invoke-direct {p1, p0}, Lu/b$b;-><init>(Lu/b;)V

    iput-object p1, p0, Lu/b;->e:Lu/b$b;

    .line 6
    :try_start_0
    iget-object p1, p0, Lu/b;->d:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v1, p0, Lu/b;->e:Lu/b$b;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lu/b;->e:Lu/b$b;

    const/4 p1, 0x1

    .line 8
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 9
    :goto_0
    iget-object p1, p0, Lu/b;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public i(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2
    iput p2, v0, Landroid/os/Message;->what:I

    .line 3
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1, v0}, Lu/b;->j(Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method public j(Landroid/os/Message;Landroid/os/Message;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lu/b;->c:Landroid/os/Messenger;

    iput-object v0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 2
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TODO: handle replyToMessage RemoteException"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lu/b;->f(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public k(I)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3
    invoke-virtual {p0, v0}, Lu/b;->p(Landroid/os/Message;)V

    return-void
.end method

.method public l(II)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 4
    invoke-virtual {p0, v0}, Lu/b;->p(Landroid/os/Message;)V

    return-void
.end method

.method public m(III)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 4
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 5
    invoke-virtual {p0, v0}, Lu/b;->p(Landroid/os/Message;)V

    return-void
.end method

.method public n(IIILjava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 4
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 5
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, v0}, Lu/b;->p(Landroid/os/Message;)V

    return-void
.end method

.method public o(ILjava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0}, Lu/b;->p(Landroid/os/Message;)V

    return-void
.end method

.method public p(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/b;->c:Landroid/os/Messenger;

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 2
    :try_start_0
    iget-object v0, p0, Lu/b;->d:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x2

    .line 3
    invoke-virtual {p0, p1}, Lu/b;->g(I)V

    :goto_0
    return-void
.end method

.method public q(I)Landroid/os/Message;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3
    invoke-virtual {p0, v0}, Lu/b;->u(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public r(II)Landroid/os/Message;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 4
    invoke-virtual {p0, v0}, Lu/b;->u(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public s(III)Landroid/os/Message;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 4
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 5
    invoke-virtual {p0, v0}, Lu/b;->u(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public t(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0}, Lu/b;->u(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public u(Landroid/os/Message;)Landroid/os/Message;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/b;->d:Landroid/os/Messenger;

    invoke-static {v0, p1}, Lu/b$c;->a(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method
