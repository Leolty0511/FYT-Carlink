.class public Landroid/os/PerformanceCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PerformanceCollector$PerformanceResultsWriter;
    }
.end annotation


# static fields
.field public static final METRIC_KEY_CPU_TIME:Ljava/lang/String; = "cpu_time"

.field public static final METRIC_KEY_EXECUTION_TIME:Ljava/lang/String; = "execution_time"

.field public static final METRIC_KEY_GC_INVOCATION_COUNT:Ljava/lang/String; = "gc_invocation_count"

.field public static final METRIC_KEY_GLOBAL_ALLOC_COUNT:Ljava/lang/String; = "global_alloc_count"

.field public static final METRIC_KEY_GLOBAL_ALLOC_SIZE:Ljava/lang/String; = "global_alloc_size"

.field public static final METRIC_KEY_GLOBAL_FREED_COUNT:Ljava/lang/String; = "global_freed_count"

.field public static final METRIC_KEY_GLOBAL_FREED_SIZE:Ljava/lang/String; = "global_freed_size"

.field public static final METRIC_KEY_ITERATIONS:Ljava/lang/String; = "iterations"

.field public static final METRIC_KEY_JAVA_ALLOCATED:Ljava/lang/String; = "java_allocated"

.field public static final METRIC_KEY_JAVA_FREE:Ljava/lang/String; = "java_free"

.field public static final METRIC_KEY_JAVA_PRIVATE_DIRTY:Ljava/lang/String; = "java_private_dirty"

.field public static final METRIC_KEY_JAVA_PSS:Ljava/lang/String; = "java_pss"

.field public static final METRIC_KEY_JAVA_SHARED_DIRTY:Ljava/lang/String; = "java_shared_dirty"

.field public static final METRIC_KEY_JAVA_SIZE:Ljava/lang/String; = "java_size"

.field public static final METRIC_KEY_LABEL:Ljava/lang/String; = "label"

.field public static final METRIC_KEY_NATIVE_ALLOCATED:Ljava/lang/String; = "native_allocated"

.field public static final METRIC_KEY_NATIVE_FREE:Ljava/lang/String; = "native_free"

.field public static final METRIC_KEY_NATIVE_PRIVATE_DIRTY:Ljava/lang/String; = "native_private_dirty"

.field public static final METRIC_KEY_NATIVE_PSS:Ljava/lang/String; = "native_pss"

.field public static final METRIC_KEY_NATIVE_SHARED_DIRTY:Ljava/lang/String; = "native_shared_dirty"

.field public static final METRIC_KEY_NATIVE_SIZE:Ljava/lang/String; = "native_size"

.field public static final METRIC_KEY_OTHER_PRIVATE_DIRTY:Ljava/lang/String; = "other_private_dirty"

.field public static final METRIC_KEY_OTHER_PSS:Ljava/lang/String; = "other_pss"

.field public static final METRIC_KEY_OTHER_SHARED_DIRTY:Ljava/lang/String; = "other_shared_dirty"

.field public static final METRIC_KEY_PRE_RECEIVED_TRANSACTIONS:Ljava/lang/String; = "pre_received_transactions"

.field public static final METRIC_KEY_PRE_SENT_TRANSACTIONS:Ljava/lang/String; = "pre_sent_transactions"

.field public static final METRIC_KEY_RECEIVED_TRANSACTIONS:Ljava/lang/String; = "received_transactions"

.field public static final METRIC_KEY_SENT_TRANSACTIONS:Ljava/lang/String; = "sent_transactions"


# instance fields
.field private mCpuTime:J

.field private mExecTime:J

.field private mPerfMeasurement:Landroid/os/Bundle;

.field private mPerfSnapshot:Landroid/os/Bundle;

.field private mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

.field private mSnapshotCpuTime:J

.field private mSnapshotExecTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/PerformanceCollector;->setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V

    return-void
.end method

.method private endPerformanceSnapshot()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-wide v3, v0, Landroid/os/PerformanceCollector;->mSnapshotCpuTime:J

    .line 8
    .line 9
    sub-long/2addr v1, v3

    .line 10
    iput-wide v1, v0, Landroid/os/PerformanceCollector;->mSnapshotCpuTime:J

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iget-wide v3, v0, Landroid/os/PerformanceCollector;->mSnapshotExecTime:J

    .line 17
    .line 18
    sub-long/2addr v1, v3

    .line 19
    iput-wide v1, v0, Landroid/os/PerformanceCollector;->mSnapshotExecTime:J

    .line 20
    .line 21
    invoke-static {}, Landroid/os/PerformanceCollector;->stopAllocCounting()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    const-wide/16 v3, 0x400

    .line 29
    .line 30
    div-long/2addr v1, v3

    .line 31
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    div-long/2addr v5, v3

    .line 36
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    .line 37
    .line 38
    .line 39
    move-result-wide v7

    .line 40
    div-long/2addr v7, v3

    .line 41
    new-instance v9, Landroid/os/Debug$MemoryInfo;

    .line 42
    .line 43
    invoke-direct {v9}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {v9}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    invoke-virtual {v10}, Ljava/lang/Runtime;->totalMemory()J

    .line 54
    .line 55
    .line 56
    move-result-wide v11

    .line 57
    div-long/2addr v11, v3

    .line 58
    invoke-virtual {v10}, Ljava/lang/Runtime;->freeMemory()J

    .line 59
    .line 60
    .line 61
    move-result-wide v13

    .line 62
    div-long/2addr v13, v3

    .line 63
    sub-long v3, v11, v13

    .line 64
    .line 65
    invoke-static {}, Landroid/os/PerformanceCollector;->getBinderCounts()Landroid/os/Bundle;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    invoke-virtual {v10}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 70
    .line 71
    .line 72
    move-result-object v15

    .line 73
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v15

    .line 77
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v16

    .line 81
    if-eqz v16, :cond_0

    .line 82
    .line 83
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v16

    .line 87
    move-object/from16 v17, v15

    .line 88
    .line 89
    move-object/from16 v15, v16

    .line 90
    .line 91
    check-cast v15, Ljava/lang/String;

    .line 92
    .line 93
    move-wide/from16 v18, v13

    .line 94
    .line 95
    iget-object v13, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 96
    .line 97
    move-wide/from16 v20, v3

    .line 98
    .line 99
    invoke-virtual {v10, v15}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 100
    .line 101
    .line 102
    move-result-wide v3

    .line 103
    invoke-virtual {v13, v15, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 104
    .line 105
    .line 106
    move-object/from16 v15, v17

    .line 107
    .line 108
    move-wide/from16 v13, v18

    .line 109
    .line 110
    move-wide/from16 v3, v20

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_0
    move-wide/from16 v20, v3

    .line 114
    .line 115
    move-wide/from16 v18, v13

    .line 116
    .line 117
    invoke-static {}, Landroid/os/PerformanceCollector;->getAllocCounts()Landroid/os/Bundle;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v3}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    if-eqz v10, :cond_1

    .line 134
    .line 135
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    check-cast v10, Ljava/lang/String;

    .line 140
    .line 141
    iget-object v13, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 142
    .line 143
    invoke-virtual {v3, v10}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 144
    .line 145
    .line 146
    move-result-wide v14

    .line 147
    invoke-virtual {v13, v10, v14, v15}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_1
    iget-object v3, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 152
    .line 153
    const-string v4, "execution_time"

    .line 154
    .line 155
    iget-wide v13, v0, Landroid/os/PerformanceCollector;->mSnapshotExecTime:J

    .line 156
    .line 157
    invoke-virtual {v3, v4, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 158
    .line 159
    .line 160
    iget-object v3, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 161
    .line 162
    const-string v4, "cpu_time"

    .line 163
    .line 164
    iget-wide v13, v0, Landroid/os/PerformanceCollector;->mSnapshotCpuTime:J

    .line 165
    .line 166
    invoke-virtual {v3, v4, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 167
    .line 168
    .line 169
    iget-object v3, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 170
    .line 171
    const-string/jumbo v4, "native_size"

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 175
    .line 176
    .line 177
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 178
    .line 179
    const-string/jumbo v2, "native_allocated"

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v2, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 183
    .line 184
    .line 185
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 186
    .line 187
    const-string/jumbo v2, "native_free"

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v2, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 191
    .line 192
    .line 193
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 194
    .line 195
    iget v2, v9, Landroid/os/Debug$MemoryInfo;->nativePss:I

    .line 196
    .line 197
    int-to-long v2, v2

    .line 198
    const-string/jumbo v4, "native_pss"

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 202
    .line 203
    .line 204
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 205
    .line 206
    iget v2, v9, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 207
    .line 208
    int-to-long v2, v2

    .line 209
    const-string/jumbo v4, "native_private_dirty"

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 213
    .line 214
    .line 215
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 216
    .line 217
    iget v2, v9, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    .line 218
    .line 219
    int-to-long v2, v2

    .line 220
    const-string/jumbo v4, "native_shared_dirty"

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 224
    .line 225
    .line 226
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 227
    .line 228
    const-string/jumbo v2, "java_size"

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v2, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 232
    .line 233
    .line 234
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 235
    .line 236
    const-string/jumbo v2, "java_allocated"

    .line 237
    .line 238
    .line 239
    move-wide/from16 v11, v20

    .line 240
    .line 241
    invoke-virtual {v1, v2, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 242
    .line 243
    .line 244
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 245
    .line 246
    const-string/jumbo v2, "java_free"

    .line 247
    .line 248
    .line 249
    move-wide/from16 v13, v18

    .line 250
    .line 251
    invoke-virtual {v1, v2, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 252
    .line 253
    .line 254
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 255
    .line 256
    iget v2, v9, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    .line 257
    .line 258
    int-to-long v2, v2

    .line 259
    const-string/jumbo v4, "java_pss"

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 263
    .line 264
    .line 265
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 266
    .line 267
    iget v2, v9, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 268
    .line 269
    int-to-long v2, v2

    .line 270
    const-string/jumbo v4, "java_private_dirty"

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 274
    .line 275
    .line 276
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 277
    .line 278
    iget v2, v9, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    .line 279
    .line 280
    int-to-long v2, v2

    .line 281
    const-string/jumbo v4, "java_shared_dirty"

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 285
    .line 286
    .line 287
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 288
    .line 289
    iget v2, v9, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 290
    .line 291
    int-to-long v2, v2

    .line 292
    const-string/jumbo v4, "other_pss"

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 296
    .line 297
    .line 298
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 299
    .line 300
    iget v2, v9, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 301
    .line 302
    int-to-long v2, v2

    .line 303
    const-string/jumbo v4, "other_private_dirty"

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 307
    .line 308
    .line 309
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 310
    .line 311
    iget v2, v9, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    .line 312
    .line 313
    int-to-long v2, v2

    .line 314
    const-string/jumbo v4, "other_shared_dirty"

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 318
    .line 319
    .line 320
    return-void
.end method

.method private static getAllocCounts()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    int-to-long v1, v1

    .line 11
    const-string/jumbo v3, "global_alloc_count"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    int-to-long v1, v1

    .line 22
    const-string/jumbo v3, "global_alloc_size"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/Debug;->getGlobalFreedCount()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    int-to-long v1, v1

    .line 33
    const-string/jumbo v3, "global_freed_count"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Landroid/os/Debug;->getGlobalFreedSize()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    int-to-long v1, v1

    .line 44
    const-string/jumbo v3, "global_freed_size"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/os/Debug;->getGlobalGcInvocationCount()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    int-to-long v1, v1

    .line 55
    const-string v3, "gc_invocation_count"

    .line 56
    .line 57
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 58
    .line 59
    .line 60
    return-object v0
.end method

.method private static getBinderCounts()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Debug;->getBinderSentTransactions()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    int-to-long v1, v1

    .line 11
    const-string/jumbo v3, "sent_transactions"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Debug;->getBinderReceivedTransactions()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    int-to-long v1, v1

    .line 22
    const-string/jumbo v3, "received_transactions"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method private static startAllocCounting()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/Debug;->resetAllCounts()V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private startPerformanceSnapshot()V
    .locals 7

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/PerformanceCollector;->getBinderCounts()Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 33
    .line 34
    const-string/jumbo v4, "pre_"

    .line 35
    .line 36
    .line 37
    invoke-static {v4, v2}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-static {}, Landroid/os/PerformanceCollector;->startAllocCounting()V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    iput-wide v0, p0, Landroid/os/PerformanceCollector;->mSnapshotExecTime:J

    .line 57
    .line 58
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    iput-wide v0, p0, Landroid/os/PerformanceCollector;->mSnapshotCpuTime:J

    .line 63
    .line 64
    return-void
.end method

.method private static stopAllocCounting()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public addIteration(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-wide v2, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    .line 15
    .line 16
    sub-long/2addr v0, v2

    .line 17
    iput-wide v0, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    .line 18
    .line 19
    new-instance v0, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v1, "label"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string p1, "execution_time"

    .line 31
    .line 32
    iget-wide v1, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    .line 33
    .line 34
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 35
    .line 36
    .line 37
    const-string p1, "cpu_time"

    .line 38
    .line 39
    iget-wide v1, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    .line 40
    .line 41
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Landroid/os/PerformanceCollector;->mPerfMeasurement:Landroid/os/Bundle;

    .line 45
    .line 46
    const-string/jumbo v1, "iterations"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    iput-wide v1, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    .line 61
    .line 62
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    iput-wide v1, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    .line 67
    .line 68
    return-object v0
.end method

.method public addMeasurement(Ljava/lang/String;F)V
    .locals 1

    .line 3
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeMeasurement(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method public addMeasurement(Ljava/lang/String;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeMeasurement(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public addMeasurement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1, p2}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeMeasurement(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public beginSnapshot(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeBeginSnapshot(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Landroid/os/PerformanceCollector;->startPerformanceSnapshot()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public endSnapshot()Landroid/os/Bundle;
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/PerformanceCollector;->endPerformanceSnapshot()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-interface {v0, v1}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeEndSnapshot(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 14
    .line 15
    return-object v0
.end method

.method public setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V
    .locals 0

    iput-object p1, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    return-void
.end method

.method public startTiming(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeStartTiming(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroid/os/PerformanceCollector;->mPerfMeasurement:Landroid/os/Bundle;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string/jumbo v1, "iterations"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    iput-wide v0, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    iput-wide v0, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    .line 37
    .line 38
    return-void
.end method

.method public stopTiming(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/PerformanceCollector;->addIteration(Ljava/lang/String;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfMeasurement:Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-interface {p1, v0}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeStopTiming(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Landroid/os/PerformanceCollector;->mPerfMeasurement:Landroid/os/Bundle;

    .line 14
    .line 15
    return-object p1
.end method
