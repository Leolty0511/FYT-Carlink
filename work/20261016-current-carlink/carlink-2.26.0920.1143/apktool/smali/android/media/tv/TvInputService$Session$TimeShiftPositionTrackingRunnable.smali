.class final Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TimeShiftPositionTrackingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService$Session;


# direct methods
.method private constructor <init>(Landroid/media/tv/TvInputService$Session;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/TvInputService$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;-><init>(Landroid/media/tv/TvInputService$Session;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/tv/TvInputService$Session;->onTimeShiftGetStartPosition()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 8
    .line 9
    invoke-static {v2}, Landroid/media/tv/TvInputService$Session;->access$900(Landroid/media/tv/TvInputService$Session;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    const-wide/high16 v4, -0x8000000000000000L

    .line 14
    .line 15
    cmp-long v2, v2, v4

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 20
    .line 21
    invoke-static {v2}, Landroid/media/tv/TvInputService$Session;->access$900(Landroid/media/tv/TvInputService$Session;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    cmp-long v2, v2, v0

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    :cond_0
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 30
    .line 31
    invoke-static {v2, v0, v1}, Landroid/media/tv/TvInputService$Session;->access$902(Landroid/media/tv/TvInputService$Session;J)J

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 35
    .line 36
    invoke-static {v2, v0, v1}, Landroid/media/tv/TvInputService$Session;->access$1000(Landroid/media/tv/TvInputService$Session;J)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/media/tv/TvInputService$Session;->onTimeShiftGetCurrentPosition()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 46
    .line 47
    invoke-static {v2}, Landroid/media/tv/TvInputService$Session;->access$900(Landroid/media/tv/TvInputService$Session;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    cmp-long v2, v0, v2

    .line 52
    .line 53
    if-gez v2, :cond_2

    .line 54
    .line 55
    const-string v2, "Current position ("

    .line 56
    .line 57
    const-string v3, ") cannot be earlier than start position ("

    .line 58
    .line 59
    invoke-static {v2, v0, v1, v3}, Landroid/app/m;->l(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 64
    .line 65
    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->access$900(Landroid/media/tv/TvInputService$Session;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v1

    .line 69
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, "). Reset to the start position."

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string v1, "TvInputService"

    .line 82
    .line 83
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 87
    .line 88
    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->access$900(Landroid/media/tv/TvInputService$Session;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v0

    .line 92
    :cond_2
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 93
    .line 94
    invoke-static {v2}, Landroid/media/tv/TvInputService$Session;->access$1100(Landroid/media/tv/TvInputService$Session;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v2

    .line 98
    cmp-long v2, v2, v4

    .line 99
    .line 100
    if-eqz v2, :cond_3

    .line 101
    .line 102
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 103
    .line 104
    invoke-static {v2}, Landroid/media/tv/TvInputService$Session;->access$1100(Landroid/media/tv/TvInputService$Session;)J

    .line 105
    .line 106
    .line 107
    move-result-wide v2

    .line 108
    cmp-long v2, v2, v0

    .line 109
    .line 110
    if-eqz v2, :cond_4

    .line 111
    .line 112
    :cond_3
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 113
    .line 114
    invoke-static {v2, v0, v1}, Landroid/media/tv/TvInputService$Session;->access$1102(Landroid/media/tv/TvInputService$Session;J)J

    .line 115
    .line 116
    .line 117
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 118
    .line 119
    invoke-static {v2, v0, v1}, Landroid/media/tv/TvInputService$Session;->access$1200(Landroid/media/tv/TvInputService$Session;J)V

    .line 120
    .line 121
    .line 122
    :cond_4
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 123
    .line 124
    iget-object v1, v0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    .line 125
    .line 126
    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->access$1300(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 134
    .line 135
    iget-object v1, v0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    .line 136
    .line 137
    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->access$1300(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const-wide/16 v2, 0x3e8

    .line 142
    .line 143
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    .line 145
    .line 146
    return-void
.end method
