.class Lcom/android/internal/os/BatteryStatsImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field final synthetic val$numWakelocksF:I

.field final synthetic val$updatedUids:Landroid/util/SparseLongArray;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;ILandroid/util/SparseLongArray;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$numWakelocksF:I

    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$updatedUids:Landroid/util/SparseLongArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidCpuTime(IJJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "BatteryStatsImpl"

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    .line 16
    .line 17
    invoke-static {p2}, Lcom/android/internal/os/BatteryStatsImpl;->access$800(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/KernelUidCpuTimeReader;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2, p1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUid(I)V

    .line 22
    .line 23
    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p3, "Got readings for an isolated uid with no mapping to owning uid: "

    .line 27
    .line 28
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->access$900(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-static {v0, v2}, Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;->access$1000(Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;I)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string p3, "Got readings for an invalid user\'s uid "

    .line 61
    .line 62
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    .line 76
    .line 77
    invoke-static {p2}, Lcom/android/internal/os/BatteryStatsImpl;->access$800(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/KernelUidCpuTimeReader;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p2, p1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUid(I)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    .line 92
    .line 93
    iget-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    .line 94
    .line 95
    add-long/2addr v1, p2

    .line 96
    iput-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    .line 97
    .line 98
    iget-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    .line 99
    .line 100
    add-long/2addr v1, p4

    .line 101
    iput-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    .line 102
    .line 103
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$numWakelocksF:I

    .line 104
    .line 105
    if-lez v0, :cond_2

    .line 106
    .line 107
    const-wide/16 v0, 0x32

    .line 108
    .line 109
    mul-long/2addr p2, v0

    .line 110
    const-wide/16 v2, 0x64

    .line 111
    .line 112
    div-long/2addr p2, v2

    .line 113
    mul-long/2addr p4, v0

    .line 114
    div-long/2addr p4, v2

    .line 115
    :cond_2
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 116
    .line 117
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 121
    .line 122
    invoke-virtual {v0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$updatedUids:Landroid/util/SparseLongArray;

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getUid()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    add-long/2addr p2, p4

    .line 132
    invoke-virtual {v0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 133
    .line 134
    .line 135
    return-void
.end method
