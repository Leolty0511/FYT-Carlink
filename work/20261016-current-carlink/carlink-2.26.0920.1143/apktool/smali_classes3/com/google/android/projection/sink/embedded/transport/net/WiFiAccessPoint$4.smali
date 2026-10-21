.class Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$4;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->initialize(Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

.field final synthetic val$accessPointUpFuture:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic val$executorService:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

.field final synthetic val$handleApOpened:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;Ljava/lang/Runnable;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$4;->this$0:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    iput-object p2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$4;->val$executorService:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    iput-object p3, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$4;->val$handleApOpened:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$4;->val$accessPointUpFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    const-string p1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    const-string p1, "wifi_state"

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->access$000()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "wifiState  ==== "

    .line 29
    .line 30
    const-string v2, " aciton:"

    .line 31
    .line 32
    invoke-static {v1, p1, v2}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    packed-switch p1, :pswitch_data_0

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->access$000()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v1, "Got new AP state "

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v0, "Failed to bring up AP: "

    .line 78
    .line 79
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v0, "wifi_ap_error_code"

    .line 83
    .line 84
    const/4 v1, -0x1

    .line 85
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->access$000()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    iget-object p2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$4;->val$accessPointUpFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 104
    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    .line 106
    .line 107
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$4;->this$0:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    .line 115
    .line 116
    iget-object p1, p1, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->handleAp:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 117
    .line 118
    if-eqz p1, :cond_1

    .line 119
    .line 120
    const/4 p2, 0x1

    .line 121
    invoke-interface {p1, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 122
    .line 123
    .line 124
    :cond_1
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$4;->this$0:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    .line 125
    .line 126
    iget-object p2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$4;->val$executorService:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    .line 127
    .line 128
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$4;->val$handleApOpened:Ljava/lang/Runnable;

    .line 129
    .line 130
    const-wide/16 v1, 0x50

    .line 131
    .line 132
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 133
    .line 134
    invoke-interface {p2, v0, v1, v2, v3}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    iput-object p2, p1, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->handleAp:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :pswitch_2
    invoke-static {}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->access$000()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    const-string p2, "AP is coming up"

    .line 146
    .line 147
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    :cond_2
    :goto_0
    :pswitch_3
    return-void

    .line 151
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
