.class public final Landroid/os/BatteryStats$HistoryStepDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryStepDetails"
.end annotation


# instance fields
.field public appCpuSTime1:I

.field public appCpuSTime2:I

.field public appCpuSTime3:I

.field public appCpuUTime1:I

.field public appCpuUTime2:I

.field public appCpuUTime3:I

.field public appCpuUid1:I

.field public appCpuUid2:I

.field public appCpuUid3:I

.field public statIOWaitTime:I

.field public statIdlTime:I

.field public statIrqTime:I

.field public statPlatformIdleState:Ljava/lang/String;

.field public statSoftIrqTime:I

.field public statSubsystemPowerState:Ljava/lang/String;

.field public statSystemTime:I

.field public statUserTime:I

.field public systemTime:I

.field public userTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/os/BatteryStats$HistoryStepDetails;->clear()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    .line 3
    .line 4
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iput v1, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 8
    .line 9
    iput v1, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 10
    .line 11
    iput v1, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 12
    .line 13
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    .line 14
    .line 15
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    .line 16
    .line 17
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    .line 18
    .line 19
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    .line 20
    .line 21
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    .line 22
    .line 23
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    .line 24
    .line 25
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-object v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iput-object p1, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    .line 114
    .line 115
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    .line 70
    .line 71
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    .line 75
    .line 76
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    .line 80
    .line 81
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method
