.class Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;
.super Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/WifiAwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiAwareDiscoverySessionCallbackProxy"
.end annotation


# static fields
.field private static final CALLBACK_MATCH:I = 0x4

.field private static final CALLBACK_MESSAGE_RECEIVED:I = 0x7

.field private static final CALLBACK_MESSAGE_SEND_FAIL:I = 0x6

.field private static final CALLBACK_MESSAGE_SEND_SUCCESS:I = 0x5

.field private static final CALLBACK_SESSION_CONFIG_FAIL:I = 0x2

.field private static final CALLBACK_SESSION_CONFIG_SUCCESS:I = 0x1

.field private static final CALLBACK_SESSION_STARTED:I = 0x0

.field private static final CALLBACK_SESSION_TERMINATED:I = 0x3

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE2:Ljava/lang/String; = "message2"


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

.field private final mClientId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIsPublish:Z

.field private final mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

.field private mSession:Landroid/net/wifi/aware/DiscoverySession;


# direct methods
.method public constructor <init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;ZLandroid/net/wifi/aware/DiscoverySessionCallback;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;-><init>()V

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
    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-boolean p3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mIsPublish:Z

    .line 12
    .line 13
    iput-object p4, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    .line 14
    .line 15
    iput p5, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mClientId:I

    .line 16
    .line 17
    new-instance p1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$1;

    .line 18
    .line 19
    invoke-direct {p1, p0, p2}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$1;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;Landroid/os/Looper;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic access$400(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;)Landroid/net/wifi/aware/DiscoverySessionCallback;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    return-object p0
.end method

.method public static synthetic access$600(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;)Landroid/net/wifi/aware/DiscoverySession;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    return-object p0
.end method


# virtual methods
.method public onMatch(I[B[B)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "message"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo p2, "message2"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    const/4 p3, 0x4

    .line 21
    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onMessageReceived(I[B)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x7

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
    iget-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onMessageSendFail(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x6

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
    iget-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onMessageSendSuccess(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

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
    iget-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onProxySessionStarted(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    .line 2
    .line 3
    const-string v1, "WifiAwareManager"

    .line 4
    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string/jumbo p1, "onProxySessionStarted: mgr GC\'d"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mIsPublish:Z

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    new-instance v1, Landroid/net/wifi/aware/PublishDiscoverySession;

    .line 29
    .line 30
    iget v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mClientId:I

    .line 31
    .line 32
    invoke-direct {v1, v0, v2, p1}, Landroid/net/wifi/aware/PublishDiscoverySession;-><init>(Landroid/net/wifi/aware/WifiAwareManager;II)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    .line 36
    .line 37
    iget-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onPublishStarted(Landroid/net/wifi/aware/PublishDiscoverySession;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance v1, Landroid/net/wifi/aware/SubscribeDiscoverySession;

    .line 44
    .line 45
    iget v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mClientId:I

    .line 46
    .line 47
    invoke-direct {v1, v0, v2, p1}, Landroid/net/wifi/aware/SubscribeDiscoverySession;-><init>(Landroid/net/wifi/aware/WifiAwareManager;II)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    .line 51
    .line 52
    iget-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onSubscribeStarted(Landroid/net/wifi/aware/SubscribeDiscoverySession;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string/jumbo v2, "onSessionStarted: sessionId="

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, ": session already created!?"

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    invoke-static {v2, p1, v3}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0
.end method

.method public onProxySessionTerminated(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/net/wifi/aware/DiscoverySession;->setTerminated()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p1, "WifiAwareManager"

    .line 13
    .line 14
    const-string v0, "Proxy: onSessionTerminated called but mSession is null!?"

    .line 15
    .line 16
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onSessionTerminated()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onSessionConfigFail(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

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
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 9
    .line 10
    iget-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onSessionConfigSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

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
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onSessionStarted(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

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
    iget-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onSessionTerminated(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

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
    iget-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
