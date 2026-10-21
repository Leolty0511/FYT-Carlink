.class Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AbstractThreadedSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncThread"
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mAuthority:Ljava/lang/String;

.field private final mExtras:Landroid/os/Bundle;

.field private final mSyncContext:Landroid/content/SyncContext;

.field private final mThreadsKey:Landroid/accounts/Account;

.field final synthetic this$0:Landroid/content/AbstractThreadedSyncAdapter;


# direct methods
.method private constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 0

    .line 2
    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    .line 3
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object p3, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    .line 5
    iput-object p4, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    .line 7
    iput-object p6, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mExtras:Landroid/os/Bundle;

    .line 8
    invoke-static {p1, p5}, Landroid/content/AbstractThreadedSyncAdapter;->access$200(Landroid/content/AbstractThreadedSyncAdapter;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object p1

    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/AbstractThreadedSyncAdapter$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;-><init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic access$1000(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/accounts/Account;
    .locals 0

    iget-object p0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    return-object p0
.end method

.method public static synthetic access$800(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/content/SyncContext;
    .locals 0

    iget-object p0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    return-object p0
.end method

.method public static synthetic access$900(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    return-object p0
.end method

.method private isCanceled()Z
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "SyncAdapter"

    .line 13
    .line 14
    const-string v1, "Thread started"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    .line 20
    .line 21
    const-wide/16 v1, 0x80

    .line 22
    .line 23
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Landroid/content/SyncResult;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/content/SyncResult;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v9, 0x1

    .line 32
    const/4 v3, 0x0

    .line 33
    :try_start_0
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_4

    .line 38
    .line 39
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    const-string v4, "SyncAdapter"

    .line 46
    .line 47
    const-string v5, "Already canceled"

    .line 48
    .line 49
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    .line 67
    .line 68
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->access$300(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    monitor-enter v4

    .line 73
    :try_start_1
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    .line 74
    .line 75
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->access$400(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    const-string v0, "SyncAdapter"

    .line 92
    .line 93
    const-string v1, "Thread finished"

    .line 94
    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    :cond_3
    return-void

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    throw v0

    .line 102
    :cond_4
    :try_start_3
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_5

    .line 107
    .line 108
    const-string v4, "SyncAdapter"

    .line 109
    .line 110
    const-string v5, "Calling onPerformSync..."

    .line 111
    .line 112
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    :cond_5
    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    .line 116
    .line 117
    invoke-static {v4}, Landroid/content/AbstractThreadedSyncAdapter;->access$1200(Landroid/content/AbstractThreadedSyncAdapter;)Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    iget-object v5, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    .line 128
    .line 129
    .line 130
    move-result-object v10
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 131
    if-eqz v10, :cond_6

    .line 132
    .line 133
    :try_start_4
    iget-object v3, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    .line 134
    .line 135
    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    .line 136
    .line 137
    iget-object v5, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mExtras:Landroid/os/Bundle;

    .line 138
    .line 139
    iget-object v6, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    .line 140
    .line 141
    move-object v7, v10

    .line 142
    move-object v8, v0

    .line 143
    invoke-virtual/range {v3 .. v8}, Landroid/content/AbstractThreadedSyncAdapter;->onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_6
    iput-boolean v9, v0, Landroid/content/SyncResult;->databaseError:Z

    .line 148
    .line 149
    :goto_0
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-eqz v3, :cond_7

    .line 154
    .line 155
    const-string v3, "SyncAdapter"

    .line 156
    .line 157
    const-string/jumbo v4, "onPerformSync done"

    .line 158
    .line 159
    .line 160
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 161
    .line 162
    .line 163
    :cond_7
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 164
    .line 165
    .line 166
    if-eqz v10, :cond_8

    .line 167
    .line 168
    invoke-virtual {v10}, Landroid/content/ContentProviderClient;->release()Z

    .line 169
    .line 170
    .line 171
    :cond_8
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_9

    .line 176
    .line 177
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    .line 178
    .line 179
    invoke-virtual {v1, v0}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    .line 180
    .line 181
    .line 182
    :cond_9
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    .line 183
    .line 184
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->access$300(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    monitor-enter v3

    .line 189
    :try_start_5
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    .line 190
    .line 191
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->access$400(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 201
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_e

    .line 206
    .line 207
    goto/16 :goto_4

    .line 208
    .line 209
    :catchall_1
    move-exception v0

    .line 210
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 211
    throw v0

    .line 212
    :catchall_2
    move-exception v4

    .line 213
    move-object v3, v10

    .line 214
    goto/16 :goto_5

    .line 215
    .line 216
    :catch_0
    move-exception v4

    .line 217
    goto :goto_1

    .line 218
    :catch_1
    move-exception v4

    .line 219
    :goto_1
    move-object v3, v10

    .line 220
    goto :goto_2

    .line 221
    :catch_2
    move-exception v4

    .line 222
    move-object v3, v10

    .line 223
    goto :goto_3

    .line 224
    :catchall_3
    move-exception v4

    .line 225
    goto :goto_5

    .line 226
    :catch_3
    move-exception v4

    .line 227
    goto :goto_2

    .line 228
    :catch_4
    move-exception v4

    .line 229
    :goto_2
    :try_start_7
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    if-eqz v5, :cond_a

    .line 234
    .line 235
    const-string v5, "SyncAdapter"

    .line 236
    .line 237
    const-string v6, "caught exception"

    .line 238
    .line 239
    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    .line 241
    .line 242
    :cond_a
    throw v4

    .line 243
    :catch_5
    move-exception v4

    .line 244
    :goto_3
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-eqz v5, :cond_b

    .line 249
    .line 250
    const-string v5, "SyncAdapter"

    .line 251
    .line 252
    const-string v6, "SecurityException"

    .line 253
    .line 254
    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    .line 256
    .line 257
    :cond_b
    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    .line 258
    .line 259
    iget-object v5, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    .line 260
    .line 261
    iget-object v6, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mExtras:Landroid/os/Bundle;

    .line 262
    .line 263
    iget-object v7, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/content/AbstractThreadedSyncAdapter;->onSecurityException(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;)V

    .line 266
    .line 267
    .line 268
    iput-boolean v9, v0, Landroid/content/SyncResult;->databaseError:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 269
    .line 270
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 271
    .line 272
    .line 273
    if-eqz v3, :cond_c

    .line 274
    .line 275
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 276
    .line 277
    .line 278
    :cond_c
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-nez v1, :cond_d

    .line 283
    .line 284
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    .line 285
    .line 286
    invoke-virtual {v1, v0}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    .line 287
    .line 288
    .line 289
    :cond_d
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    .line 290
    .line 291
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->access$300(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    monitor-enter v4

    .line 296
    :try_start_8
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    .line 297
    .line 298
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->access$400(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    .line 303
    .line 304
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 308
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-eqz v0, :cond_e

    .line 313
    .line 314
    :goto_4
    const-string v0, "SyncAdapter"

    .line 315
    .line 316
    const-string v1, "Thread finished"

    .line 317
    .line 318
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    :cond_e
    return-void

    .line 322
    :catchall_4
    move-exception v0

    .line 323
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 324
    throw v0

    .line 325
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 326
    .line 327
    .line 328
    if-eqz v3, :cond_f

    .line 329
    .line 330
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 331
    .line 332
    .line 333
    :cond_f
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    if-nez v1, :cond_10

    .line 338
    .line 339
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    .line 340
    .line 341
    invoke-virtual {v1, v0}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    .line 342
    .line 343
    .line 344
    :cond_10
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    .line 345
    .line 346
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->access$300(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    monitor-enter v0

    .line 351
    :try_start_a
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    .line 352
    .line 353
    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->access$400(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    .line 358
    .line 359
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 363
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_11

    .line 368
    .line 369
    const-string v0, "SyncAdapter"

    .line 370
    .line 371
    const-string v1, "Thread finished"

    .line 372
    .line 373
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    :cond_11
    throw v4

    .line 377
    :catchall_5
    move-exception v1

    .line 378
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 379
    throw v1
.end method
