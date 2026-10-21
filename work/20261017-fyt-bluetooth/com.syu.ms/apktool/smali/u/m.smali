.class public Lu/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/m$d;,
        Lu/m$c;,
        Lu/m$b;
    }
.end annotation


# static fields
.field public static final HANDLED:Z = true

.field public static final NOT_HANDLED:Z = false

.field private static final SM_INIT_CMD:I = -0x2

.field private static final SM_QUIT_CMD:I = -0x1


# instance fields
.field private mName:Ljava/lang/String;

.field private mSmHandler:Lu/m$d;

.field private mSmThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lu/m;->mSmThread:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4
    iget-object v0, p0, Lu/m;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0}, Lu/m;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lu/m;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-direct {p0, p1, p2}, Lu/m;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method public static synthetic access$400(Lu/m;)Landroid/os/HandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lu/m;->mSmThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public static synthetic access$402(Lu/m;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    .line 1
    iput-object p1, p0, Lu/m;->mSmThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method public static synthetic access$502(Lu/m;Lu/m$d;)Lu/m$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lu/m;->mSmHandler:Lu/m$d;

    return-object p1
.end method

.method private initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lu/m;->mName:Ljava/lang/String;

    .line 2
    new-instance p1, Lu/m$d;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Lu/m$d;-><init>(Landroid/os/Looper;Lu/m;Lu/m$a;)V

    iput-object p1, p0, Lu/m;->mSmHandler:Lu/m$d;

    return-void
.end method


# virtual methods
.method public addLogRec(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lu/m$d;->g(Lu/m$d;)Lu/m$c;

    move-result-object v1

    invoke-static {v0}, Lu/m$d;->a(Lu/m$d;)Landroid/os/Message;

    move-result-object v3

    invoke-static {v0}, Lu/m$d;->b(Lu/m$d;)Lu/g;

    move-result-object v5

    invoke-static {v0}, Lu/m$d;->h(Lu/m$d;)[Lu/m$d$c;

    move-result-object v2

    invoke-static {v0}, Lu/m$d;->i(Lu/m$d;)I

    move-result v4

    aget-object v2, v2, v4

    iget-object v6, v2, Lu/m$d$c;->a:Lu/l;

    invoke-static {v0}, Lu/m$d;->j(Lu/m$d;)Lu/l;

    move-result-object v7

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Lu/m$c;->b(Lu/m;Landroid/os/Message;Ljava/lang/String;Lu/g;Lu/g;Lu/g;)V

    return-void
.end method

.method public final addState(Lu/l;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lu/m$d;->r(Lu/m$d;Lu/l;Lu/l;)Lu/m$d$c;

    return-void
.end method

.method public final addState(Lu/l;Lu/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    invoke-static {v0, p1, p2}, Lu/m$d;->r(Lu/m$d;Lu/l;Lu/l;)Lu/m$d$c;

    return-void
.end method

.method public final copyLogRecs()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lu/m$b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 2
    iget-object v1, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lu/m$d;->g(Lu/m$d;)Lu/m$c;

    move-result-object v1

    invoke-static {v1}, Lu/m$c;->a(Lu/m$c;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/m$b;

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final deferMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    invoke-static {v0, p1}, Lu/m$d;->e(Lu/m$d;Landroid/os/Message;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lu/m;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " total records="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/m;->getLogRecCount()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    move p3, p1

    .line 3
    :goto_0
    invoke-virtual {p0}, Lu/m;->getLogRecSize()I

    move-result v0

    if-ge p3, v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    invoke-virtual {p0, p3}, Lu/m;->getLogRec(I)Lu/m$b;

    move-result-object v1

    invoke-virtual {v1}, Lu/m$b;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, " rec[%d]: %s\n"

    invoke-virtual {p2, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "curState="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/m;->getCurrentState()Lu/g;

    move-result-object p3

    invoke-interface {p3}, Lu/g;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getCurrentMessage()Landroid/os/Message;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Lu/m$d;->a(Lu/m$d;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentState()Lu/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Lu/m$d;->b(Lu/m$d;)Lu/g;

    move-result-object v0

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    return-object v0
.end method

.method public final getLogRec(I)Lu/m$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {v0}, Lu/m$d;->g(Lu/m$d;)Lu/m$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/m$c;->e(I)Lu/m$b;

    move-result-object p1

    return-object p1
.end method

.method public final getLogRecCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {v0}, Lu/m$d;->g(Lu/m$d;)Lu/m$c;

    move-result-object v0

    invoke-virtual {v0}, Lu/m$c;->d()I

    move-result v0

    return v0
.end method

.method public final getLogRecSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {v0}, Lu/m$d;->g(Lu/m$d;)Lu/m$c;

    move-result-object v0

    invoke-virtual {v0}, Lu/m$c;->i()I

    move-result v0

    return v0
.end method

.method public getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getWhatToString(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public haltedProcessMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public isDbg()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {v0}, Lu/m$d;->n(Lu/m$d;)Z

    move-result v0

    return v0
.end method

.method public final isQuit(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_1

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 3
    :cond_1
    invoke-static {v0, p1}, Lu/m$d;->k(Lu/m$d;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logAndAddLogRec(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->addLogRec(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lu/m;->log(Ljava/lang/String;)V

    return-void
.end method

.method public logd(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public loge(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lu/m;->mName:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public logi(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logw(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final obtainMessage()Landroid/os/Message;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .locals 1

    .line 2
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final obtainMessage(II)Landroid/os/Message;
    .locals 2

    .line 4
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final obtainMessage(III)Landroid/os/Message;
    .locals 1

    .line 5
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    invoke-static {v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 6
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 3
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public onHalting()V
    .locals 0

    return-void
.end method

.method public onQuitting()V
    .locals 0

    return-void
.end method

.method public final quit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lu/m$d;->l(Lu/m$d;)V

    return-void
.end method

.method public final quitNow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lu/m$d;->m(Lu/m$d;)V

    return-void
.end method

.method public recordLogRec(Landroid/os/Message;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final removeMessages(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final sendMessage(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lu/m;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessage(II)V
    .locals 1

    .line 5
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lu/m;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessage(III)V
    .locals 1

    .line 7
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lu/m;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessage(IIILjava/lang/Object;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lu/m;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessage(ILjava/lang/Object;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lu/m;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessage(Landroid/os/Message;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessageAtFrontOfQueue(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lu/m;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessageAtFrontOfQueue(II)V
    .locals 1

    .line 5
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lu/m;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessageAtFrontOfQueue(III)V
    .locals 1

    .line 7
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lu/m;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lu/m;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lu/m;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessageDelayed(IIIJ)V
    .locals 1

    .line 7
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lu/m;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final sendMessageDelayed(IIILjava/lang/Object;J)V
    .locals 1

    .line 9
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lu/m;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final sendMessageDelayed(IIJ)V
    .locals 1

    .line 5
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lu/m;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final sendMessageDelayed(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lu/m;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 1

    .line 3
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lu/m;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)V
    .locals 1

    .line 11
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setDbg(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0, p1}, Lu/m$d;->o(Lu/m$d;Z)V

    return-void
.end method

.method public final setInitialState(Lu/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    invoke-static {v0, p1}, Lu/m$d;->s(Lu/m$d;Lu/l;)V

    return-void
.end method

.method public final setLogOnlyTransitions(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    invoke-static {v0}, Lu/m$d;->g(Lu/m$d;)Lu/m$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/m$c;->g(Z)V

    return-void
.end method

.method public final setLogRecSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    invoke-static {v0}, Lu/m$d;->g(Lu/m$d;)Lu/m$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/m$c;->h(I)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lu/m$d;->p(Lu/m$d;)V

    return-void
.end method

.method public final transitionTo(Lu/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    invoke-static {v0, p1}, Lu/m$d;->c(Lu/m$d;Lu/g;)V

    return-void
.end method

.method public final transitionToHaltingState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    invoke-static {v0}, Lu/m$d;->d(Lu/m$d;)Lu/m$d$a;

    move-result-object v1

    invoke-static {v0, v1}, Lu/m$d;->c(Lu/m$d;Lu/g;)V

    return-void
.end method

.method public unhandledMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu/m;->mSmHandler:Lu/m$d;

    invoke-static {v0}, Lu/m$d;->f(Lu/m$d;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - unhandledMessage: msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
