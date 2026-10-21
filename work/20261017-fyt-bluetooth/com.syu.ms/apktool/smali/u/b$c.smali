.class public Lu/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/b$c$a;
    }
.end annotation


# static fields
.field public static d:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lu/b$c;",
            ">;"
        }
    .end annotation
.end field

.field public static e:I


# instance fields
.field public a:Landroid/os/HandlerThread;

.field public b:Lu/b$c$a;

.field public c:Landroid/os/Messenger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lu/b$c;->d:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 2
    sput v0, Lu/b$c;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lu/b$c;->d(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lu/b$c;
    .locals 6

    .line 1
    sget-object v0, Lu/b$c;->d:Ljava/util/Stack;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lu/b$c;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lu/b$c;

    invoke-direct {v1}, Lu/b$c;-><init>()V

    .line 4
    new-instance v2, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncHandler-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lu/b$c;->e:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lu/b$c;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lu/b$c;->a:Landroid/os/HandlerThread;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 6
    new-instance v2, Lu/b$c$a;

    iget-object v3, v1, Lu/b$c;->a:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lu/b$c$a;-><init>(Lu/b$c;Landroid/os/Looper;Lu/b$a;)V

    iput-object v2, v1, Lu/b$c;->b:Lu/b$c$a;

    .line 7
    new-instance v2, Landroid/os/Messenger;

    iget-object v3, v1, Lu/b$c;->b:Lu/b$c$a;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, v1, Lu/b$c;->c:Landroid/os/Messenger;

    goto :goto_0

    .line 8
    :cond_0
    sget-object v1, Lu/b$c;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/b$c;

    .line 9
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static d(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;
    .locals 3

    .line 1
    invoke-static {}, Lu/b$c;->b()Lu/b$c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object v2, v0, Lu/b$c;->c:Landroid/os/Messenger;

    iput-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 3
    iget-object v2, v0, Lu/b$c;->b:Lu/b$c$a;

    invoke-static {v2}, Lu/b$c$a;->a(Lu/b$c$a;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 5
    iget-object p0, v0, Lu/b$c;->b:Lu/b$c$a;

    invoke-static {p0}, Lu/b$c$a;->a(Lu/b$c$a;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 6
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 7
    :cond_0
    iget-object p0, v0, Lu/b$c;->b:Lu/b$c$a;

    invoke-static {p0, v1}, Lu/b$c$a;->c(Lu/b$c$a;Landroid/os/Message;)Landroid/os/Message;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    iget-object p0, v0, Lu/b$c;->b:Lu/b$c$a;

    invoke-static {p0, v1}, Lu/b$c$a;->c(Lu/b$c$a;Landroid/os/Message;)Landroid/os/Message;

    goto :goto_0

    .line 9
    :catch_1
    iget-object p0, v0, Lu/b$c;->b:Lu/b$c$a;

    invoke-static {p0, v1}, Lu/b$c$a;->c(Lu/b$c$a;Landroid/os/Message;)Landroid/os/Message;

    .line 10
    :goto_0
    iget-object p0, v0, Lu/b$c;->b:Lu/b$c$a;

    invoke-static {p0}, Lu/b$c$a;->b(Lu/b$c$a;)Landroid/os/Message;

    move-result-object p0

    .line 11
    invoke-virtual {v0}, Lu/b$c;->c()V

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    sget-object v0, Lu/b$c;->d:Ljava/util/Stack;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lu/b$c;->d:Ljava/util/Stack;

    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
