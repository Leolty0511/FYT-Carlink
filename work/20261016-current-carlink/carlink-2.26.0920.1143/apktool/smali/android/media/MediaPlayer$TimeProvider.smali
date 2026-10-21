.class Landroid/media/MediaPlayer$TimeProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaTimeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$TimeProvider$EventHandler;
    }
.end annotation


# static fields
.field private static final MAX_EARLY_CALLBACK_US:J = 0x3e8L

.field private static final MAX_NS_WITHOUT_POSITION_CHECK:J = 0x12a05f200L

.field private static final NOTIFY:I = 0x1

.field private static final NOTIFY_SEEK:I = 0x3

.field private static final NOTIFY_STOP:I = 0x2

.field private static final NOTIFY_TIME:I = 0x0

.field private static final NOTIFY_TRACK_DATA:I = 0x4

.field private static final REFRESH_AND_NOTIFY_TIME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MTP"

.field private static final TIME_ADJUSTMENT_RATE:J = 0x2L


# instance fields
.field public DEBUG:Z

.field private mBuffering:Z

.field private mEventHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLastNanoTime:J

.field private mLastReportedTime:J

.field private mLastTimeUs:J

.field private mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

.field private mPaused:Z

.field private mPausing:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mRefresh:Z

.field private mSeeking:Z

.field private mStopped:Z

.field private mTimeAdjustment:J

.field private mTimes:[J


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    iput-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 10
    .line 11
    iput-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    .line 15
    .line 16
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 17
    .line 18
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 19
    .line 20
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    .line 21
    .line 22
    iput-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {p0, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    iput-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    .line 29
    .line 30
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    new-instance p1, Landroid/os/HandlerThread;

    .line 43
    .line 44
    const-string v2, "MediaPlayerMTPEventThread"

    .line 45
    .line 46
    const/4 v4, -0x2

    .line 47
    invoke-direct {p1, v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :cond_0
    new-instance v2, Landroid/media/MediaPlayer$TimeProvider$EventHandler;

    .line 62
    .line 63
    invoke-direct {v2, p0, p1}, Landroid/media/MediaPlayer$TimeProvider$EventHandler;-><init>(Landroid/media/MediaPlayer$TimeProvider;Landroid/os/Looper;)V

    .line 64
    .line 65
    .line 66
    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    .line 67
    .line 68
    new-array p1, v3, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 69
    .line 70
    iput-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 71
    .line 72
    new-array p1, v3, [J

    .line 73
    .line 74
    iput-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    .line 75
    .line 76
    iput-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 77
    .line 78
    iput-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    .line 79
    .line 80
    return-void
.end method

.method public static synthetic access$3700(Landroid/media/MediaPlayer$TimeProvider;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->notifyTimedEvent(Z)V

    return-void
.end method

.method public static synthetic access$3800(Landroid/media/MediaPlayer$TimeProvider;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaPlayer$TimeProvider;->notifyStop()V

    return-void
.end method

.method public static synthetic access$3900(Landroid/media/MediaPlayer$TimeProvider;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaPlayer$TimeProvider;->notifySeek()V

    return-void
.end method

.method public static synthetic access$4000(Landroid/media/MediaPlayer$TimeProvider;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->notifyTrackData(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic access$500(Landroid/media/MediaPlayer$TimeProvider;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getEstimatedTime(JZ)J
    .locals 8

    .line 1
    iget-boolean p3, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    iget-wide p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 6
    .line 7
    iget-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    .line 8
    .line 9
    add-long/2addr p1, v0

    .line 10
    iput-wide p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastNanoTime:J

    .line 14
    .line 15
    sub-long/2addr p1, v0

    .line 16
    const-wide/16 v0, 0x3e8

    .line 17
    .line 18
    div-long/2addr p1, v0

    .line 19
    iget-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 20
    .line 21
    add-long/2addr v0, p1

    .line 22
    iput-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    .line 23
    .line 24
    iget-wide v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    .line 25
    .line 26
    const-wide/16 v4, 0x0

    .line 27
    .line 28
    cmp-long p3, v2, v4

    .line 29
    .line 30
    if-lez p3, :cond_2

    .line 31
    .line 32
    const-wide/16 v6, 0x2

    .line 33
    .line 34
    div-long/2addr p1, v6

    .line 35
    sub-long/2addr v2, p1

    .line 36
    cmp-long p1, v2, v4

    .line 37
    .line 38
    if-gtz p1, :cond_1

    .line 39
    .line 40
    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    add-long/2addr v0, v2

    .line 44
    iput-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    .line 45
    .line 46
    :cond_2
    :goto_0
    iget-wide p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    .line 47
    .line 48
    return-wide p1
.end method

.method private declared-synchronized notifySeek()V
    .locals 8

    .line 1
    const-string/jumbo v0, "onSeekComplete at "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    :try_start_1
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    iget-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    .line 14
    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    const-string v5, "MTP"

    .line 18
    .line 19
    new-instance v6, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 35
    .line 36
    array-length v5, v0

    .line 37
    move v6, v1

    .line 38
    :goto_0
    if-ge v6, v5, :cond_3

    .line 39
    .line 40
    aget-object v7, v0, v6

    .line 41
    .line 42
    if-nez v7, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-interface {v7, v3, v4}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onSeek(J)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    add-int/lit8 v6, v6, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    :try_start_2
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    const-string v0, "MTP"

    .line 56
    .line 57
    const-string/jumbo v3, "onSeekComplete but no player"

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :cond_2
    iput-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 64
    .line 65
    invoke-direct {p0, v1}, Landroid/media/MediaPlayer$TimeProvider;->notifyTimedEvent(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_1
    monitor-exit p0

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    monitor-exit p0

    .line 72
    throw v0
.end method

.method private declared-synchronized notifyStop()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 3
    .line 4
    array-length v1, v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7
    .line 8
    aget-object v3, v0, v2

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-interface {v3}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    :goto_1
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0

    .line 23
    throw v0
.end method

.method private declared-synchronized notifyTimedEvent(Z)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    const/4 v2, 0x1

    .line 7
    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    .line 8
    .line 9
    .line 10
    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto/16 :goto_8

    .line 14
    .line 15
    :catch_0
    :try_start_1
    iput-boolean v2, v1, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    .line 16
    .line 17
    iput-boolean v2, v1, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 18
    .line 19
    invoke-virtual {v1, v0, v2}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    :goto_0
    iget-boolean v0, v1, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :cond_0
    :try_start_2
    iget-boolean v0, v1, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    .line 30
    .line 31
    const-wide/16 v5, -0x1

    .line 32
    .line 33
    const/4 v7, 0x0

    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string/jumbo v8, "notifyTimedEvent("

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-wide v8, v1, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 48
    .line 49
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v8, " -> "

    .line 53
    .line 54
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v8, ") from {"

    .line 61
    .line 62
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v8, v1, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    .line 66
    .line 67
    array-length v9, v8

    .line 68
    move v11, v2

    .line 69
    move v10, v7

    .line 70
    :goto_1
    if-ge v10, v9, :cond_3

    .line 71
    .line 72
    aget-wide v12, v8, v10

    .line 73
    .line 74
    cmp-long v14, v12, v5

    .line 75
    .line 76
    if-nez v14, :cond_1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_1
    if-nez v11, :cond_2

    .line 80
    .line 81
    const-string v11, ", "

    .line 82
    .line 83
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    :cond_2
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    move v11, v7

    .line 90
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    const-string/jumbo v8, "}"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v8, "MTP"

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :cond_4
    new-instance v0, Ljava/util/Vector;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 111
    .line 112
    .line 113
    move-wide v9, v3

    .line 114
    move v8, v7

    .line 115
    :goto_3
    iget-object v11, v1, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    .line 116
    .line 117
    array-length v12, v11

    .line 118
    if-ge v8, v12, :cond_b

    .line 119
    .line 120
    iget-object v12, v1, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 121
    .line 122
    aget-object v12, v12, v8

    .line 123
    .line 124
    if-nez v12, :cond_5

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_5
    aget-wide v13, v11, v8

    .line 128
    .line 129
    cmp-long v11, v13, v5

    .line 130
    .line 131
    if-gtz v11, :cond_6

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_6
    const-wide/16 v15, 0x3e8

    .line 135
    .line 136
    add-long/2addr v15, v3

    .line 137
    cmp-long v11, v13, v15

    .line 138
    .line 139
    if-gtz v11, :cond_8

    .line 140
    .line 141
    invoke-virtual {v0, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    iget-boolean v11, v1, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    .line 145
    .line 146
    if-eqz v11, :cond_7

    .line 147
    .line 148
    const-string v11, "MTP"

    .line 149
    .line 150
    const-string/jumbo v12, "removed"

    .line 151
    .line 152
    .line 153
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    :cond_7
    iget-object v11, v1, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    .line 157
    .line 158
    aput-wide v5, v11, v8

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_8
    cmp-long v11, v9, v3

    .line 162
    .line 163
    if-eqz v11, :cond_9

    .line 164
    .line 165
    cmp-long v11, v13, v9

    .line 166
    .line 167
    if-gez v11, :cond_a

    .line 168
    .line 169
    :cond_9
    move-wide v9, v13

    .line 170
    :cond_a
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_b
    :goto_5
    cmp-long v5, v9, v3

    .line 174
    .line 175
    if-lez v5, :cond_d

    .line 176
    .line 177
    iget-boolean v5, v1, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 178
    .line 179
    if-nez v5, :cond_d

    .line 180
    .line 181
    iget-boolean v2, v1, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    .line 182
    .line 183
    if-eqz v2, :cond_c

    .line 184
    .line 185
    const-string v2, "MTP"

    .line 186
    .line 187
    new-instance v5, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string/jumbo v6, "scheduling for "

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v6, " and "

    .line 202
    .line 203
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    :cond_c
    sub-long/2addr v9, v3

    .line 217
    invoke-direct {v1, v7, v9, v10}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 218
    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_d
    iget-object v5, v1, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    .line 222
    .line 223
    invoke-virtual {v5, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 224
    .line 225
    .line 226
    :goto_6
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    if-eqz v2, :cond_e

    .line 235
    .line 236
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    check-cast v2, Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 241
    .line 242
    invoke-interface {v2, v3, v4}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onTimedEvent(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    .line 244
    .line 245
    goto :goto_7

    .line 246
    :cond_e
    monitor-exit p0

    .line 247
    return-void

    .line 248
    :goto_8
    monitor-exit p0

    .line 249
    throw v0
.end method

.method private declared-synchronized notifyTrackData(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/media/SubtitleTrack;",
            "[B>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Landroid/media/SubtitleTrack;

    .line 5
    .line 6
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, [B

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const-wide/16 v2, -0x1

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/media/SubtitleTrack;->onData([BZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method private registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_1

    .line 7
    .line 8
    aget-object v3, v2, v1

    .line 9
    .line 10
    if-eq v3, p1, :cond_1

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    :goto_1
    array-length v3, v2

    .line 19
    if-lt v1, v3, :cond_2

    .line 20
    .line 21
    add-int/lit8 v3, v1, 0x1

    .line 22
    .line 23
    new-array v4, v3, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 24
    .line 25
    new-array v3, v3, [J

    .line 26
    .line 27
    array-length v5, v2

    .line 28
    invoke-static {v2, v0, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    .line 32
    .line 33
    array-length v5, v2

    .line 34
    invoke-static {v2, v0, v3, v0, v5}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 35
    .line 36
    .line 37
    iput-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 38
    .line 39
    iput-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 42
    .line 43
    aget-object v2, v0, v1

    .line 44
    .line 45
    if-nez v2, :cond_3

    .line 46
    .line 47
    aput-object p1, v0, v1

    .line 48
    .line 49
    iget-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    .line 50
    .line 51
    const-wide/16 v2, -0x1

    .line 52
    .line 53
    aput-wide v2, p1, v1

    .line 54
    .line 55
    :cond_3
    return v1
.end method

.method private scheduleNotification(IJ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    if-ne p1, v1, :cond_1

    .line 9
    .line 10
    :cond_0
    return-void

    .line 11
    :cond_1
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v2, "scheduleNotification "

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " in "

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v2, "MTP"

    .line 39
    .line 40
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    .line 56
    .line 57
    const-wide/16 v1, 0x3e8

    .line 58
    .line 59
    div-long/2addr p2, v1

    .line 60
    long-to-int p2, p2

    .line 61
    int-to-long p2, p2

    .line 62
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    move v1, v0

    .line 4
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 5
    .line 6
    array-length v3, v2

    .line 7
    if-ge v1, v3, :cond_2

    .line 8
    .line 9
    aget-object v3, v2, v1

    .line 10
    .line 11
    if-ne v3, p1, :cond_0

    .line 12
    .line 13
    add-int/lit8 p1, v1, 0x1

    .line 14
    .line 15
    array-length v3, v2

    .line 16
    sub-int/2addr v3, v1

    .line 17
    add-int/lit8 v3, v3, -0x1

    .line 18
    .line 19
    invoke-static {v2, p1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    .line 23
    .line 24
    array-length v3, v2

    .line 25
    sub-int/2addr v3, v1

    .line 26
    add-int/lit8 v3, v3, -0x1

    .line 27
    .line 28
    invoke-static {v2, p1, v2, v1, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 32
    .line 33
    array-length v1, p1

    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    aput-object v2, p1, v1

    .line 38
    .line 39
    iget-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    .line 40
    .line 41
    array-length v1, p1

    .line 42
    add-int/lit8 v1, v1, -0x1

    .line 43
    .line 44
    const-wide/16 v2, -0x1

    .line 45
    .line 46
    aput-wide v2, p1, v1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    if-nez v3, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    :goto_1
    const-wide/16 v1, 0x0

    .line 56
    .line 57
    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 58
    .line 59
    .line 60
    monitor-exit p0

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p1
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getCurrentTimeUs(ZZ)J
    .locals 10

    .line 1
    const-string/jumbo v0, "illegal state, but pausing: estimating at "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-wide p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-wide p1

    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    iget-wide v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastNanoTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    const-wide v5, 0x12a05f200L

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    add-long/2addr v3, v5

    .line 29
    cmp-long p1, v1, v3

    .line 30
    .line 31
    if-ltz p1, :cond_7

    .line 32
    .line 33
    :cond_1
    const/4 p1, 0x1

    .line 34
    const/4 v3, 0x0

    .line 35
    :try_start_1
    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    .line 36
    .line 37
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    int-to-long v4, v4

    .line 42
    const-wide/16 v6, 0x3e8

    .line 43
    .line 44
    mul-long/2addr v4, v6

    .line 45
    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 46
    .line 47
    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_3

    .line 54
    .line 55
    iget-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    .line 56
    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move v4, v3

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    :goto_0
    move v4, p1

    .line 63
    :goto_1
    iput-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 64
    .line 65
    iget-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    .line 66
    .line 67
    if-eqz v4, :cond_5

    .line 68
    .line 69
    const-string v4, "MTP"

    .line 70
    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-boolean v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 77
    .line 78
    if-eqz v6, :cond_4

    .line 79
    .line 80
    const-string/jumbo v6, "paused"

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    const-string/jumbo v6, "playing"

    .line 85
    .line 86
    .line 87
    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v6, " at "

    .line 91
    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 96
    .line 97
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .line 106
    .line 107
    :cond_5
    :try_start_2
    iput-wide v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastNanoTime:J

    .line 108
    .line 109
    const-wide/16 v4, 0x0

    .line 110
    .line 111
    if-eqz p2, :cond_6

    .line 112
    .line 113
    iget-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 114
    .line 115
    iget-wide v8, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    .line 116
    .line 117
    cmp-long v0, v6, v8

    .line 118
    .line 119
    if-gez v0, :cond_6

    .line 120
    .line 121
    sub-long/2addr v8, v6

    .line 122
    iput-wide v8, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    .line 123
    .line 124
    const-wide/32 v6, 0xf4240

    .line 125
    .line 126
    .line 127
    cmp-long v0, v8, v6

    .line 128
    .line 129
    if-lez v0, :cond_7

    .line 130
    .line 131
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 132
    .line 133
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 134
    .line 135
    const/4 p1, 0x3

    .line 136
    invoke-direct {p0, p1, v4, v5}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_6
    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    .line 141
    .line 142
    :cond_7
    :goto_3
    invoke-direct {p0, v1, v2, p2}, Landroid/media/MediaPlayer$TimeProvider;->getEstimatedTime(JZ)J

    .line 143
    .line 144
    .line 145
    move-result-wide p1

    .line 146
    monitor-exit p0

    .line 147
    return-wide p1

    .line 148
    :catch_0
    move-exception v4

    .line 149
    iget-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 150
    .line 151
    if-eqz v5, :cond_9

    .line 152
    .line 153
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 154
    .line 155
    invoke-direct {p0, v1, v2, p2}, Landroid/media/MediaPlayer$TimeProvider;->getEstimatedTime(JZ)J

    .line 156
    .line 157
    .line 158
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 159
    .line 160
    iget-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    .line 161
    .line 162
    if-eqz p1, :cond_8

    .line 163
    .line 164
    const-string p1, "MTP"

    .line 165
    .line 166
    new-instance p2, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    .line 172
    .line 173
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    :cond_8
    iget-wide p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    .line 184
    .line 185
    monitor-exit p0

    .line 186
    return-wide p1

    .line 187
    :cond_9
    throw v4

    .line 188
    :catchall_0
    move-exception p1

    .line 189
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    throw p1
.end method

.method public notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "notifyAt "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "MTP"

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    .line 27
    .line 28
    invoke-direct {p0, p3}, Landroid/media/MediaPlayer$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    aput-wide p1, v0, p3

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    const-wide/16 p2, 0x0

    .line 36
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p1
.end method

.method public onBuffering(Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "onBuffering: "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "MTP"

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    const-wide/16 v0, 0x0

    .line 30
    .line 31
    invoke-direct {p0, p1, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 32
    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1
.end method

.method public onNewPlayer()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v0

    .line 25
    :cond_0
    :goto_0
    return-void
.end method

.method public onPaused(Z)V
    .locals 5

    .line 1
    const-string/jumbo v0, "onPaused: "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "MTP"

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 27
    .line 28
    const-wide/16 v1, 0x0

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iput-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 35
    .line 36
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 37
    .line 38
    const/4 p1, 0x3

    .line 39
    invoke-direct {p0, p1, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 44
    .line 45
    iput-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 46
    .line 47
    invoke-direct {p0, v3, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 48
    .line 49
    .line 50
    :goto_0
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p1
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 p1, 0x0

    .line 3
    :try_start_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 7
    .line 8
    const/4 p1, 0x3

    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method

.method public onStopped()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "MTP"

    .line 7
    .line 8
    const-string/jumbo v1, "onStopped"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    const-wide/16 v1, 0x0

    .line 26
    .line 27
    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v0
.end method

.method public scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "MTP"

    .line 7
    .line 8
    const-string/jumbo v1, "scheduleUpdate"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    .line 23
    .line 24
    const-wide/16 v1, 0x0

    .line 25
    .line 26
    aput-wide v1, v0, p1

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-direct {p0, p1, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 30
    .line 31
    .line 32
    :cond_1
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method
