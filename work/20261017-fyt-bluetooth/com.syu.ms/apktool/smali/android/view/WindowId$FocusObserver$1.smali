.class Landroid/view/WindowId$FocusObserver$1;
.super Landroid/view/IWindowFocusObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowId$FocusObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/view/WindowId$FocusObserver;


# direct methods
.method public constructor <init>(Landroid/view/WindowId$FocusObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    invoke-direct {p0}, Landroid/view/IWindowFocusObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public focusGained(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v0, v0, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v1, v1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowId;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v1, v0, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 5
    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/WindowId$FocusObserver;->onFocusGained(Landroid/view/WindowId;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public focusLost(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v0, v0, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v1, v1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowId;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v1, v0, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 5
    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/WindowId$FocusObserver;->onFocusLost(Landroid/view/WindowId;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
