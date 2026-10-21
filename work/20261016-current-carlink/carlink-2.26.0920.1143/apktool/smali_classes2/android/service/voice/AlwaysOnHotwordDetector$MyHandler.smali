.class Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AlwaysOnHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/AlwaysOnHotwordDetector;


# direct methods
.method public constructor <init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V
    .locals 0

    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    const-string v0, "Received message: "

    .line 2
    .line 3
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$100(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    .line 11
    .line 12
    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$200(Landroid/service/voice/AlwaysOnHotwordDetector;)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, -0x3

    .line 17
    if-ne v2, v3, :cond_0

    .line 18
    .line 19
    const-string v2, "AlwaysOnHotwordDetector"

    .line 20
    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget p1, p1, Landroid/os/Message;->what:I

    .line 27
    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, " for an invalid detector"

    .line 32
    .line 33
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    monitor-exit v1

    .line 44
    return-void

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    if-eq v0, v1, :cond_5

    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    if-eq v0, v1, :cond_4

    .line 53
    .line 54
    const/4 v1, 0x3

    .line 55
    if-eq v0, v1, :cond_3

    .line 56
    .line 57
    const/4 v1, 0x4

    .line 58
    if-eq v0, v1, :cond_2

    .line 59
    .line 60
    const/4 v1, 0x5

    .line 61
    if-eq v0, v1, :cond_1

    .line 62
    .line 63
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    .line 68
    .line 69
    invoke-static {p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$300(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onRecognitionResumed()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    iget-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    .line 78
    .line 79
    invoke-static {p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$300(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onRecognitionPaused()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    iget-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    .line 88
    .line 89
    invoke-static {p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$300(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onError()V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    .line 98
    .line 99
    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$300(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p1, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onDetected(Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_5
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    .line 112
    .line 113
    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$300(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 118
    .line 119
    invoke-virtual {v0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onAvailabilityChanged(I)V

    .line 120
    .line 121
    .line 122
    :goto_0
    return-void

    .line 123
    :catchall_0
    move-exception p1

    .line 124
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    throw p1
.end method
