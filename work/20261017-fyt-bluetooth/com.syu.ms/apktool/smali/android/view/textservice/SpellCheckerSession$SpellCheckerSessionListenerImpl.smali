.class Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;
.super Ls/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textservice/SpellCheckerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpellCheckerSessionListenerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    }
.end annotation


# static fields
.field private static final TASK_CANCEL:I = 0x1

.field private static final TASK_CLOSE:I = 0x3

.field private static final TASK_GET_SUGGESTIONS_MULTIPLE:I = 0x2

.field private static final TASK_GET_SUGGESTIONS_MULTIPLE_FOR_SENTENCE:I = 0x4


# instance fields
.field private mAsyncHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mISpellCheckerSession:Ls/b;

.field private mOpened:Z

.field private final mPendingTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls/c$a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mOpened:Z

    .line 4
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$300(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;Ls/b;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processTask(Ls/b;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V

    return-void
.end method

.method private processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mISpellCheckerSession:Ls/b;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 3
    iget v1, p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    .line 6
    iget v2, v1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    .line 8
    iget-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 9
    :cond_2
    monitor-exit p0

    return-void

    .line 10
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0, v0, p1, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processTask(Ls/b;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private processTask(Ls/b;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-nez p3, :cond_1

    .line 1
    iget-object p3, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    if-nez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSession:Ls/b;

    .line 3
    invoke-static {p3, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 4
    :cond_1
    :goto_0
    iget p3, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    if-eq p3, v1, :cond_5

    const/4 v1, 0x2

    if-eq p3, v1, :cond_4

    if-eq p3, v0, :cond_3

    const/4 v1, 0x4

    if-eq p3, v1, :cond_2

    goto/16 :goto_1

    .line 5
    :cond_2
    :try_start_0
    iget-object p3, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mTextInfos:[Landroid/view/textservice/TextInfo;

    iget v1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSuggestionsLimit:I

    invoke-interface {p1, p3, v1}, Ls/b;->onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 6
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->access$200()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get suggestions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7
    :cond_3
    :try_start_1
    invoke-interface {p1}, Ls/b;->onClose()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 8
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->access$200()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 9
    :cond_4
    :try_start_2
    iget-object p3, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mTextInfos:[Landroid/view/textservice/TextInfo;

    iget v1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSuggestionsLimit:I

    iget-boolean v2, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSequentialWords:Z

    invoke-interface {p1, p3, v1, v2}, Ls/b;->onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 10
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->access$200()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get suggestions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 11
    :cond_5
    :try_start_3
    invoke-interface {p1}, Ls/b;->onCancel()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    .line 12
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->access$200()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to cancel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :goto_1
    iget p1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    if-ne p1, v0, :cond_7

    .line 14
    monitor-enter p0

    const/4 p1, 0x0

    .line 15
    :try_start_4
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mISpellCheckerSession:Ls/b;

    .line 16
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    .line 17
    iget-object p2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    if-eqz p2, :cond_6

    .line 18
    invoke-virtual {p2}, Landroid/os/HandlerThread;->quit()Z

    .line 19
    :cond_6
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    .line 20
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    .line 21
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    invoke-direct {p0, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    return-void
.end method

.method public close()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    invoke-direct {p0, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    return-void
.end method

.method public getSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    invoke-direct {p0, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    return-void
.end method

.method public getSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    invoke-direct {p0, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    return-void
.end method

.method public isDisconnected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mOpened:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mISpellCheckerSession:Ls/b;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized onServiceConnected(Ls/b;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mISpellCheckerSession:Ls/b;

    .line 3
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SpellCheckerSession"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 6
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$1;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$1;-><init>(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mOpened:Z

    .line 8
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :goto_0
    :try_start_2
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processTask(Ls/b;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 11
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
