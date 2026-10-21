.class Landroid/net/ConnectivityManager$PacketKeepalive$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ConnectivityManager$PacketKeepalive;-><init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

.field final synthetic val$this$0:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager$PacketKeepalive;Landroid/os/Looper;Landroid/net/ConnectivityManager;)V
    .locals 0

    iput-object p1, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    iput-object p3, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->val$this$0:Landroid/net/ConnectivityManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const v1, 0x8100d

    .line 4
    .line 5
    .line 6
    const-string v2, "PacketKeepalive"

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "Unhandled message "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget p1, p1, Landroid/os/Message;->what:I

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    .line 39
    .line 40
    invoke-static {v1}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$300(Landroid/net/ConnectivityManager$PacketKeepalive;)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    iget-object v1, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    .line 47
    .line 48
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {v1, p1}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$302(Landroid/net/ConnectivityManager$PacketKeepalive;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    .line 58
    .line 59
    invoke-static {p1}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$400(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;->onStarted()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object p1, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-static {p1, v1}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$302(Landroid/net/ConnectivityManager$PacketKeepalive;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/net/ConnectivityManager$PacketKeepalive;->stopLooper()V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    .line 79
    .line 80
    invoke-static {p1}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$400(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;->onStopped()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    iget-object p1, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/net/ConnectivityManager$PacketKeepalive;->stopLooper()V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    .line 94
    .line 95
    invoke-static {p1}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$400(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;->onError(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_0
    move-exception p1

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v3, "Exception in keepalive callback("

    .line 107
    .line 108
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v0, ")"

    .line 115
    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .line 125
    .line 126
    :goto_0
    return-void
.end method
