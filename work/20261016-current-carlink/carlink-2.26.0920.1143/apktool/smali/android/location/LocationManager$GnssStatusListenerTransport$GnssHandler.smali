.class Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager$GnssStatusListenerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GnssHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_5

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_4

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_3

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p1, v0, :cond_2

    .line 14
    .line 15
    const/16 v0, 0x3e8

    .line 16
    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 22
    .line 23
    invoke-static {p1}, Landroid/location/LocationManager$GnssStatusListenerTransport;->access$200(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    monitor-enter p1

    .line 28
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 29
    .line 30
    invoke-static {v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;->access$200(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x0

    .line 39
    :goto_0
    if-ge v1, v0, :cond_1

    .line 40
    .line 41
    iget-object v2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 42
    .line 43
    invoke-static {v2}, Landroid/location/LocationManager$GnssStatusListenerTransport;->access$200(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;

    .line 52
    .line 53
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 54
    .line 55
    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->access$300(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/OnNmeaMessageListener;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    iget-object v4, v2, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;->mNmea:Ljava/lang/String;

    .line 60
    .line 61
    iget-wide v5, v2, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;->mTimestamp:J

    .line 62
    .line 63
    invoke-interface {v3, v4, v5, v6}, Landroid/location/OnNmeaMessageListener;->onNmeaMessage(Ljava/lang/String;J)V

    .line 64
    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 70
    .line 71
    invoke-static {v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;->access$200(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 76
    .line 77
    .line 78
    monitor-exit p1

    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw v0

    .line 83
    :cond_2
    iget-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 84
    .line 85
    invoke-static {p1}, Landroid/location/LocationManager$GnssStatusListenerTransport;->access$400(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 90
    .line 91
    iget-object v0, v0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    .line 92
    .line 93
    invoke-static {v0}, Landroid/location/LocationManager;->access$600(Landroid/location/LocationManager;)Landroid/location/GnssStatus;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus$Callback;->onSatelliteStatusChanged(Landroid/location/GnssStatus;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    iget-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 102
    .line 103
    invoke-static {p1}, Landroid/location/LocationManager$GnssStatusListenerTransport;->access$400(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 108
    .line 109
    iget-object v0, v0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    .line 110
    .line 111
    invoke-static {v0}, Landroid/location/LocationManager;->access$500(Landroid/location/LocationManager;)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus$Callback;->onFirstFix(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    iget-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 120
    .line 121
    invoke-static {p1}, Landroid/location/LocationManager$GnssStatusListenerTransport;->access$400(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1}, Landroid/location/GnssStatus$Callback;->onStopped()V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    iget-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 130
    .line 131
    invoke-static {p1}, Landroid/location/LocationManager$GnssStatusListenerTransport;->access$400(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1}, Landroid/location/GnssStatus$Callback;->onStarted()V

    .line 136
    .line 137
    .line 138
    :goto_1
    return-void
.end method
