.class Landroid/hardware/camera2/legacy/GLThreadManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/GLThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mCleanup:Z

.field private mConfigured:Z

.field private mDroppingFrames:Z

.field final synthetic this$0:Landroid/hardware/camera2/legacy/GLThreadManager;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/legacy/GLThreadManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mCleanup:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mConfigured:Z

    .line 10
    .line 11
    iput-boolean p1, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mDroppingFrames:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1
    const-string v0, "Unhandled message "

    .line 2
    .line 3
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mCleanup:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-eq v1, v3, :cond_8

    .line 13
    .line 14
    if-eq v1, v2, :cond_7

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    if-eq v1, v3, :cond_4

    .line 18
    .line 19
    const/4 v3, 0x3

    .line 20
    const/4 v4, 0x0

    .line 21
    if-eq v1, v3, :cond_3

    .line 22
    .line 23
    const/4 v3, 0x4

    .line 24
    if-eq v1, v3, :cond_2

    .line 25
    .line 26
    const/4 v3, 0x5

    .line 27
    if-eq v1, v3, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    .line 30
    .line 31
    invoke-static {v1}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$200(Landroid/hardware/camera2/legacy/GLThreadManager;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget p1, p1, Landroid/os/Message;->what:I

    .line 41
    .line 42
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, " on GLThread."

    .line 46
    .line 47
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_1
    iput-boolean v4, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mDroppingFrames:Z

    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :cond_2
    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mDroppingFrames:Z

    .line 64
    .line 65
    goto/16 :goto_0

    .line 66
    .line 67
    :cond_3
    iget-object p1, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    .line 68
    .line 69
    invoke-static {p1}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$000(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->cleanupEGLContext()V

    .line 74
    .line 75
    .line 76
    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mCleanup:Z

    .line 77
    .line 78
    iput-boolean v4, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mConfigured:Z

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    iget-boolean p1, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mDroppingFrames:Z

    .line 82
    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    iget-object p1, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    .line 86
    .line 87
    invoke-static {p1}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$200(Landroid/hardware/camera2/legacy/GLThreadManager;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string v0, "Ignoring frame."

    .line 92
    .line 93
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_5
    iget-boolean p1, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mConfigured:Z

    .line 98
    .line 99
    if-nez p1, :cond_6

    .line 100
    .line 101
    iget-object p1, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    .line 102
    .line 103
    invoke-static {p1}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$200(Landroid/hardware/camera2/legacy/GLThreadManager;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const-string v0, "Dropping frame, EGL context not configured!"

    .line 108
    .line 109
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    :cond_6
    iget-object p1, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    .line 113
    .line 114
    invoke-static {p1}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$000(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    .line 119
    .line 120
    invoke-static {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$100(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->drawIntoSurfaces(Landroid/hardware/camera2/legacy/CaptureCollector;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p1, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;

    .line 131
    .line 132
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    .line 133
    .line 134
    invoke-static {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$000(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->cleanupEGLContext()V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    .line 142
    .line 143
    invoke-static {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$000(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-object v1, p1, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->configureSurfaces(Ljava/util/Collection;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    .line 153
    .line 154
    iget-object v1, p1, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;->collector:Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 155
    .line 156
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    check-cast v1, Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 161
    .line 162
    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$102(Landroid/hardware/camera2/legacy/GLThreadManager;Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 163
    .line 164
    .line 165
    iget-object p1, p1, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;->condition:Landroid/os/ConditionVariable;

    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 168
    .line 169
    .line 170
    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mConfigured:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :catch_0
    move-exception p1

    .line 174
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    .line 175
    .line 176
    invoke-static {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$200(Landroid/hardware/camera2/legacy/GLThreadManager;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    const-string v1, "Received exception on GL render thread: "

    .line 181
    .line 182
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    .line 186
    .line 187
    invoke-static {p1}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$300(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 192
    .line 193
    .line 194
    :cond_8
    :goto_0
    return v2
.end method
