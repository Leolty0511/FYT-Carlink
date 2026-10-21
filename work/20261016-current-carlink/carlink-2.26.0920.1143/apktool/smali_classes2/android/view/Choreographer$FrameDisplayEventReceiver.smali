.class final Landroid/view/Choreographer$FrameDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FrameDisplayEventReceiver"
.end annotation


# instance fields
.field private mFrame:I

.field private mHavePendingVsync:Z

.field private mTimestampNanos:J

.field final synthetic this$0:Landroid/view/Choreographer;


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;Landroid/os/Looper;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onVsync(JII)V
    .locals 4

    .line 1
    const-string v0, "Choreographer"

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-string p1, "Received vsync from secondary display, but we don\'t support this case yet.  Choreographer needs a way to explicitly request vsync for a specific display to ensure it doesn\'t lose track of its scheduled vsync."

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/DisplayEventReceiver;->scheduleVsync()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    cmp-long p3, p1, v1

    .line 19
    .line 20
    if-lez p3, :cond_1

    .line 21
    .line 22
    new-instance p3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v3, "Frame time is "

    .line 25
    .line 26
    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sub-long/2addr p1, v1

    .line 30
    long-to-float p1, p1

    .line 31
    const p2, 0x358637bd    # 1.0E-6f

    .line 32
    .line 33
    .line 34
    mul-float/2addr p1, p2

    .line 35
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " ms in the future!  Check that graphics HAL is generating vsync timestamps using the correct timebase."

    .line 39
    .line 40
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-wide p1, v1

    .line 51
    :cond_1
    iget-boolean p3, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mHavePendingVsync:Z

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    if-eqz p3, :cond_2

    .line 55
    .line 56
    const-string p3, "Already have a pending vsync event.  There should only be one at a time."

    .line 57
    .line 58
    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iput-boolean v1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mHavePendingVsync:Z

    .line 63
    .line 64
    :goto_0
    iput-wide p1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mTimestampNanos:J

    .line 65
    .line 66
    iput p4, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mFrame:I

    .line 67
    .line 68
    iget-object p3, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    .line 69
    .line 70
    invoke-static {p3}, Landroid/view/Choreographer;->access$300(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-static {p3, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-virtual {p3, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 79
    .line 80
    .line 81
    iget-object p4, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    .line 82
    .line 83
    invoke-static {p4}, Landroid/view/Choreographer;->access$300(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;

    .line 84
    .line 85
    .line 86
    move-result-object p4

    .line 87
    const-wide/32 v0, 0xf4240

    .line 88
    .line 89
    .line 90
    div-long/2addr p1, v0

    .line 91
    invoke-virtual {p4, p3, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mHavePendingVsync:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    .line 5
    .line 6
    iget-wide v1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mTimestampNanos:J

    .line 7
    .line 8
    iget v3, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mFrame:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->doFrame(JI)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
