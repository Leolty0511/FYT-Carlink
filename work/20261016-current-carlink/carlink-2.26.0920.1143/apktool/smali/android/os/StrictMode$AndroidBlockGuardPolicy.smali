.class Landroid/os/StrictMode$AndroidBlockGuardPolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldalvik/system/BlockGuard$Policy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidBlockGuardPolicy"
.end annotation


# instance fields
.field private mLastViolationTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyMask:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getPolicyMask()I
    .locals 1

    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    return v0
.end method

.method public handleViolation(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 11

    .line 1
    const-string v0, "StrictMode"

    .line 2
    .line 3
    if-eqz p1, :cond_13

    .line 4
    .line 5
    iget-object v1, p1, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 6
    .line 7
    if-eqz v1, :cond_13

    .line 8
    .line 9
    iget-object v1, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_8

    .line 14
    .line 15
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->access$900()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string/jumbo v2, "handleViolation; policy="

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget v2, p1, Landroid/os/StrictMode$ViolationInfo;->policy:I

    .line 30
    .line 31
    invoke-static {v1, v2, v0}, Landroid/app/m;->t(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget v1, p1, Landroid/os/StrictMode$ViolationInfo;->policy:I

    .line 35
    .line 36
    const/high16 v2, 0x400000

    .line 37
    .line 38
    and-int/2addr v1, v2

    .line 39
    const/4 v2, 0x1

    .line 40
    if-eqz v1, :cond_5

    .line 41
    .line 42
    invoke-static {}, Landroid/os/StrictMode;->access$1000()Ljava/lang/ThreadLocal;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/util/ArrayList;

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Landroid/os/StrictMode;->access$1000()Ljava/lang/ThreadLocal;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_4

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Landroid/os/StrictMode$ViolationInfo;

    .line 81
    .line 82
    iget-object v3, p1, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 83
    .line 84
    iget-object v3, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v2, v2, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 87
    .line 88
    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    return-void

    .line 97
    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_5
    invoke-virtual {p1}, Landroid/os/StrictMode$ViolationInfo;->hashCode()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iget-object v3, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Landroid/util/ArrayMap;

    .line 110
    .line 111
    const-wide/16 v4, 0x0

    .line 112
    .line 113
    if-eqz v3, :cond_6

    .line 114
    .line 115
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Ljava/lang/Long;

    .line 120
    .line 121
    if-eqz v3, :cond_7

    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 124
    .line 125
    .line 126
    move-result-wide v6

    .line 127
    goto :goto_0

    .line 128
    :cond_6
    new-instance v3, Landroid/util/ArrayMap;

    .line 129
    .line 130
    invoke-direct {v3, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 131
    .line 132
    .line 133
    iput-object v3, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Landroid/util/ArrayMap;

    .line 134
    .line 135
    :cond_7
    move-wide v6, v4

    .line 136
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 137
    .line 138
    .line 139
    move-result-wide v8

    .line 140
    iget-object v3, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Landroid/util/ArrayMap;

    .line 141
    .line 142
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 143
    .line 144
    .line 145
    move-result-object v10

    .line 146
    invoke-virtual {v3, v1, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    cmp-long v1, v6, v4

    .line 150
    .line 151
    if-nez v1, :cond_8

    .line 152
    .line 153
    const-wide v3, 0x7fffffffffffffffL

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_8
    sub-long v3, v8, v6

    .line 160
    .line 161
    :goto_1
    iget v5, p1, Landroid/os/StrictMode$ViolationInfo;->policy:I

    .line 162
    .line 163
    const/high16 v6, 0x10000

    .line 164
    .line 165
    and-int/2addr v5, v6

    .line 166
    if-eqz v5, :cond_9

    .line 167
    .line 168
    invoke-static {}, Landroid/os/StrictMode;->access$1100()Landroid/os/StrictMode$ViolationListener;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    if-eqz v5, :cond_9

    .line 173
    .line 174
    invoke-static {}, Landroid/os/StrictMode;->access$1100()Landroid/os/StrictMode$ViolationListener;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    iget-object v7, p1, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 179
    .line 180
    iget-object v7, v7, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 181
    .line 182
    invoke-interface {v5, v7}, Landroid/os/StrictMode$ViolationListener;->onViolation(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_9
    iget v5, p1, Landroid/os/StrictMode$ViolationInfo;->policy:I

    .line 186
    .line 187
    and-int/2addr v5, v6

    .line 188
    if-eqz v5, :cond_b

    .line 189
    .line 190
    const-wide/16 v5, 0x3e8

    .line 191
    .line 192
    cmp-long v5, v3, v5

    .line 193
    .line 194
    if-lez v5, :cond_b

    .line 195
    .line 196
    iget v5, p1, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 197
    .line 198
    const/4 v6, -0x1

    .line 199
    if-eq v5, v6, :cond_a

    .line 200
    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string v6, "StrictMode policy violation; ~duration="

    .line 204
    .line 205
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iget v6, p1, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 209
    .line 210
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v6, " ms: "

    .line 214
    .line 215
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    iget-object v6, p1, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 219
    .line 220
    iget-object v6, v6, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 221
    .line 222
    invoke-static {v5, v6, v0}, Landroid/app/m;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v6, "StrictMode policy violation: "

    .line 229
    .line 230
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget-object v6, p1, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 234
    .line 235
    iget-object v6, v6, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 236
    .line 237
    invoke-static {v5, v6, v0}, Landroid/app/m;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :cond_b
    :goto_2
    iget v5, p1, Landroid/os/StrictMode$ViolationInfo;->policy:I

    .line 241
    .line 242
    const/high16 v6, 0x20000

    .line 243
    .line 244
    and-int v7, v5, v6

    .line 245
    .line 246
    const/4 v8, 0x0

    .line 247
    if-eqz v7, :cond_c

    .line 248
    .line 249
    const-wide/16 v9, 0x7530

    .line 250
    .line 251
    cmp-long v3, v3, v9

    .line 252
    .line 253
    if-lez v3, :cond_c

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_c
    move v6, v8

    .line 257
    :goto_3
    const/high16 v3, 0x200000

    .line 258
    .line 259
    and-int v4, v5, v3

    .line 260
    .line 261
    if-eqz v4, :cond_d

    .line 262
    .line 263
    if-nez v1, :cond_d

    .line 264
    .line 265
    or-int/2addr v6, v3

    .line 266
    :cond_d
    if-eqz v6, :cond_11

    .line 267
    .line 268
    iget-object v1, p1, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 269
    .line 270
    iget-object v1, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 271
    .line 272
    invoke-static {v1}, Landroid/os/StrictMode;->access$1200(Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    or-int/2addr v1, v6

    .line 277
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    iget v5, p1, Landroid/os/StrictMode$ViolationInfo;->policy:I

    .line 282
    .line 283
    const/high16 v6, 0x1770000

    .line 284
    .line 285
    and-int/2addr v5, v6

    .line 286
    if-ne v5, v3, :cond_e

    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_e
    move v2, v8

    .line 290
    :goto_4
    if-eqz v2, :cond_f

    .line 291
    .line 292
    invoke-static {v1, p1}, Landroid/os/StrictMode;->access$1300(ILandroid/os/StrictMode$ViolationInfo;)V

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :cond_f
    :try_start_0
    invoke-static {v8}, Landroid/os/StrictMode;->access$1400(I)V

    .line 297
    .line 298
    .line 299
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getApplicationObject()Landroid/os/IBinder;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-interface {v2, v3, v1, p1}, Landroid/app/IActivityManager;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    .line 309
    .line 310
    goto :goto_5

    .line 311
    :catchall_0
    move-exception p1

    .line 312
    goto :goto_6

    .line 313
    :catch_0
    move-exception v1

    .line 314
    :try_start_1
    instance-of v2, v1, Landroid/os/DeadObjectException;

    .line 315
    .line 316
    if-eqz v2, :cond_10

    .line 317
    .line 318
    goto :goto_5

    .line 319
    :cond_10
    const-string v2, "RemoteException trying to handle StrictMode violation"

    .line 320
    .line 321
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    .line 323
    .line 324
    :goto_5
    invoke-static {v4}, Landroid/os/StrictMode;->access$1400(I)V

    .line 325
    .line 326
    .line 327
    goto :goto_7

    .line 328
    :goto_6
    invoke-static {v4}, Landroid/os/StrictMode;->access$1400(I)V

    .line 329
    .line 330
    .line 331
    throw p1

    .line 332
    :cond_11
    :goto_7
    iget v0, p1, Landroid/os/StrictMode$ViolationInfo;->policy:I

    .line 333
    .line 334
    const/high16 v1, 0x40000

    .line 335
    .line 336
    and-int/2addr v0, v1

    .line 337
    if-eqz v0, :cond_12

    .line 338
    .line 339
    invoke-static {p1}, Landroid/os/StrictMode;->access$1500(Landroid/os/StrictMode$ViolationInfo;)V

    .line 340
    .line 341
    .line 342
    :cond_12
    return-void

    .line 343
    :cond_13
    :goto_8
    const-string/jumbo p1, "unexpected null stacktrace"

    .line 344
    .line 345
    .line 346
    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .line 348
    .line 349
    return-void
.end method

.method public handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    iget v0, p1, Landroid/os/StrictMode$ViolationInfo;->policy:I

    .line 8
    .line 9
    const/high16 v1, 0x1770000

    .line 10
    .line 11
    and-int/2addr v0, v1

    .line 12
    const/high16 v1, 0x40000

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->access$600()Ljava/lang/ThreadLocal;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/16 v2, 0xa

    .line 32
    .line 33
    if-lt v1, v2, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x1

    .line 44
    if-le v1, v2, :cond_2

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    iget p1, p1, Landroid/os/StrictMode$ViolationInfo;->policy:I

    .line 48
    .line 49
    const/high16 v1, 0x100000

    .line 50
    .line 51
    and-int/2addr p1, v1

    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    invoke-static {}, Landroid/os/StrictMode;->access$700()Landroid/util/Singleton;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroid/view/IWindowManager;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    const/4 p1, 0x0

    .line 66
    :goto_0
    if-eqz p1, :cond_4

    .line 67
    .line 68
    :try_start_0
    invoke-interface {p1, v2}, Landroid/view/IWindowManager;->showStrictModeViolation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    :catch_0
    :cond_4
    invoke-static {}, Landroid/os/StrictMode;->access$800()Ljava/lang/ThreadLocal;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Landroid/os/Handler;

    .line 80
    .line 81
    new-instance v2, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;

    .line 82
    .line 83
    invoke-direct {v2, p0, p1, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;-><init>(Landroid/os/StrictMode$AndroidBlockGuardPolicy;Landroid/view/IWindowManager;Ljava/util/ArrayList;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_5
    :goto_1
    const/4 v0, -0x1

    .line 91
    iput v0, p1, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolation(Landroid/os/StrictMode$ViolationInfo;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public onCustomSlowCall(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->access$500()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    new-instance v0, Landroid/os/StrictMode$StrictModeCustomViolation;

    .line 16
    .line 17
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    .line 18
    .line 19
    invoke-direct {v0, v1, p1}, Landroid/os/StrictMode$StrictModeCustomViolation;-><init>(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onNetwork()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x4

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/high16 v1, 0x1000000

    .line 9
    .line 10
    and-int/2addr v0, v1

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    invoke-static {}, Landroid/os/StrictMode;->access$500()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    new-instance v0, Landroid/os/StrictMode$StrictModeNetworkViolation;

    .line 21
    .line 22
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    .line 23
    .line 24
    invoke-direct {v0, v1}, Landroid/os/StrictMode$StrictModeNetworkViolation;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    .line 35
    .line 36
    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public onReadFromDisk()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->access$500()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    new-instance v0, Landroid/os/StrictMode$StrictModeDiskReadViolation;

    .line 16
    .line 17
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroid/os/StrictMode$StrictModeDiskReadViolation;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onResourceMismatch(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->access$500()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    new-instance v0, Landroid/os/StrictMode$StrictModeResourceMismatchViolation;

    .line 16
    .line 17
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    .line 18
    .line 19
    invoke-direct {v0, v1, p1}, Landroid/os/StrictMode$StrictModeResourceMismatchViolation;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onUnbufferedIO()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->access$500()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    new-instance v0, Landroid/os/StrictMode$StrictModeUnbufferedIOViolation;

    .line 16
    .line 17
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroid/os/StrictMode$StrictModeUnbufferedIOViolation;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onWriteToDisk()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->access$500()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    new-instance v0, Landroid/os/StrictMode$StrictModeDiskWriteViolation;

    .line 16
    .line 17
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroid/os/StrictMode$StrictModeDiskWriteViolation;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setPolicyMask(I)V
    .locals 0

    iput p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    return-void
.end method

.method public startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/StrictMode$ViolationInfo;

    .line 2
    .line 3
    invoke-virtual {p1}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->getPolicy()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, p1, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Ljava/lang/Throwable;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    iput-wide v1, v0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AndroidBlockGuardPolicy; mPolicyMask="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
