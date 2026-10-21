.class Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;-><init>(Landroid/net/wifi/WifiManager;Landroid/os/Looper;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;

.field final synthetic val$callback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;Landroid/os/Looper;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->this$0:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;

    iput-object p3, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->val$callback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LocalOnlyHotspotCallbackProxy: handle message what: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p1, Landroid/os/Message;->what:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " msg: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "WifiManager"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->this$0:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;

    .line 31
    .line 32
    invoke-static {v0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->access$100(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;)Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 41
    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    const-string p1, "LocalOnlyHotspotCallbackProxy: handle message post GC"

    .line 45
    .line 46
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 51
    .line 52
    const/4 v3, 0x2

    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    if-eq v2, v0, :cond_2

    .line 57
    .line 58
    if-eq v2, v3, :cond_1

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v2, "LocalOnlyHotspotCallbackProxy unhandled message.  type: "

    .line 63
    .line 64
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget p1, p1, Landroid/os/Message;->what:I

    .line 68
    .line 69
    invoke-static {v0, p1, v1}, Landroid/app/m;->C(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 74
    .line 75
    const-string v0, "LocalOnlyHotspotCallbackProxy: failed to start.  reason: "

    .line 76
    .line 77
    invoke-static {v0, p1, v1}, Landroid/app/m;->A(Ljava/lang/String;ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->val$callback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onFailed(I)V

    .line 83
    .line 84
    .line 85
    const-string p1, "done with the callback..."

    .line 86
    .line 87
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    const-string p1, "LocalOnlyHotspotCallbackProxy: hotspot stopped"

    .line 92
    .line 93
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->val$callback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStopped()V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    .line 105
    .line 106
    if-nez p1, :cond_4

    .line 107
    .line 108
    const-string p1, "LocalOnlyHotspotCallbackProxy: config cannot be null."

    .line 109
    .line 110
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->val$callback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    .line 114
    .line 115
    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onFailed(I)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->val$callback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    .line 120
    .line 121
    new-instance v2, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 122
    .line 123
    invoke-direct {v2, v0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;-><init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    .line 127
    .line 128
    .line 129
    :goto_0
    return-void
.end method
