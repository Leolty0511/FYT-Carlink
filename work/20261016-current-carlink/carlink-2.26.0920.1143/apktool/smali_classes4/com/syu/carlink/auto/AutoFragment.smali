.class public Lcom/syu/carlink/auto/AutoFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/transport/TransportFactory$Callback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation


# static fields
.field public static final synthetic P:I


# instance fields
.field public final A:Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

.field public final B:Lf/o;

.field public final C:Lf/t;

.field public final D:Lcom/google/android/projection/sink/audio/AudioPlayer;

.field public final E:Lcom/google/android/projection/sink/audio/AudioPlayer;

.field public final F:Lcom/google/android/projection/sink/audio/AudioPlayer;

.field public volatile G:Z

.field public volatile H:I

.field public I:Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

.field public final J:Lf/x;

.field public final K:Lf/y;

.field public final L:Lf/z;

.field public final M:Lf/b0;

.field public final N:Lf/c0;

.field public final O:Lf/d0;

.field public final b:Ljava/lang/Object;

.field public c:Lcom/google/android/projection/sink/settings/Settings;

.field public d:Lcom/google/android/projection/protocol/Transport;

.field public e:Lcom/google/android/projection/sink/GalIntegration;

.field public f:Lcom/google/android/projection/sink/audio/AudioFocusManager;

.field public g:Lcom/google/android/projection/sink/navigation/NavigationFocusManager;

.field public h:Lcom/google/android/projection/sink/video/ProjectionRenderer;

.field public i:Landroid/view/SurfaceView;

.field public j:Landroid/view/View;

.field public k:Lcom/google/android/projection/sink/sensors/SensorManager;

.field public l:Lcom/google/android/projection/sink/sensors/TabletSensors;

.field public m:Lcom/google/android/projection/sink/debug/DebugContext;

.field public n:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

.field public o:Z

.field public p:Le/b;

.field public final q:Landroid/os/Handler;

.field public r:Landroid/media/AudioManager;

.field public s:I

.field public final t:Lf/a0;

.field public u:I

.field public final v:Lf/g0;

.field public w:I

.field public final x:Lf/h0;

.field public y:Landroid/content/BroadcastReceiver;

.field public final z:Lcom/google/android/projection/sink/video/VideoLatencyChecker;


# direct methods
.method public constructor <init>()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->b:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, v0, Lcom/syu/carlink/auto/AutoFragment;->o:Z

    .line 15
    .line 16
    new-instance v2, Landroid/os/Handler;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    .line 24
    .line 25
    iput-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->q:Landroid/os/Handler;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    iput-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->r:Landroid/media/AudioManager;

    .line 29
    .line 30
    const/4 v2, -0x1

    .line 31
    iput v2, v0, Lcom/syu/carlink/auto/AutoFragment;->s:I

    .line 32
    .line 33
    new-instance v3, Lf/a0;

    .line 34
    .line 35
    invoke-direct {v3, v0}, Lf/a0;-><init>(Lcom/syu/carlink/auto/AutoFragment;)V

    .line 36
    .line 37
    .line 38
    iput-object v3, v0, Lcom/syu/carlink/auto/AutoFragment;->t:Lf/a0;

    .line 39
    .line 40
    iput v2, v0, Lcom/syu/carlink/auto/AutoFragment;->u:I

    .line 41
    .line 42
    new-instance v3, Lf/g0;

    .line 43
    .line 44
    invoke-direct {v3}, Lf/g0;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v3, v0, Lcom/syu/carlink/auto/AutoFragment;->v:Lf/g0;

    .line 48
    .line 49
    iput v2, v0, Lcom/syu/carlink/auto/AutoFragment;->w:I

    .line 50
    .line 51
    new-instance v2, Lf/h0;

    .line 52
    .line 53
    invoke-direct {v2}, Lf/h0;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->x:Lf/h0;

    .line 57
    .line 58
    new-instance v2, Lcom/google/android/projection/sink/video/VideoLatencyChecker;

    .line 59
    .line 60
    invoke-direct {v2}, Lcom/google/android/projection/sink/video/VideoLatencyChecker;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->z:Lcom/google/android/projection/sink/video/VideoLatencyChecker;

    .line 64
    .line 65
    new-instance v8, Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

    .line 66
    .line 67
    invoke-direct {v8}, Lcom/google/android/projection/sink/audio/AudioLatencyChecker;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v8, v0, Lcom/syu/carlink/auto/AutoFragment;->A:Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

    .line 71
    .line 72
    new-instance v2, Lf/o;

    .line 73
    .line 74
    invoke-direct {v2, v0}, Lf/o;-><init>(Lcom/syu/carlink/auto/AutoFragment;)V

    .line 75
    .line 76
    .line 77
    iput-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->B:Lf/o;

    .line 78
    .line 79
    new-instance v2, Lf/t;

    .line 80
    .line 81
    invoke-direct {v2, v0}, Lf/t;-><init>(Lcom/syu/carlink/auto/AutoFragment;)V

    .line 82
    .line 83
    .line 84
    iput-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->C:Lf/t;

    .line 85
    .line 86
    new-instance v2, Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 87
    .line 88
    const/4 v4, 0x3

    .line 89
    const v5, 0xbb80

    .line 90
    .line 91
    .line 92
    const/16 v6, 0xc

    .line 93
    .line 94
    const/4 v13, 0x2

    .line 95
    const/4 v7, 0x2

    .line 96
    move-object v3, v2

    .line 97
    invoke-direct/range {v3 .. v8}, Lcom/google/android/projection/sink/audio/AudioPlayer;-><init>(IIIILcom/google/android/projection/sink/audio/AudioLatencyChecker;)V

    .line 98
    .line 99
    .line 100
    iput-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->D:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 101
    .line 102
    new-instance v2, Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 103
    .line 104
    const/4 v15, 0x0

    .line 105
    const/16 v16, 0x3e80

    .line 106
    .line 107
    const/16 v17, 0x4

    .line 108
    .line 109
    const/16 v18, 0x2

    .line 110
    .line 111
    const/16 v19, 0x0

    .line 112
    .line 113
    move-object v14, v2

    .line 114
    invoke-direct/range {v14 .. v19}, Lcom/google/android/projection/sink/audio/AudioPlayer;-><init>(IIIILcom/google/android/projection/sink/audio/AudioLatencyChecker;)V

    .line 115
    .line 116
    .line 117
    iput-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->E:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 118
    .line 119
    new-instance v2, Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 120
    .line 121
    const/4 v10, 0x5

    .line 122
    const/16 v11, 0x3e80

    .line 123
    .line 124
    const/4 v12, 0x4

    .line 125
    const/4 v14, 0x0

    .line 126
    move-object v9, v2

    .line 127
    invoke-direct/range {v9 .. v14}, Lcom/google/android/projection/sink/audio/AudioPlayer;-><init>(IIIILcom/google/android/projection/sink/audio/AudioLatencyChecker;)V

    .line 128
    .line 129
    .line 130
    iput-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->F:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 131
    .line 132
    iput-boolean v1, v0, Lcom/syu/carlink/auto/AutoFragment;->G:Z

    .line 133
    .line 134
    sget-object v1, Lcom/google/android/projection/proto/Protos$NavigationStatus$NavigationStatusEnum;->UNAVAILABLE:Lcom/google/android/projection/proto/Protos$NavigationStatus$NavigationStatusEnum;

    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$NavigationStatus$NavigationStatusEnum;->getNumber()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    iput v1, v0, Lcom/syu/carlink/auto/AutoFragment;->H:I

    .line 141
    .line 142
    new-instance v1, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    .line 143
    .line 144
    invoke-direct {v1}, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->I:Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    .line 148
    .line 149
    new-instance v1, Lf/x;

    .line 150
    .line 151
    invoke-direct {v1, v0}, Lf/x;-><init>(Lcom/syu/carlink/auto/AutoFragment;)V

    .line 152
    .line 153
    .line 154
    iput-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->J:Lf/x;

    .line 155
    .line 156
    new-instance v1, Lf/y;

    .line 157
    .line 158
    invoke-direct {v1, v0}, Lf/y;-><init>(Lcom/syu/carlink/auto/AutoFragment;)V

    .line 159
    .line 160
    .line 161
    iput-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->K:Lf/y;

    .line 162
    .line 163
    new-instance v1, Lf/z;

    .line 164
    .line 165
    invoke-direct {v1, v0}, Lf/z;-><init>(Lcom/syu/carlink/auto/AutoFragment;)V

    .line 166
    .line 167
    .line 168
    iput-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->L:Lf/z;

    .line 169
    .line 170
    new-instance v1, Lf/b0;

    .line 171
    .line 172
    invoke-direct {v1}, Lf/b0;-><init>()V

    .line 173
    .line 174
    .line 175
    iput-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->M:Lf/b0;

    .line 176
    .line 177
    new-instance v1, Lf/c0;

    .line 178
    .line 179
    invoke-direct {v1, v0}, Lf/c0;-><init>(Lcom/syu/carlink/auto/AutoFragment;)V

    .line 180
    .line 181
    .line 182
    iput-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->N:Lf/c0;

    .line 183
    .line 184
    new-instance v1, Lf/d0;

    .line 185
    .line 186
    invoke-direct {v1, v0}, Lf/d0;-><init>(Lcom/syu/carlink/auto/AutoFragment;)V

    .line 187
    .line 188
    .line 189
    iput-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->O:Lf/d0;

    .line 190
    .line 191
    new-instance v1, Lf/e0;

    .line 192
    .line 193
    invoke-direct {v1, v0}, Lf/e0;-><init>(Lcom/syu/carlink/auto/AutoFragment;)V

    .line 194
    .line 195
    .line 196
    return-void
.end method

.method public static a(Lcom/syu/carlink/auto/AutoFragment;ILjava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "AHU.MAIN_ACTIVITY"

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/syu/carlink/auto/AutoFragment;->d:Lcom/google/android/projection/protocol/Transport;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/syu/carlink/auto/AutoFragment;->i:Landroid/view/SurfaceView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/syu/carlink/auto/AutoFragment;->i:Landroid/view/SurfaceView;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_1

    .line 29
    .line 30
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/16 v0, 0x14

    .line 35
    .line 36
    if-ge p1, v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/syu/carlink/auto/AutoFragment;->q:Landroid/os/Handler;

    .line 39
    .line 40
    new-instance v1, Lf/v;

    .line 41
    .line 42
    invoke-direct {v1, p0, p1, p2}, Lf/v;-><init>(Lcom/syu/carlink/auto/AutoFragment;ILjava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    const-wide/16 p0, 0x64

    .line 46
    .line 47
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const-string p0, "waitSurfaceReady timeout, connect with fallback metrics"

    .line 52
    .line 53
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    :goto_0
    const-string p0, "waitSurfaceReady aborted, fragment detached or transport gone"

    .line 61
    .line 62
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :goto_1
    return-void
.end method

.method public static d(IIIII)Lcom/google/android/projection/proto/Protos$VideoConfiguration;
    .locals 5

    .line 1
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lg/b;->a()Landroid/util/Size;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v0, v0, Lg/b;->E:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    if-eq v0, v3, :cond_2

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    if-eq v0, v3, :cond_0

    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    move p1, v2

    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_0
    if-lt p0, p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    sub-int/2addr v0, p0

    .line 43
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    sub-int/2addr p0, p1

    .line 48
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    sget-object p1, Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;->VIDEO_2560x1440:Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    sub-int/2addr v0, p0

    .line 60
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    sub-int/2addr v0, p1

    .line 69
    sget-object p1, Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;->VIDEO_1440x2560:Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    if-lt p0, p1, :cond_3

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    sub-int/2addr v0, p0

    .line 79
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    sub-int/2addr p0, p1

    .line 84
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    sget-object p1, Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;->VIDEO_1920x1080:Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    sub-int/2addr v0, p0

    .line 96
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    sub-int/2addr v0, p1

    .line 105
    sget-object p1, Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;->VIDEO_1080x1920:Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    if-lt p0, p1, :cond_5

    .line 109
    .line 110
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    sub-int/2addr v0, p0

    .line 115
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    sub-int/2addr p0, p1

    .line 120
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    sget-object p1, Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;->VIDEO_1280x720:Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;

    .line 125
    .line 126
    :goto_0
    move v2, p0

    .line 127
    move-object p0, p1

    .line 128
    move p1, v2

    .line 129
    move v2, v0

    .line 130
    goto :goto_2

    .line 131
    :cond_5
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    sub-int/2addr v0, p0

    .line 136
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    sub-int/2addr v0, p1

    .line 145
    sget-object p1, Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;->VIDEO_720x1280:Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;

    .line 146
    .line 147
    :goto_1
    move v2, v0

    .line 148
    move-object v4, p1

    .line 149
    move p1, p0

    .line 150
    move-object p0, v4

    .line 151
    move v4, v2

    .line 152
    move v2, p1

    .line 153
    move p1, v4

    .line 154
    :goto_2
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoFrameRateType;->VIDEO_FPS_30:Lcom/google/android/projection/proto/Protos$VideoFrameRateType;

    .line 155
    .line 156
    const/16 v1, 0x3c

    .line 157
    .line 158
    if-lt p4, v1, :cond_6

    .line 159
    .line 160
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoFrameRateType;->VIDEO_FPS_60:Lcom/google/android/projection/proto/Protos$VideoFrameRateType;

    .line 161
    .line 162
    :cond_6
    invoke-static {}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->newBuilder()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    .line 163
    .line 164
    .line 165
    move-result-object p4

    .line 166
    invoke-virtual {p4, p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setCodecResolution(Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setFrameRate(Lcom/google/android/projection/proto/Protos$VideoFrameRateType;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-virtual {p0, v2}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setWidthMargin(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setHeightMargin(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {p0, p2}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setDensity(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-virtual {p0, p3}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setRealDensity(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    const/4 p1, 0x3

    .line 191
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setDecoderAdditionalDepth(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    return-object p0
.end method


# virtual methods
.method public final b(IIII)[I
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v2, "windowWidth: "

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, " windowHeight : "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "HDL"

    .line 27
    .line 28
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "maxWidth: "

    .line 34
    .line 35
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, " maxHeight : "

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    int-to-float p3, p3

    .line 57
    int-to-float p1, p1

    .line 58
    div-float/2addr p3, p1

    .line 59
    int-to-float p4, p4

    .line 60
    int-to-float p2, p2

    .line 61
    div-float/2addr p4, p2

    .line 62
    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    .line 63
    .line 64
    .line 65
    move-result p3

    .line 66
    mul-float/2addr p1, p3

    .line 67
    float-to-int p1, p1

    .line 68
    const/4 p4, 0x0

    .line 69
    aput p1, v0, p4

    .line 70
    .line 71
    mul-float/2addr p2, p3

    .line 72
    float-to-int p1, p2

    .line 73
    const/4 p2, 0x1

    .line 74
    aput p1, v0, p2

    .line 75
    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string p2, "display: "

    .line 79
    .line 80
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    return-object v0
.end method

.method public final c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/syu/carlink/MainActivity;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/syu/carlink/MainActivity;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/syu/carlink/MainActivity;->k()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 2
    .line 3
    const-string v1, "*****************************  requestAudioFocus"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/syu/carlink/auto/AutoFragment;->s:I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/syu/carlink/auto/AutoFragment;->r:Landroid/media/AudioManager;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/syu/carlink/auto/AutoFragment;->t:Lf/a0;

    .line 17
    .line 18
    const/4 v4, 0x3

    .line 19
    invoke-virtual {v1, v3, v4, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, p0, Lcom/syu/carlink/auto/AutoFragment;->s:I

    .line 24
    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/syu/carlink/auto/AutoFragment;->f:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->enablePhoneFocus()V

    .line 30
    .line 31
    .line 32
    const-string v1, " AAuto keyboardController -------->>  true : "

    .line 33
    .line 34
    invoke-static {v0, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v1, Lf/k;->y:Lf/k;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/syu/carlink/CarLinkService;->t(Lg/e;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public final f(Landroid/hardware/usb/UsbDevice;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "startHostMode Start  device : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "AHU.MAIN_ACTIVITY"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    sget-object v0, Lf/k;->y:Lf/k;

    .line 21
    .line 22
    iget-object v0, v0, Lf/k;->j:Landroid/content/Context;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v3, "usb"

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroid/hardware/usb/UsbManager;

    .line 35
    .line 36
    invoke-virtual {v3, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    const-string v4, "no permission for the device. asking user"

    .line 43
    .line 44
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    new-instance v4, Landroid/content/Intent;

    .line 48
    .line 49
    const-string v5, "com.google.android.projection.sink.transport.usb.ACTION_USB_DEVICE_PERMISSION"

    .line 50
    .line 51
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/high16 v5, 0x40000000    # 2.0f

    .line 55
    .line 56
    invoke-static {v0, v2, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v3, p1, v4}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 v2, 0x1

    .line 65
    :goto_0
    if-nez v2, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/syu/carlink/auto/AutoFragment;->c()V

    .line 68
    .line 69
    .line 70
    const-string p1, "startHostMode checkUsbHostPermission failed !!"

    .line 71
    .line 72
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    sget-object v2, Lcom/syu/carlink/UsbScanner;->j:Lcom/syu/carlink/UsbScanner;

    .line 77
    .line 78
    invoke-static {p1}, Le/b;->d(Landroid/hardware/usb/UsbDevice;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_3

    .line 83
    .line 84
    return-void

    .line 85
    :cond_3
    invoke-static {p1, v0}, Lcom/google/android/projection/sink/transport/usb/UsbHostSetup;->processDevice(Landroid/hardware/usb/UsbDevice;Landroid/content/Context;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    :try_start_0
    sget-object v0, Lf/k;->y:Lf/k;

    .line 92
    .line 93
    iget-object v2, v0, Lf/k;->c:Lcom/google/android/projection/transport/TransportFactory;

    .line 94
    .line 95
    invoke-virtual {v2, p1, v0}, Lcom/google/android/projection/transport/TransportFactory;->open(Landroid/os/Parcelable;Lcom/google/android/projection/transport/TransportFactory$Callback;)Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v3, "Failed to start connection with "

    .line 103
    .line 104
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/syu/carlink/auto/AutoFragment;->c()V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_4
    const-string p1, "Not attached to accessory yet"

    .line 122
    .line 123
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    sget-object p1, Lf/k;->y:Lf/k;

    .line 127
    .line 128
    const-wide/16 v0, 0x7d0

    .line 129
    .line 130
    invoke-virtual {p1, v0, v1}, Lf/k;->e(J)V

    .line 131
    .line 132
    .line 133
    :goto_1
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    const-string v0, "***************************** stopAuto nextdelay : true"

    .line 2
    .line 3
    const-string v1, "AHU.MAIN_ACTIVITY"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/syu/carlink/auto/AutoFragment;->N:Lf/c0;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lf/c0;->onByeByeRequest(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->A()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    sget-object v0, Lf/k;->y:Lf/k;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Lg/b;->z:Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    sget-object v0, Lf/k;->y:Lf/k;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v0, v0, Lg/b;->u:Landroidx/lifecycle/MutableLiveData;

    .line 55
    .line 56
    const/4 v2, 0x3

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v0, v0, Lg/b;->s:Landroidx/lifecycle/MutableLiveData;

    .line 71
    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/syu/carlink/auto/AutoFragment;->onDestroy()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/syu/carlink/auto/AutoFragment;->l:Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->galVerificationVendorExtension:Lcom/google/android/projection/protocol/GalVerificationVendorExtension;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->u()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->overrideNightMode(Ljava/lang/Boolean;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "===================>>  updateDayNightMode() CarLink.me.isNightMode() : "

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->u()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "HDL"

    .line 47
    .line 48
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public final onConnected(Lcom/google/android/projection/protocol/Transport;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object p1, p0, Lcom/syu/carlink/auto/AutoFragment;->d:Lcom/google/android/projection/protocol/Transport;

    .line 6
    .line 7
    const-string v1, "AHU.MAIN_ACTIVITY"

    .line 8
    .line 9
    const-string v2, "----------------->>>>> Auto Fragment onConnected"

    .line 10
    .line 11
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 17
    .line 18
    iget-boolean v0, v0, Lcom/syu/carlink/CarLink;->d:Z

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Lf/k;->y:Lf/k;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput-boolean v1, v0, Lf/k;->i:Z

    .line 27
    .line 28
    iput-object p1, p0, Lcom/syu/carlink/auto/AutoFragment;->d:Lcom/google/android/projection/protocol/Transport;

    .line 29
    .line 30
    iget-object p1, p0, Lcom/syu/carlink/auto/AutoFragment;->q:Landroid/os/Handler;

    .line 31
    .line 32
    new-instance v0, Lf/u;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lf/u;-><init>(Lcom/syu/carlink/auto/AutoFragment;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    const-string p1, "----------------->>>>> Auto Fragment onConnected 00"

    .line 42
    .line 43
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    sget-object p1, Lf/k;->y:Lf/k;

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p1, Lf/k;->i:Z

    .line 50
    .line 51
    :goto_1
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    const/16 v0, 0x80

    .line 10
    .line 11
    invoke-virtual {p3, v0}, Landroid/view/Window;->addFlags(I)V

    .line 12
    .line 13
    .line 14
    sget p3, Lcom/google/android/projection/sink/R$layout;->activity_main:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public final onDestroy()V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 14
    .line 15
    const-string v1, "========>>>> called method :"

    .line 16
    .line 17
    const-string v2, "OnDestroy"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "Qin"

    .line 24
    .line 25
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lt/b;->e(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    array-length v1, v0

    .line 32
    const/4 v3, 0x0

    .line 33
    move v4, v3

    .line 34
    :goto_0
    if-ge v4, v1, :cond_0

    .line 35
    .line 36
    aget-object v5, v0, v4

    .line 37
    .line 38
    new-instance v6, Ljava/lang/StringBuffer;

    .line 39
    .line 40
    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v7, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const/16 v8, 0x3a

    .line 56
    .line 57
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v8, ":("

    .line 68
    .line 69
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const/16 v5, 0x29

    .line 80
    .line 81
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    .line 90
    .line 91
    const-string v5, "\n"

    .line 92
    .line 93
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    .line 95
    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v7, "========>>>>"

    .line 99
    .line 100
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    add-int/lit8 v4, v4, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 117
    .line 118
    const-string v1, "*****************************  onDestroy"

    .line 119
    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    sget-object v0, Lf/k;->y:Lf/k;

    .line 124
    .line 125
    iget-object v0, v0, Lf/k;->c:Lcom/google/android/projection/transport/TransportFactory;

    .line 126
    .line 127
    if-eqz v0, :cond_1

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/google/android/projection/transport/TransportFactory;->shutdown()V

    .line 130
    .line 131
    .line 132
    :cond_1
    iget-object v0, p0, Lcom/syu/carlink/auto/AutoFragment;->k:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 133
    .line 134
    const/4 v1, 0x0

    .line 135
    if-eqz v0, :cond_2

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->shutdown()V

    .line 138
    .line 139
    .line 140
    iput-object v1, p0, Lcom/syu/carlink/auto/AutoFragment;->k:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 141
    .line 142
    :cond_2
    iget-object v0, p0, Lcom/syu/carlink/auto/AutoFragment;->m:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 143
    .line 144
    if-eqz v0, :cond_3

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/google/android/projection/sink/debug/DebugContext;->shutdown()V

    .line 147
    .line 148
    .line 149
    iput-object v1, p0, Lcom/syu/carlink/auto/AutoFragment;->m:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 150
    .line 151
    :cond_3
    iget-object v0, p0, Lcom/syu/carlink/auto/AutoFragment;->h:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 152
    .line 153
    if-eqz v0, :cond_4

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->release()V

    .line 156
    .line 157
    .line 158
    :cond_4
    sget-object v0, Lf/k;->y:Lf/k;

    .line 159
    .line 160
    iput-boolean v3, v0, Lf/k;->i:Z

    .line 161
    .line 162
    invoke-virtual {v0}, Lf/k;->n()V

    .line 163
    .line 164
    .line 165
    sget-object v0, Lf/k;->y:Lf/k;

    .line 166
    .line 167
    invoke-virtual {v0}, Lf/k;->i()V

    .line 168
    .line 169
    .line 170
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method public final onDisconnected()V
    .locals 2

    .line 1
    sget-object v0, Lf/k;->y:Lf/k;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lf/k;->i:Z

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/syu/carlink/auto/AutoFragment;->s:I

    .line 8
    .line 9
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 16
    .line 17
    new-instance v1, Lf/w;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lf/w;-><init>(Lcom/syu/carlink/auto/AutoFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onPause()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/syu/carlink/auto/AutoFragment;->h:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->isStarted()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayVideoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 17
    .line 18
    sget v1, Lcom/google/android/projection/protocol/VideoSink;->VIDEO_FOCUS_NATIVE:I

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/projection/protocol/VideoSink;->setVideoFocus(IIZ)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/syu/carlink/CarLink;->m()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/16 v2, 0xa

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/syu/carlink/CarLinkService;->h(IZ)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 v0, 0x2

    .line 28
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "value"

    .line 33
    .line 34
    invoke-static {v2, v3}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v4, "sys.carlink.type"

    .line 38
    .line 39
    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/syu/carlink/auto/AutoFragment;->h:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 43
    .line 44
    const-string v5, "AHU.MAIN_ACTIVITY"

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->isStarted()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0, v3}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayVideoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 67
    .line 68
    sget v2, Lcom/google/android/projection/protocol/VideoSink;->VIDEO_FOCUS_PROJECTED:I

    .line 69
    .line 70
    const/4 v3, -0x1

    .line 71
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/projection/protocol/VideoSink;->setVideoFocus(IIZ)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/syu/carlink/auto/AutoFragment;->f:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->enablePhoneFocus()V

    .line 77
    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v1, "=================>>> AutoFragment onResume mAudioFocusManager isCarPlayingMusic :"

    .line 82
    .line 83
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/syu/carlink/auto/AutoFragment;->f:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->isCarPlayingMusic()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v1, "----------------->>>>> Auto Fragment onResume isNeedConnect :"

    .line 105
    .line 106
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    sget-object v1, Lf/k;->y:Lf/k;

    .line 110
    .line 111
    iget-boolean v1, v1, Lf/k;->i:Z

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, " mTransport : "

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/syu/carlink/auto/AutoFragment;->d:Lcom/google/android/projection/protocol/Transport;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    sget-object v0, Lf/k;->y:Lf/k;

    .line 134
    .line 135
    iget-boolean v1, v0, Lf/k;->i:Z

    .line 136
    .line 137
    if-eqz v1, :cond_2

    .line 138
    .line 139
    iget-object v1, p0, Lcom/syu/carlink/auto/AutoFragment;->d:Lcom/google/android/projection/protocol/Transport;

    .line 140
    .line 141
    if-eqz v1, :cond_2

    .line 142
    .line 143
    invoke-virtual {p0, v1}, Lcom/syu/carlink/auto/AutoFragment;->onConnected(Lcom/google/android/projection/protocol/Transport;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/syu/carlink/auto/AutoFragment;->d:Lcom/google/android/projection/protocol/Transport;

    .line 148
    .line 149
    if-eqz v1, :cond_3

    .line 150
    .line 151
    iget-object v1, p0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 152
    .line 153
    if-nez v1, :cond_3

    .line 154
    .line 155
    const-string v0, "----------------->>>>> Auto Fragment onResume re-attach live transport, rebuild GAL/renderer"

    .line 156
    .line 157
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/syu/carlink/auto/AutoFragment;->d:Lcom/google/android/projection/protocol/Transport;

    .line 161
    .line 162
    invoke-virtual {p0, v0}, Lcom/syu/carlink/auto/AutoFragment;->onConnected(Lcom/google/android/projection/protocol/Transport;)V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_3
    const/4 v1, 0x0

    .line 167
    iput-boolean v1, v0, Lf/k;->i:Z

    .line 168
    .line 169
    :goto_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lf/k;->y:Lf/k;

    .line 5
    .line 6
    iget-object p1, p1, Lf/k;->j:Landroid/content/Context;

    .line 7
    .line 8
    const-string p2, "audio"

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/media/AudioManager;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/syu/carlink/auto/AutoFragment;->r:Landroid/media/AudioManager;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget p2, Lcom/google/android/projection/sink/R$id;->frame:I

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget p2, Lcom/google/android/projection/sink/R$id;->connect_layout:I

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/syu/carlink/auto/AutoFragment;->j:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    sget p2, Lcom/google/android/projection/sink/R$id;->surface:I

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/view/SurfaceView;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/syu/carlink/auto/AutoFragment;->i:Landroid/view/SurfaceView;

    .line 55
    .line 56
    sget-object p1, Lf/k;->y:Lf/k;

    .line 57
    .line 58
    iget-object p1, p1, Lf/k;->b:Le/b;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/syu/carlink/auto/AutoFragment;->p:Le/b;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    sget-object p1, Lf/k;->y:Lf/k;

    .line 66
    .line 67
    iget-object p1, p1, Lf/k;->f:Lcom/google/android/projection/sink/settings/Settings;

    .line 68
    .line 69
    iput-object p1, p0, Lcom/syu/carlink/auto/AutoFragment;->c:Lcom/google/android/projection/sink/settings/Settings;

    .line 70
    .line 71
    new-instance p1, Lcom/google/android/projection/sink/debug/DebugContext;

    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-direct {p1, p2}, Lcom/google/android/projection/sink/debug/DebugContext;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Lcom/syu/carlink/auto/AutoFragment;->m:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 81
    .line 82
    iget-boolean p1, p0, Lcom/syu/carlink/auto/AutoFragment;->o:Z

    .line 83
    .line 84
    if-eqz p1, :cond_0

    .line 85
    .line 86
    const-string p1, "Auto"

    .line 87
    .line 88
    const-string p2, "----------------fmt onViewCreated"

    .line 89
    .line 90
    invoke-static {p1, p2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sget-object p1, Lf/k;->y:Lf/k;

    .line 94
    .line 95
    const/4 p2, 0x1

    .line 96
    invoke-virtual {p1, p2}, Lf/k;->m(I)V

    .line 97
    .line 98
    .line 99
    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lcom/syu/carlink/auto/AutoFragment;->o:Z

    .line 101
    .line 102
    :cond_0
    return-void
.end method
