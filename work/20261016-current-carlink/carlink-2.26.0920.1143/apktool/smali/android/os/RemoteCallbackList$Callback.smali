.class final Landroid/os/RemoteCallbackList$Callback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RemoteCallbackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Callback"
.end annotation


# instance fields
.field final mCallback:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final mCookie:Ljava/lang/Object;

.field final synthetic this$0:Landroid/os/RemoteCallbackList;


# direct methods
.method public constructor <init>(Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/os/RemoteCallbackList$Callback;->this$0:Landroid/os/RemoteCallbackList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/os/RemoteCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/os/RemoteCallbackList$Callback;->mCookie:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/RemoteCallbackList$Callback;->this$0:Landroid/os/RemoteCallbackList;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Landroid/os/RemoteCallbackList$Callback;->this$0:Landroid/os/RemoteCallbackList;

    .line 7
    .line 8
    iget-object v1, v1, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    .line 9
    .line 10
    iget-object v2, p0, Landroid/os/RemoteCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    .line 11
    .line 12
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object v0, p0, Landroid/os/RemoteCallbackList$Callback;->this$0:Landroid/os/RemoteCallbackList;

    .line 21
    .line 22
    iget-object v1, p0, Landroid/os/RemoteCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    .line 23
    .line 24
    iget-object v2, p0, Landroid/os/RemoteCallbackList$Callback;->mCookie:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw v1
.end method
