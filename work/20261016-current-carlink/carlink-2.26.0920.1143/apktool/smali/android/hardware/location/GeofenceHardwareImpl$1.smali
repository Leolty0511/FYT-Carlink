.class Landroid/hardware/location/GeofenceHardwareImpl$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method public constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    const-string v0, "GeofenceTransistionCallback: GPS : GeofenceId: "

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->what:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 14
    .line 15
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->access$500()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v1, "GeofenceHardwareImpl"

    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v4, "Geofence callback reaped:"

    .line 26
    .line 27
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 41
    .line 42
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 43
    .line 44
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    monitor-enter v1

    .line 49
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 50
    .line 51
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-ge v2, v3, :cond_2

    .line 60
    .line 61
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 62
    .line 63
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 72
    .line 73
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_1

    .line 78
    .line 79
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 80
    .line 81
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 90
    .line 91
    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    invoke-virtual {v4, v5, p1}, Landroid/hardware/location/GeofenceHardwareImpl;->removeGeofence(II)Z

    .line 100
    .line 101
    .line 102
    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 103
    .line 104
    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 109
    .line 110
    .line 111
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_2
    monitor-exit v1

    .line 115
    goto/16 :goto_5

    .line 116
    .line 117
    :catchall_0
    move-exception p1

    .line 118
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    throw p1

    .line 120
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 121
    .line 122
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 123
    .line 124
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    monitor-enter v1

    .line 129
    :try_start_1
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 130
    .line 131
    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 140
    .line 141
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    if-eqz v2, :cond_3

    .line 143
    .line 144
    :try_start_2
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 145
    .line 146
    invoke-interface {v2, v0, p1}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceResume(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 147
    .line 148
    .line 149
    :catch_0
    :cond_3
    iget-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 150
    .line 151
    invoke-static {p1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_5

    .line 155
    .line 156
    :catchall_1
    move-exception p1

    .line 157
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 158
    throw p1

    .line 159
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 160
    .line 161
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 162
    .line 163
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    monitor-enter v1

    .line 168
    :try_start_4
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 169
    .line 170
    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 179
    .line 180
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 181
    if-eqz v2, :cond_4

    .line 182
    .line 183
    :try_start_5
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 184
    .line 185
    invoke-interface {v2, v0, p1}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofencePause(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 186
    .line 187
    .line 188
    :catch_1
    :cond_4
    iget-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 189
    .line 190
    invoke-static {p1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_5

    .line 194
    .line 195
    :catchall_2
    move-exception p1

    .line 196
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 197
    throw p1

    .line 198
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 199
    .line 200
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 201
    .line 202
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    monitor-enter v1

    .line 207
    :try_start_7
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 208
    .line 209
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    check-cast v3, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 218
    .line 219
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 220
    if-eqz v3, :cond_8

    .line 221
    .line 222
    :try_start_8
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 223
    .line 224
    invoke-interface {v3, v0, p1}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceRemove(II)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    .line 225
    .line 226
    .line 227
    :catch_2
    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 232
    .line 233
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    monitor-enter v1

    .line 238
    :try_start_9
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 239
    .line 240
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 245
    .line 246
    .line 247
    move v0, v2

    .line 248
    :goto_1
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 249
    .line 250
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    const/4 v4, 0x1

    .line 259
    if-ge v0, v3, :cond_6

    .line 260
    .line 261
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 262
    .line 263
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    check-cast v3, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 272
    .line 273
    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    if-ne v3, p1, :cond_5

    .line 278
    .line 279
    move v0, v4

    .line 280
    goto :goto_2

    .line 281
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 282
    .line 283
    goto :goto_1

    .line 284
    :cond_6
    move v0, v2

    .line 285
    :goto_2
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 286
    if-nez v0, :cond_8

    .line 287
    .line 288
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 289
    .line 290
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->access$200(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    if-eqz v1, :cond_8

    .line 303
    .line 304
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    check-cast v1, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    .line 309
    .line 310
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->access$300(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    if-eqz v3, :cond_7

    .line 315
    .line 316
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->access$300(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    if-ne v3, p1, :cond_7

    .line 325
    .line 326
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 327
    .line 328
    .line 329
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->access$400(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Z

    .line 330
    .line 331
    .line 332
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->access$500()Z

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    if-eqz v3, :cond_7

    .line 337
    .line 338
    const-string v3, "GeofenceHardwareImpl"

    .line 339
    .line 340
    const-string v5, "Removed reaper %s because binder %s is no longer needed."

    .line 341
    .line 342
    const/4 v6, 0x2

    .line 343
    new-array v6, v6, [Ljava/lang/Object;

    .line 344
    .line 345
    aput-object v1, v6, v2

    .line 346
    .line 347
    aput-object p1, v6, v4

    .line 348
    .line 349
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    goto :goto_3

    .line 357
    :catchall_3
    move-exception p1

    .line 358
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 359
    throw p1

    .line 360
    :cond_8
    iget-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 361
    .line 362
    invoke-static {p1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    .line 363
    .line 364
    .line 365
    goto/16 :goto_5

    .line 366
    .line 367
    :catchall_4
    move-exception p1

    .line 368
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 369
    throw p1

    .line 370
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 371
    .line 372
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 373
    .line 374
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    monitor-enter v1

    .line 379
    :try_start_c
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 380
    .line 381
    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 390
    .line 391
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 392
    if-eqz v2, :cond_9

    .line 393
    .line 394
    :try_start_d
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 395
    .line 396
    invoke-interface {v2, v0, p1}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceAdd(II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_3

    .line 397
    .line 398
    .line 399
    goto :goto_4

    .line 400
    :catch_3
    move-exception p1

    .line 401
    const-string v0, "GeofenceHardwareImpl"

    .line 402
    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    const-string v2, "Remote Exception:"

    .line 406
    .line 407
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .line 419
    .line 420
    :cond_9
    :goto_4
    iget-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 421
    .line 422
    invoke-static {p1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    .line 423
    .line 424
    .line 425
    goto/16 :goto_5

    .line 426
    .line 427
    :catchall_5
    move-exception p1

    .line 428
    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 429
    throw p1

    .line 430
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 431
    .line 432
    check-cast p1, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;

    .line 433
    .line 434
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 435
    .line 436
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    monitor-enter v1

    .line 441
    :try_start_f
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 442
    .line 443
    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    invoke-static {p1}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$600(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    move-object v3, v2

    .line 456
    check-cast v3, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 457
    .line 458
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->access$500()Z

    .line 459
    .line 460
    .line 461
    move-result v2

    .line 462
    if-eqz v2, :cond_a

    .line 463
    .line 464
    const-string v2, "GeofenceHardwareImpl"

    .line 465
    .line 466
    new-instance v4, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-static {p1}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$600(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    const-string v0, " Transition: "

    .line 479
    .line 480
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-static {p1}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$700(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    const-string v0, " Location: "

    .line 491
    .line 492
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-static {p1}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$800(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)Landroid/location/Location;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    const-string v0, ":"

    .line 503
    .line 504
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 508
    .line 509
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    .line 522
    .line 523
    :cond_a
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 524
    if-eqz v3, :cond_b

    .line 525
    .line 526
    :try_start_10
    invoke-static {p1}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$600(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    .line 527
    .line 528
    .line 529
    move-result v4

    .line 530
    invoke-static {p1}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$700(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    .line 531
    .line 532
    .line 533
    move-result v5

    .line 534
    invoke-static {p1}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$800(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)Landroid/location/Location;

    .line 535
    .line 536
    .line 537
    move-result-object v6

    .line 538
    invoke-static {p1}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$900(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)J

    .line 539
    .line 540
    .line 541
    move-result-wide v7

    .line 542
    invoke-static {p1}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$1000(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    .line 543
    .line 544
    .line 545
    move-result v9

    .line 546
    invoke-interface/range {v3 .. v9}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceTransition(IILandroid/location/Location;JI)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_4

    .line 547
    .line 548
    .line 549
    :catch_4
    :cond_b
    iget-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 550
    .line 551
    invoke-static {p1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    .line 552
    .line 553
    .line 554
    goto :goto_5

    .line 555
    :catchall_6
    move-exception p1

    .line 556
    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 557
    throw p1

    .line 558
    :goto_5
    return-void

    .line 559
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
