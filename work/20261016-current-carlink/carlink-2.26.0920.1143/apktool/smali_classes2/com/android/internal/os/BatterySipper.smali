.class public Lcom/android/internal/os/BatterySipper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatterySipper$DrainType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/internal/os/BatterySipper;",
        ">;"
    }
.end annotation


# instance fields
.field public bluetoothPowerMah:D

.field public bluetoothRunningTimeMs:J

.field public btRxBytes:J

.field public btTxBytes:J

.field public cameraPowerMah:D

.field public cameraTimeMs:J

.field public cpuFgTimeMs:J

.field public cpuPowerMah:D

.field public cpuTimeMs:J

.field public drainType:Lcom/android/internal/os/BatterySipper$DrainType;

.field public flashlightPowerMah:D

.field public flashlightTimeMs:J

.field public gpsPowerMah:D

.field public gpsTimeMs:J

.field public mPackages:[Ljava/lang/String;

.field public mobileActive:J

.field public mobileActiveCount:I

.field public mobileRadioPowerMah:D

.field public mobileRxBytes:J

.field public mobileRxPackets:J

.field public mobileTxBytes:J

.field public mobileTxPackets:J

.field public mobilemspp:D

.field public noCoveragePercent:D

.field public packageWithHighestDrain:Ljava/lang/String;

.field public percent:D

.field public proportionalSmearMah:D

.field public screenPowerMah:D

.field public sensorPowerMah:D

.field public shouldHide:Z

.field public totalPowerMah:D

.field public totalSmearedPowerMah:D

.field public uidObj:Landroid/os/BatteryStats$Uid;

.field public usagePowerMah:D

.field public usageTimeMs:J

.field public userId:I

.field public wakeLockPowerMah:D

.field public wakeLockTimeMs:J

.field public wifiPowerMah:D

.field public wifiRunningTimeMs:J

.field public wifiRxBytes:J

.field public wifiRxPackets:J

.field public wifiTxBytes:J

.field public wifiTxPackets:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p3, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/os/BatterySipper;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 2
    .line 3
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 4
    .line 5
    add-double/2addr v0, v2

    .line 6
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 7
    .line 8
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    .line 9
    .line 10
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    .line 11
    .line 12
    add-long/2addr v0, v2

    .line 13
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    .line 14
    .line 15
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    .line 16
    .line 17
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    .line 18
    .line 19
    add-double/2addr v0, v2

    .line 20
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    .line 21
    .line 22
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    .line 23
    .line 24
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    .line 25
    .line 26
    add-long/2addr v0, v2

    .line 27
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    .line 28
    .line 29
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    .line 30
    .line 31
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    .line 32
    .line 33
    add-long/2addr v0, v2

    .line 34
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    .line 35
    .line 36
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    .line 37
    .line 38
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    .line 39
    .line 40
    add-long/2addr v0, v2

    .line 41
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    .line 42
    .line 43
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    .line 44
    .line 45
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    .line 46
    .line 47
    add-long/2addr v0, v2

    .line 48
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    .line 49
    .line 50
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    .line 51
    .line 52
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    .line 53
    .line 54
    add-long/2addr v0, v2

    .line 55
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    .line 56
    .line 57
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    .line 58
    .line 59
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    .line 60
    .line 61
    add-long/2addr v0, v2

    .line 62
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    .line 63
    .line 64
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    .line 65
    .line 66
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    .line 67
    .line 68
    add-long/2addr v0, v2

    .line 69
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    .line 70
    .line 71
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->bluetoothRunningTimeMs:J

    .line 72
    .line 73
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->bluetoothRunningTimeMs:J

    .line 74
    .line 75
    add-long/2addr v0, v2

    .line 76
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->bluetoothRunningTimeMs:J

    .line 77
    .line 78
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    .line 79
    .line 80
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    .line 81
    .line 82
    add-long/2addr v0, v2

    .line 83
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    .line 84
    .line 85
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    .line 86
    .line 87
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    .line 88
    .line 89
    add-long/2addr v0, v2

    .line 90
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    .line 91
    .line 92
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 93
    .line 94
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 95
    .line 96
    add-long/2addr v0, v2

    .line 97
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 98
    .line 99
    iget v0, p0, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    .line 100
    .line 101
    iget v1, p1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    .line 102
    .line 103
    add-int/2addr v0, v1

    .line 104
    iput v0, p0, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    .line 105
    .line 106
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    .line 107
    .line 108
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    .line 109
    .line 110
    add-long/2addr v0, v2

    .line 111
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    .line 112
    .line 113
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    .line 114
    .line 115
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    .line 116
    .line 117
    add-long/2addr v0, v2

    .line 118
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    .line 119
    .line 120
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    .line 121
    .line 122
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    .line 123
    .line 124
    add-long/2addr v0, v2

    .line 125
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    .line 126
    .line 127
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    .line 128
    .line 129
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    .line 130
    .line 131
    add-long/2addr v0, v2

    .line 132
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    .line 133
    .line 134
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    .line 135
    .line 136
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    .line 137
    .line 138
    add-long/2addr v0, v2

    .line 139
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    .line 140
    .line 141
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    .line 142
    .line 143
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    .line 144
    .line 145
    add-long/2addr v0, v2

    .line 146
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    .line 147
    .line 148
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->btRxBytes:J

    .line 149
    .line 150
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->btRxBytes:J

    .line 151
    .line 152
    add-long/2addr v0, v2

    .line 153
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->btRxBytes:J

    .line 154
    .line 155
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->btTxBytes:J

    .line 156
    .line 157
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->btTxBytes:J

    .line 158
    .line 159
    add-long/2addr v0, v2

    .line 160
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->btTxBytes:J

    .line 161
    .line 162
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 163
    .line 164
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 165
    .line 166
    add-double/2addr v0, v2

    .line 167
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 168
    .line 169
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    .line 170
    .line 171
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    .line 172
    .line 173
    add-double/2addr v0, v2

    .line 174
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    .line 175
    .line 176
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    .line 177
    .line 178
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    .line 179
    .line 180
    add-double/2addr v0, v2

    .line 181
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    .line 182
    .line 183
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    .line 184
    .line 185
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    .line 186
    .line 187
    add-double/2addr v0, v2

    .line 188
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    .line 189
    .line 190
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    .line 191
    .line 192
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    .line 193
    .line 194
    add-double/2addr v0, v2

    .line 195
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    .line 196
    .line 197
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    .line 198
    .line 199
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    .line 200
    .line 201
    add-double/2addr v0, v2

    .line 202
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    .line 203
    .line 204
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    .line 205
    .line 206
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    .line 207
    .line 208
    add-double/2addr v0, v2

    .line 209
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    .line 210
    .line 211
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    .line 212
    .line 213
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    .line 214
    .line 215
    add-double/2addr v0, v2

    .line 216
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    .line 217
    .line 218
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    .line 219
    .line 220
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    .line 221
    .line 222
    add-double/2addr v0, v2

    .line 223
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    .line 224
    .line 225
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    .line 226
    .line 227
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    .line 228
    .line 229
    add-double/2addr v0, v2

    .line 230
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    .line 231
    .line 232
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    .line 233
    .line 234
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    .line 235
    .line 236
    add-double/2addr v0, v2

    .line 237
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    .line 238
    .line 239
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    .line 240
    .line 241
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    .line 242
    .line 243
    add-double/2addr v0, v2

    .line 244
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    .line 245
    .line 246
    return-void
.end method

.method public compareTo(Lcom/android/internal/os/BatterySipper;)I
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v1, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    .line 3
    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-ne v1, v2, :cond_1

    const/4 p1, -0x1

    return p1

    .line 4
    :cond_1
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatterySipper;->compareTo(Lcom/android/internal/os/BatterySipper;)I

    move-result p1

    return p1
.end method

.method public computeMobilemspp()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-lez v2, :cond_0

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 13
    .line 14
    long-to-double v2, v2

    .line 15
    long-to-double v0, v0

    .line 16
    div-double/2addr v2, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    :goto_0
    iput-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    .line 21
    .line 22
    return-void
.end method

.method public getPackages()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public sumPower()D
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 4
    .line 5
    add-double/2addr v0, v2

    .line 6
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    .line 7
    .line 8
    add-double/2addr v0, v2

    .line 9
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    .line 10
    .line 11
    add-double/2addr v0, v2

    .line 12
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    .line 13
    .line 14
    add-double/2addr v0, v2

    .line 15
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    .line 16
    .line 17
    add-double/2addr v0, v2

    .line 18
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    .line 19
    .line 20
    add-double/2addr v0, v2

    .line 21
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    .line 22
    .line 23
    add-double/2addr v0, v2

    .line 24
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    .line 25
    .line 26
    add-double/2addr v0, v2

    .line 27
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    .line 28
    .line 29
    add-double/2addr v0, v2

    .line 30
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 31
    .line 32
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    .line 33
    .line 34
    add-double/2addr v2, v0

    .line 35
    iget-wide v4, p0, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    .line 36
    .line 37
    add-double/2addr v2, v4

    .line 38
    iput-wide v2, p0, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    .line 39
    .line 40
    return-wide v0
.end method
