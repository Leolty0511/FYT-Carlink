.class Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->processRequestTriggers(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

.field final synthetic val$afMode:Ljava/lang/String;

.field final synthetic val$currentAfRun:I


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    iput p2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$currentAfRun:I

    iput-object p3, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$afMode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 5

    .line 1
    const-string/jumbo p2, "onAutoFocus - got unexpected onAutoFocus in mode "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "onAutoFocusMoving - ignoring move callbacks from old af run"

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$000(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    .line 15
    .line 16
    invoke-static {v2}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$100(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget v3, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$currentAfRun:I

    .line 21
    .line 22
    if-eq v3, v2, :cond_0

    .line 23
    .line 24
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$200()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$currentAfRun:I

    .line 34
    .line 35
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    monitor-exit v1

    .line 46
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    move p1, v0

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 p1, 0x2

    .line 53
    :goto_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$afMode:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const v4, -0xb99cbc3

    .line 60
    .line 61
    .line 62
    if-eq v3, v4, :cond_3

    .line 63
    .line 64
    const v4, 0x363d9440

    .line 65
    .line 66
    .line 67
    if-eq v3, v4, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const-string v3, "continuous-picture"

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    const-string v3, "continuous-video"

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_4

    .line 87
    .line 88
    move v2, v0

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    :goto_1
    const/4 v2, -0x1

    .line 91
    :goto_2
    if-eqz v2, :cond_5

    .line 92
    .line 93
    if-eq v2, v0, :cond_5

    .line 94
    .line 95
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$200()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object p2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$afMode:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    :cond_5
    iget-object p2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    .line 117
    .line 118
    invoke-static {p2, p1}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$302(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;I)I

    .line 119
    .line 120
    .line 121
    monitor-exit v1

    .line 122
    return-void

    .line 123
    :catchall_0
    move-exception p1

    .line 124
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    throw p1
.end method
