.class Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$1;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$1;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->access$000(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartRequest;->newBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartRequest$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$1;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->access$200(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->getHostIp()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartRequest$Builder;->setIpAddress(Ljava/lang/String;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartRequest$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$1;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->access$100(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartRequest$Builder;->setPort(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartRequest$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartRequest$Builder;->build()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartRequest;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$1;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-static {v1, v0, v2}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->access$300(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;[BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$1;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->removeWifiStartRequest()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$1;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->access$400(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)Landroid/os/Handler;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$1;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->access$400(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)Landroid/os/Handler;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$1;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    .line 80
    .line 81
    iget-object v1, v1, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->wifiStartRequest:Ljava/lang/Runnable;

    .line 82
    .line 83
    const-wide/16 v2, 0xbb8

    .line 84
    .line 85
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->access$500()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "wifiStartRequest: mStartProjectionFuture is null"

    .line 94
    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$1;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->sendStartRequestMessage()Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catch_1
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    :cond_1
    :goto_0
    return-void
.end method
