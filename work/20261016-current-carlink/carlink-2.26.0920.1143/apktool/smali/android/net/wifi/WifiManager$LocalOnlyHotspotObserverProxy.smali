.class Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalOnlyHotspotObserverProxy"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mLooper:Landroid/os/Looper;

.field private final mMessenger:Landroid/os/Messenger;

.field private final mWifiManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/net/wifi/WifiManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;Landroid/os/Looper;Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mWifiManager:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-object p2, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mLooper:Landroid/os/Looper;

    .line 12
    .line 13
    new-instance p1, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$1;

    .line 14
    .line 15
    invoke-direct {p1, p0, p2, p3}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$1;-><init>(Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;Landroid/os/Looper;Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance p2, Landroid/os/Messenger;

    .line 21
    .line 22
    invoke-direct {p2, p1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mMessenger:Landroid/os/Messenger;

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic access$200(Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mWifiManager:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public getMessenger()Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method public registered()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x3

    .line 6
    iput v1, v0, Landroid/os/Message;->what:I

    .line 7
    .line 8
    iget-object v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mMessenger:Landroid/os/Messenger;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
