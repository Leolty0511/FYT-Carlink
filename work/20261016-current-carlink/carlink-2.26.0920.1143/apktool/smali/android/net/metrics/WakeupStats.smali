.class public Landroid/net/metrics/WakeupStats;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NO_UID:I = -0x1


# instance fields
.field public applicationWakeups:J

.field public final creationTimeMs:J

.field public durationSec:J

.field public final iface:Ljava/lang/String;

.field public noUidWakeups:J

.field public nonApplicationWakeups:J

.field public rootWakeups:J

.field public systemWakeups:J

.field public totalWakeups:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->creationTimeMs:J

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    .line 13
    .line 14
    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    .line 15
    .line 16
    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    .line 17
    .line 18
    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    .line 19
    .line 20
    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    .line 21
    .line 22
    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    .line 23
    .line 24
    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->durationSec:J

    .line 25
    .line 26
    iput-object p1, p0, Landroid/net/metrics/WakeupStats;->iface:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public countEvent(Landroid/net/metrics/WakeupEvent;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    .line 7
    .line 8
    iget p1, p1, Landroid/net/metrics/WakeupEvent;->uid:I

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    if-eq p1, v0, :cond_3

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    const/16 v0, 0x3e8

    .line 16
    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x2710

    .line 20
    .line 21
    if-lt p1, v0, :cond_0

    .line 22
    .line 23
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    .line 24
    .line 25
    add-long/2addr v0, v2

    .line 26
    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    .line 30
    .line 31
    add-long/2addr v0, v2

    .line 32
    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    .line 36
    .line 37
    add-long/2addr v0, v2

    .line 38
    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    .line 42
    .line 43
    add-long/2addr v0, v2

    .line 44
    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    .line 48
    .line 49
    add-long/2addr v0, v2

    .line 50
    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/net/metrics/WakeupStats;->updateDuration()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "WakeupStats("

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroid/net/metrics/WakeupStats;->iface:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", total: "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", root: "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", system: "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", apps: "

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", non-apps: "

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", no uid: "

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", "

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->durationSec:J

    .line 82
    .line 83
    const-string/jumbo v3, "s)"

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->k(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    return-object v0
.end method

.method public updateDuration()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->creationTimeMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->durationSec:J

    return-void
.end method
