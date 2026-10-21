.class Landroid/view/inputmethod/InputMethodManager$H;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "H"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    return-void

    .line 2
    :pswitch_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1, v3, v3}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    return-void

    .line 4
    :pswitch_2
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    return-void

    .line 5
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    .line 6
    :goto_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean p1, v4, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 8
    iput-boolean v3, v4, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    if-nez p1, :cond_1

    .line 9
    iput-boolean v2, v4, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    iget-object p1, v4, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/b;

    invoke-interface {p1}, Lcom/android/internal/view/b;->finishComposingText()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :catch_0
    :try_start_2
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object p1, p1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v2, p1, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    invoke-static {p1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->access$000(Landroid/view/inputmethod/InputMethodManager;ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v1, v3, v3, v3}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    .line 14
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 15
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 16
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 17
    :try_start_3
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v5, v4, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ne v5, p1, :cond_3

    .line 18
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->clearBindingLocked()V

    .line 19
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object p1, p1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 20
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v2, p1, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 21
    :cond_2
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean p1, p1, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_4

    .line 23
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v1, v3, v3, v3}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    .line 24
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 25
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/view/InputBindResult;

    .line 26
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 27
    :try_start_5
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v4, v2, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ltz v4, :cond_6

    iget v5, p1, Lcom/android/internal/view/InputBindResult;->d:I

    if-eq v4, v5, :cond_5

    goto :goto_2

    .line 28
    :cond_5
    iget-object v4, p1, Lcom/android/internal/view/InputBindResult;->b:Landroid/view/InputChannel;

    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    .line 29
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p1, Lcom/android/internal/view/InputBindResult;->a:Lcom/android/internal/view/g;

    iput-object v4, v2, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/g;

    .line 30
    iget-object v4, p1, Lcom/android/internal/view/InputBindResult;->c:Ljava/lang/String;

    iput-object v4, v2, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 31
    iget p1, p1, Lcom/android/internal/view/InputBindResult;->d:I

    iput p1, v2, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 32
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 33
    invoke-virtual {v2, v1, v3, v3, v3}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    return-void

    :cond_6
    :goto_2
    :try_start_6
    const-string v1, "InputMethodManager"

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring onBind: cur seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v3, v3, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", given seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/view/InputBindResult;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object p1, p1, Lcom/android/internal/view/InputBindResult;->b:Landroid/view/InputChannel;

    if-eqz p1, :cond_7

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq p1, v1, :cond_7

    .line 36
    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    .line 37
    :cond_7
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p1

    .line 38
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    .line 39
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/f;

    .line 40
    :try_start_7
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p1, Lo/f;->c:Ljava/lang/Object;

    check-cast v1, Ljava/io/FileDescriptor;

    iget-object v2, p1, Lo/f;->d:Ljava/lang/Object;

    check-cast v2, Ljava/io/PrintWriter;

    iget-object v3, p1, Lo/f;->e:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 41
    iget-object v1, p1, Lo/f;->d:Ljava/lang/Object;

    check-cast v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    :goto_3
    iget-object v0, p1, Lo/f;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_8
    iget-object v1, p1, Lo/f;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 44
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 45
    invoke-virtual {p1}, Lo/f;->c()V

    return-void

    :catchall_3
    move-exception p1

    .line 46
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
