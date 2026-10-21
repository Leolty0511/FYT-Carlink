.class Landroid/os/CountDownTimer$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CountDownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>(Landroid/os/CountDownTimer;)V
    .locals 0

    iput-object p1, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget-object p1, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    .line 5
    .line 6
    invoke-static {v0}, Landroid/os/CountDownTimer;->access$000(Landroid/os/CountDownTimer;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    monitor-exit p1

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/os/CountDownTimer;->access$100(Landroid/os/CountDownTimer;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    sub-long/2addr v0, v2

    .line 25
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    cmp-long v4, v0, v2

    .line 28
    .line 29
    if-gtz v4, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->onFinish()V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    .line 42
    .line 43
    invoke-virtual {v6, v0, v1}, Landroid/os/CountDownTimer;->onTick(J)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    sub-long/2addr v6, v4

    .line 51
    iget-object v4, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    .line 52
    .line 53
    invoke-static {v4}, Landroid/os/CountDownTimer;->access$200(Landroid/os/CountDownTimer;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    cmp-long v4, v0, v4

    .line 58
    .line 59
    if-gez v4, :cond_3

    .line 60
    .line 61
    sub-long/2addr v0, v6

    .line 62
    cmp-long v4, v0, v2

    .line 63
    .line 64
    if-gez v4, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move-wide v2, v0

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    iget-object v0, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    .line 70
    .line 71
    invoke-static {v0}, Landroid/os/CountDownTimer;->access$200(Landroid/os/CountDownTimer;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    sub-long/2addr v0, v6

    .line 76
    :goto_0
    cmp-long v4, v0, v2

    .line 77
    .line 78
    if-gez v4, :cond_2

    .line 79
    .line 80
    iget-object v4, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    .line 81
    .line 82
    invoke-static {v4}, Landroid/os/CountDownTimer;->access$200(Landroid/os/CountDownTimer;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    add-long/2addr v0, v4

    .line 87
    goto :goto_0

    .line 88
    :goto_1
    const/4 v0, 0x1

    .line 89
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 94
    .line 95
    .line 96
    :goto_2
    monitor-exit p1

    .line 97
    return-void

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    throw v0
.end method
