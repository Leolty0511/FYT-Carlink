.class public Lcom/android/internal/os/CpuPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z

.field private static final MICROSEC_IN_HR:J = 0xd693a400L

.field private static final TAG:Ljava/lang/String; = "CpuPowerCalculator"


# instance fields
.field private final mProfile:Lcom/android/internal/os/PowerProfile;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/os/CpuPowerCalculator;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p7

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    invoke-virtual {v2, v3}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    .line 14
    .line 15
    .line 16
    move-result-wide v6

    .line 17
    add-long/2addr v6, v4

    .line 18
    const-wide/16 v4, 0x3e8

    .line 19
    .line 20
    div-long/2addr v6, v4

    .line 21
    iput-wide v6, v1, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    .line 22
    .line 23
    iget-object v4, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    .line 24
    .line 25
    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v8, 0x0

    .line 30
    const-wide/16 v9, 0x0

    .line 31
    .line 32
    :goto_0
    const-string v11, "UID "

    .line 33
    .line 34
    const-string v14, "CpuPowerCalculator"

    .line 35
    .line 36
    if-ge v8, v4, :cond_2

    .line 37
    .line 38
    iget-object v15, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    .line 39
    .line 40
    invoke-virtual {v15, v8}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    .line 41
    .line 42
    .line 43
    move-result v15

    .line 44
    const/4 v7, 0x0

    .line 45
    :goto_1
    if-ge v7, v15, :cond_1

    .line 46
    .line 47
    invoke-virtual {v2, v8, v7, v3}, Landroid/os/BatteryStats$Uid;->getTimeAtCpuSpeed(III)J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    long-to-double v12, v5

    .line 52
    iget-object v2, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    .line 53
    .line 54
    invoke-virtual {v2, v8, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpu(II)D

    .line 55
    .line 56
    .line 57
    move-result-wide v16

    .line 58
    mul-double v16, v16, v12

    .line 59
    .line 60
    sget-boolean v2, Lcom/android/internal/os/CpuPowerCalculator;->DEBUG:Z

    .line 61
    .line 62
    if-eqz v2, :cond_0

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getUid()I

    .line 70
    .line 71
    .line 72
    move-result v12

    .line 73
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v12, ": CPU cluster #"

    .line 77
    .line 78
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v12, " step #"

    .line 85
    .line 86
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v12, " timeUs="

    .line 93
    .line 94
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v5, " power="

    .line 101
    .line 102
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-wide v5, 0x41ead27480000000L    # 3.6E9

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    div-double v12, v16, v5

    .line 111
    .line 112
    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    :cond_0
    add-double v9, v9, v16

    .line 127
    .line 128
    add-int/lit8 v7, v7, 0x1

    .line 129
    .line 130
    move-object/from16 v2, p2

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 134
    .line 135
    move-object/from16 v2, p2

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_2
    const-wide v5, 0x41ead27480000000L    # 3.6E9

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    div-double/2addr v9, v5

    .line 144
    iput-wide v9, v1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    .line 145
    .line 146
    sget-boolean v2, Lcom/android/internal/os/CpuPowerCalculator;->DEBUG:Z

    .line 147
    .line 148
    const-wide/16 v4, 0x0

    .line 149
    .line 150
    if-eqz v2, :cond_4

    .line 151
    .line 152
    iget-wide v6, v1, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    .line 153
    .line 154
    cmp-long v2, v6, v4

    .line 155
    .line 156
    const-wide/16 v6, 0x0

    .line 157
    .line 158
    if-nez v2, :cond_3

    .line 159
    .line 160
    cmpl-double v2, v9, v6

    .line 161
    .line 162
    if-eqz v2, :cond_5

    .line 163
    .line 164
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getUid()I

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v8, ": CPU time="

    .line 177
    .line 178
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-wide v8, v1, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    .line 182
    .line 183
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v8, " ms power="

    .line 187
    .line 188
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget-wide v8, v1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    .line 192
    .line 193
    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_4
    const-wide/16 v6, 0x0

    .line 209
    .line 210
    :cond_5
    :goto_2
    iput-wide v4, v1, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    .line 211
    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    move-wide v5, v6

    .line 221
    const/4 v7, 0x0

    .line 222
    :goto_3
    if-ge v7, v4, :cond_9

    .line 223
    .line 224
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    check-cast v8, Landroid/os/BatteryStats$Uid$Proc;

    .line 229
    .line 230
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    check-cast v9, Ljava/lang/String;

    .line 235
    .line 236
    iget-wide v10, v1, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    .line 237
    .line 238
    invoke-virtual {v8, v3}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    .line 239
    .line 240
    .line 241
    move-result-wide v12

    .line 242
    add-long/2addr v12, v10

    .line 243
    iput-wide v12, v1, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    .line 244
    .line 245
    invoke-virtual {v8, v3}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    .line 246
    .line 247
    .line 248
    move-result-wide v10

    .line 249
    invoke-virtual {v8, v3}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    .line 250
    .line 251
    .line 252
    move-result-wide v12

    .line 253
    add-long/2addr v12, v10

    .line 254
    invoke-virtual {v8, v3}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    .line 255
    .line 256
    .line 257
    move-result-wide v10

    .line 258
    add-long/2addr v10, v12

    .line 259
    iget-object v8, v1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 260
    .line 261
    if-eqz v8, :cond_7

    .line 262
    .line 263
    const-string v12, "*"

    .line 264
    .line 265
    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 266
    .line 267
    .line 268
    move-result v8

    .line 269
    if-eqz v8, :cond_6

    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_6
    long-to-double v10, v10

    .line 273
    cmpg-double v8, v5, v10

    .line 274
    .line 275
    if-gez v8, :cond_8

    .line 276
    .line 277
    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 278
    .line 279
    .line 280
    move-result v8

    .line 281
    if-nez v8, :cond_8

    .line 282
    .line 283
    iput-object v9, v1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 284
    .line 285
    move-wide v5, v10

    .line 286
    goto :goto_5

    .line 287
    :cond_7
    :goto_4
    long-to-double v5, v10

    .line 288
    iput-object v9, v1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 289
    .line 290
    :cond_8
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 291
    .line 292
    goto :goto_3

    .line 293
    :cond_9
    iget-wide v2, v1, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    .line 294
    .line 295
    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    .line 296
    .line 297
    cmp-long v6, v2, v4

    .line 298
    .line 299
    if-lez v6, :cond_b

    .line 300
    .line 301
    sget-boolean v6, Lcom/android/internal/os/CpuPowerCalculator;->DEBUG:Z

    .line 302
    .line 303
    if-eqz v6, :cond_a

    .line 304
    .line 305
    const-wide/16 v6, 0x2710

    .line 306
    .line 307
    add-long/2addr v4, v6

    .line 308
    cmp-long v2, v2, v4

    .line 309
    .line 310
    if-lez v2, :cond_a

    .line 311
    .line 312
    const-string v2, "WARNING! Cputime is more than 10 seconds behind Foreground time"

    .line 313
    .line 314
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    :cond_a
    iget-wide v2, v1, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    .line 318
    .line 319
    iput-wide v2, v1, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    .line 320
    .line 321
    :cond_b
    return-void
.end method
