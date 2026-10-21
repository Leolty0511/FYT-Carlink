.class Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;
.super Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/WifiAwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiAwareEventCallbackProxy"
.end annotation


# static fields
.field private static final CALLBACK_CONNECT_FAIL:I = 0x1

.field private static final CALLBACK_CONNECT_SUCCESS:I = 0x0

.field private static final CALLBACK_IDENTITY_CHANGED:I = 0x2

.field private static final CALLBACK_RANGING_ABORTED:I = 0x5

.field private static final CALLBACK_RANGING_FAILURE:I = 0x4

.field private static final CALLBACK_RANGING_SUCCESS:I = 0x3


# instance fields
.field private final mAwareManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/net/wifi/aware/WifiAwareManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mBinder:Landroid/os/Binder;

.field private final mHandler:Landroid/os/Handler;

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;Landroid/os/Binder;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-object p2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mLooper:Landroid/os/Looper;

    .line 12
    .line 13
    iput-object p3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mBinder:Landroid/os/Binder;

    .line 14
    .line 15
    new-instance p1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;

    .line 16
    .line 17
    invoke-direct {p1, p0, p2, p4, p5}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;Landroid/os/Looper;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic access$200(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;)Landroid/os/Binder;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mBinder:Landroid/os/Binder;

    return-object p0
.end method


# virtual methods
.method public getAndRemoveRangingListener(I)Landroid/net/wifi/RttManager$RttListener;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p1, "WifiAwareManager"

    .line 12
    .line 13
    const-string v0, "getAndRemoveRangingListener: called post GC"

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    :cond_0
    invoke-static {v0}, Landroid/net/wifi/aware/WifiAwareManager;->access$000(Landroid/net/wifi/aware/WifiAwareManager;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    invoke-static {v0}, Landroid/net/wifi/aware/WifiAwareManager;->access$100(Landroid/net/wifi/aware/WifiAwareManager;)Landroid/util/SparseArray;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/net/wifi/RttManager$RttListener;

    .line 34
    .line 35
    invoke-static {v0}, Landroid/net/wifi/aware/WifiAwareManager;->access$100(Landroid/net/wifi/aware/WifiAwareManager;)Landroid/util/SparseArray;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 40
    .line 41
    .line 42
    monitor-exit v1

    .line 43
    return-object v2

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p1
.end method

.method public onConnectFail(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 9
    .line 10
    iget-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onConnectSuccess(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 9
    .line 10
    iget-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onIdentityChanged([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onRangingAborted(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 9
    .line 10
    iget-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onRangingFailure(IILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 9
    .line 10
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 11
    .line 12
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onRangingSuccess(ILandroid/net/wifi/RttManager$ParcelableRttResults;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 9
    .line 10
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
