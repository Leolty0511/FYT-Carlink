.class Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


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

    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    iput p2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$currentAfRun:I

    iput-object p3, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$afMode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 7

    .line 1
    const-string/jumbo p2, "onAutoFocus - got unexpected onAutoFocus in mode "

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    .line 5
    .line 6
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$000(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$100(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$currentAfRun:I

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x1

    .line 21
    const/4 v5, 0x2

    .line 22
    if-eq v1, v2, :cond_0

    .line 23
    .line 24
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$200()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string/jumbo p2, "onAutoFocus - ignoring AF callback (old run %d, new run %d)"

    .line 29
    .line 30
    .line 31
    new-array v2, v5, [Ljava/lang/Object;

    .line 32
    .line 33
    iget v5, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$currentAfRun:I

    .line 34
    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    aput-object v5, v2, v3

    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    aput-object v1, v2, v4

    .line 46
    .line 47
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :cond_0
    if-eqz p1, :cond_1

    .line 57
    .line 58
    const/4 p1, 0x4

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 p1, 0x5

    .line 61
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$afMode:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    const/4 v6, 0x3

    .line 68
    sparse-switch v2, :sswitch_data_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :sswitch_0
    const-string v2, "continuous-picture"

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    move v3, v4

    .line 81
    goto :goto_2

    .line 82
    :sswitch_1
    const-string/jumbo v2, "macro"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    move v3, v6

    .line 92
    goto :goto_2

    .line 93
    :sswitch_2
    const-string v2, "auto"

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :sswitch_3
    const-string v2, "continuous-video"

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_2

    .line 109
    .line 110
    move v3, v5

    .line 111
    goto :goto_2

    .line 112
    :cond_2
    :goto_1
    const/4 v3, -0x1

    .line 113
    :goto_2
    if-eqz v3, :cond_3

    .line 114
    .line 115
    if-eq v3, v4, :cond_3

    .line 116
    .line 117
    if-eq v3, v5, :cond_3

    .line 118
    .line 119
    if-eq v3, v6, :cond_3

    .line 120
    .line 121
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$200()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object p2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$afMode:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    :cond_3
    iget-object p2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    .line 143
    .line 144
    invoke-static {p2, p1}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$302(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;I)I

    .line 145
    .line 146
    .line 147
    monitor-exit v0

    .line 148
    return-void

    .line 149
    :catchall_0
    move-exception p1

    .line 150
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    throw p1

    .line 152
    nop

    .line 153
    :sswitch_data_0
    .sparse-switch
        -0xb99cbc3 -> :sswitch_3
        0x2dddaf -> :sswitch_2
        0x62d9bcc -> :sswitch_1
        0x363d9440 -> :sswitch_0
    .end sparse-switch
.end method
