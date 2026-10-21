.class Lcom/google/android/projection/sink/ui/MainActivity$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mInGesture:Z

.field final synthetic this$0:Lcom/google/android/projection/sink/ui/MainActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$11;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$11;->mInGesture:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-ne p1, v1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$11;->mInGesture:Z

    .line 14
    .line 15
    :cond_0
    return v1

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$11;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$900(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/settings/Settings;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/android/projection/sink/settings/Settings;->isDebugMode()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$11;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$1100(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/ui/TestTools;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    add-int/lit8 p1, p1, -0x14

    .line 51
    .line 52
    int-to-float p1, p1

    .line 53
    cmpl-float p1, v0, p1

    .line 54
    .line 55
    if-ltz p1, :cond_3

    .line 56
    .line 57
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_3

    .line 62
    .line 63
    iput-boolean v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$11;->mInGesture:Z

    .line 64
    .line 65
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$11;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$1100(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/ui/TestTools;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/google/android/projection/sink/ui/TestTools;->toggleDebugToolbarVisibility()V

    .line 72
    .line 73
    .line 74
    return v1

    .line 75
    :cond_3
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$11;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$900(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/settings/Settings;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/google/android/projection/sink/settings/Settings;->isTouchScreenEnabled()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_7

    .line 86
    .line 87
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$11;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$600(Lcom/google/android/projection/sink/ui/MainActivity;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    monitor-enter p1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$11;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 95
    .line 96
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$700(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/GalIntegration;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$11;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 103
    .line 104
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$800(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0, p2}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->transformMotion(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget-object v2, p0, Lcom/google/android/projection/sink/ui/MainActivity$11;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 113
    .line 114
    invoke-static {v2}, Lcom/google/android/projection/sink/ui/MainActivity;->access$1900(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/video/VideoLatencyChecker;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    if-eqz v2, :cond_4

    .line 119
    .line 120
    iget-object v2, p0, Lcom/google/android/projection/sink/ui/MainActivity$11;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 121
    .line 122
    invoke-static {v2}, Lcom/google/android/projection/sink/ui/MainActivity;->access$1900(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/video/VideoLatencyChecker;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v2, p2}, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->onInputEvent(Landroid/view/MotionEvent;)V

    .line 127
    .line 128
    .line 129
    :cond_4
    iget-object v2, p0, Lcom/google/android/projection/sink/ui/MainActivity$11;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 130
    .line 131
    invoke-static {v2}, Lcom/google/android/projection/sink/ui/MainActivity;->access$2000(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    if-eqz v2, :cond_5

    .line 136
    .line 137
    iget-object v2, p0, Lcom/google/android/projection/sink/ui/MainActivity$11;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 138
    .line 139
    invoke-static {v2}, Lcom/google/android/projection/sink/ui/MainActivity;->access$2000(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v2, p2}, Lcom/google/android/projection/sink/audio/AudioLatencyChecker;->onInputEvent(Landroid/view/MotionEvent;)V

    .line 144
    .line 145
    .line 146
    :cond_5
    iget-object p2, p0, Lcom/google/android/projection/sink/ui/MainActivity$11;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 147
    .line 148
    invoke-static {p2}, Lcom/google/android/projection/sink/ui/MainActivity;->access$700(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/GalIntegration;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    iget-object p2, p2, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 153
    .line 154
    invoke-virtual {p2, v0}, Lcom/google/android/projection/protocol/InputSource;->sendTouchEvent(Landroid/view/MotionEvent;)Z

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 158
    .line 159
    .line 160
    :cond_6
    monitor-exit p1

    .line 161
    goto :goto_0

    .line 162
    :catchall_0
    move-exception p2

    .line 163
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    throw p2

    .line 165
    :cond_7
    :goto_0
    return v1
.end method
