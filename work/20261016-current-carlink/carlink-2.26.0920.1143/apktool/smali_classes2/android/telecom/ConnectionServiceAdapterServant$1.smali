.class Landroid/telecom/ConnectionServiceAdapterServant$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionServiceAdapterServant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionServiceAdapterServant;


# direct methods
.method public constructor <init>(Landroid/telecom/ConnectionServiceAdapterServant;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private internalHandleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :pswitch_0
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {v0, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRemoteRttRequest(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :pswitch_1
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {v0, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRttSessionRemotelyTerminated(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :pswitch_2
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 42
    .line 43
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Ljava/lang/String;

    .line 50
    .line 51
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 52
    .line 53
    invoke-interface {v0, v1, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRttInitiationFailure(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :pswitch_3
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 59
    .line 60
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Ljava/lang/String;

    .line 67
    .line 68
    invoke-interface {v0, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRttInitiationSuccess(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 76
    .line 77
    :try_start_0
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 78
    .line 79
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v1, Ljava/lang/String;

    .line 86
    .line 87
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 88
    .line 89
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 92
    .line 93
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAudioRoute(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_0

    .line 100
    .line 101
    :catchall_0
    move-exception v0

    .line 102
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 103
    .line 104
    .line 105
    throw v0

    .line 106
    :pswitch_5
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 107
    .line 108
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast p1, Ljava/lang/String;

    .line 115
    .line 116
    invoke-interface {v0, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setPulling(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_0

    .line 120
    .line 121
    :pswitch_6
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 122
    .line 123
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v1, Ljava/lang/String;

    .line 130
    .line 131
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 132
    .line 133
    invoke-interface {v0, v1, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionProperties(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_0

    .line 137
    .line 138
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 141
    .line 142
    :try_start_1
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 143
    .line 144
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v1, Ljava/lang/String;

    .line 151
    .line 152
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v2, Ljava/lang/String;

    .line 155
    .line 156
    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v4, Landroid/os/Bundle;

    .line 159
    .line 160
    invoke-interface {v0, v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :catchall_1
    move-exception v0

    .line 169
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 170
    .line 171
    .line 172
    throw v0

    .line 173
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 176
    .line 177
    :try_start_2
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 178
    .line 179
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v1, Ljava/lang/String;

    .line 186
    .line 187
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v2, Ljava/util/List;

    .line 190
    .line 191
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeExtras(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :catchall_2
    move-exception v0

    .line 200
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 201
    .line 202
    .line 203
    throw v0

    .line 204
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 207
    .line 208
    :try_start_3
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 209
    .line 210
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v1, Ljava/lang/String;

    .line 217
    .line 218
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v2, Landroid/os/Bundle;

    .line 221
    .line 222
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 226
    .line 227
    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :catchall_3
    move-exception v0

    .line 231
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 232
    .line 233
    .line 234
    throw v0

    .line 235
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 238
    .line 239
    :try_start_4
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 240
    .line 241
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast v1, Ljava/lang/String;

    .line 248
    .line 249
    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceMergeFailed(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :catchall_4
    move-exception v0

    .line 258
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 259
    .line 260
    .line 261
    throw v0

    .line 262
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 265
    .line 266
    :try_start_5
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 267
    .line 268
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v1, Ljava/lang/String;

    .line 275
    .line 276
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 277
    .line 278
    int-to-char v2, v2

    .line 279
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialChar(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_0

    .line 286
    .line 287
    :catchall_5
    move-exception v0

    .line 288
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 289
    .line 290
    .line 291
    throw v0

    .line 292
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 295
    .line 296
    :try_start_6
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 297
    .line 298
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast v1, Ljava/lang/String;

    .line 305
    .line 306
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast v2, Landroid/telecom/ParcelableConnection;

    .line 309
    .line 310
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_0

    .line 317
    .line 318
    :catchall_6
    move-exception v0

    .line 319
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 320
    .line 321
    .line 322
    throw v0

    .line 323
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 326
    .line 327
    :try_start_7
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 328
    .line 329
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 334
    .line 335
    check-cast v1, Ljava/lang/String;

    .line 336
    .line 337
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 338
    .line 339
    check-cast v2, Ljava/util/List;

    .line 340
    .line 341
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 342
    .line 343
    .line 344
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_0

    .line 348
    .line 349
    :catchall_7
    move-exception v0

    .line 350
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 351
    .line 352
    .line 353
    throw v0

    .line 354
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 357
    .line 358
    :try_start_8
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 359
    .line 360
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 365
    .line 366
    check-cast v1, Ljava/lang/String;

    .line 367
    .line 368
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast v2, Ljava/lang/String;

    .line 371
    .line 372
    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 373
    .line 374
    invoke-interface {v0, v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 375
    .line 376
    .line 377
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 378
    .line 379
    .line 380
    goto/16 :goto_0

    .line 381
    .line 382
    :catchall_8
    move-exception v0

    .line 383
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 384
    .line 385
    .line 386
    throw v0

    .line 387
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 388
    .line 389
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 390
    .line 391
    :try_start_9
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 392
    .line 393
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 398
    .line 399
    check-cast v1, Ljava/lang/String;

    .line 400
    .line 401
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast v2, Landroid/net/Uri;

    .line 404
    .line 405
    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 406
    .line 407
    invoke-interface {v0, v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAddress(Ljava/lang/String;Landroid/net/Uri;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 408
    .line 409
    .line 410
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 411
    .line 412
    .line 413
    goto/16 :goto_0

    .line 414
    .line 415
    :catchall_9
    move-exception v0

    .line 416
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 417
    .line 418
    .line 419
    throw v0

    .line 420
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 421
    .line 422
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 423
    .line 424
    :try_start_a
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 425
    .line 426
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 431
    .line 432
    check-cast v1, Ljava/lang/String;

    .line 433
    .line 434
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 435
    .line 436
    check-cast v2, Landroid/telecom/StatusHints;

    .line 437
    .line 438
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;Landroid/telecom/Logging/Session$Info;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 439
    .line 440
    .line 441
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 442
    .line 443
    .line 444
    goto/16 :goto_0

    .line 445
    .line 446
    :catchall_a
    move-exception v0

    .line 447
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 448
    .line 449
    .line 450
    throw v0

    .line 451
    :pswitch_11
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 452
    .line 453
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 458
    .line 459
    check-cast v4, Ljava/lang/String;

    .line 460
    .line 461
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 462
    .line 463
    if-ne p1, v2, :cond_0

    .line 464
    .line 465
    move v1, v2

    .line 466
    :cond_0
    invoke-interface {v0, v4, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsVoipAudioMode(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 467
    .line 468
    .line 469
    goto/16 :goto_0

    .line 470
    .line 471
    :pswitch_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 472
    .line 473
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 474
    .line 475
    :try_start_b
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 476
    .line 477
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 482
    .line 483
    check-cast v1, Ljava/lang/String;

    .line 484
    .line 485
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 486
    .line 487
    check-cast v2, Lcom/android/internal/telecom/IVideoProvider;

    .line 488
    .line 489
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Logging/Session$Info;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 490
    .line 491
    .line 492
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 493
    .line 494
    .line 495
    goto/16 :goto_0

    .line 496
    .line 497
    :catchall_b
    move-exception v0

    .line 498
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 499
    .line 500
    .line 501
    throw v0

    .line 502
    :pswitch_13
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 503
    .line 504
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 509
    .line 510
    check-cast v1, Ljava/lang/String;

    .line 511
    .line 512
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 513
    .line 514
    invoke-interface {v0, v1, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoState(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 515
    .line 516
    .line 517
    goto/16 :goto_0

    .line 518
    .line 519
    :pswitch_14
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 520
    .line 521
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 526
    .line 527
    check-cast p1, Lcom/android/internal/telecom/RemoteServiceCallback;

    .line 528
    .line 529
    invoke-interface {v0, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Landroid/telecom/Logging/Session$Info;)V

    .line 530
    .line 531
    .line 532
    goto/16 :goto_0

    .line 533
    .line 534
    :pswitch_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 535
    .line 536
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 537
    .line 538
    :try_start_c
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 539
    .line 540
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 545
    .line 546
    check-cast v1, Ljava/lang/String;

    .line 547
    .line 548
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 549
    .line 550
    check-cast v2, Ljava/lang/String;

    .line 551
    .line 552
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 553
    .line 554
    .line 555
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 556
    .line 557
    .line 558
    goto/16 :goto_0

    .line 559
    .line 560
    :catchall_c
    move-exception v0

    .line 561
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 562
    .line 563
    .line 564
    throw v0

    .line 565
    :pswitch_16
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 566
    .line 567
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 572
    .line 573
    check-cast p1, Ljava/lang/String;

    .line 574
    .line 575
    invoke-interface {v0, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 576
    .line 577
    .line 578
    goto/16 :goto_0

    .line 579
    .line 580
    :pswitch_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 581
    .line 582
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 583
    .line 584
    :try_start_d
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 585
    .line 586
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 591
    .line 592
    check-cast v1, Ljava/lang/String;

    .line 593
    .line 594
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 595
    .line 596
    check-cast v2, Landroid/telecom/ParcelableConference;

    .line 597
    .line 598
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 599
    .line 600
    .line 601
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 602
    .line 603
    .line 604
    goto/16 :goto_0

    .line 605
    .line 606
    :catchall_d
    move-exception v0

    .line 607
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 608
    .line 609
    .line 610
    throw v0

    .line 611
    :pswitch_18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 612
    .line 613
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 614
    .line 615
    :try_start_e
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 616
    .line 617
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 622
    .line 623
    check-cast v1, Ljava/lang/String;

    .line 624
    .line 625
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 626
    .line 627
    check-cast v2, Ljava/lang/String;

    .line 628
    .line 629
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 630
    .line 631
    .line 632
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 633
    .line 634
    .line 635
    goto/16 :goto_0

    .line 636
    .line 637
    :catchall_e
    move-exception v0

    .line 638
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 639
    .line 640
    .line 641
    throw v0

    .line 642
    :pswitch_19
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 643
    .line 644
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 649
    .line 650
    check-cast v1, Ljava/lang/String;

    .line 651
    .line 652
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 653
    .line 654
    invoke-interface {v0, v1, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionCapabilities(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 655
    .line 656
    .line 657
    goto/16 :goto_0

    .line 658
    .line 659
    :pswitch_1a
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 660
    .line 661
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 666
    .line 667
    check-cast v4, Ljava/lang/String;

    .line 668
    .line 669
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 670
    .line 671
    if-ne p1, v2, :cond_1

    .line 672
    .line 673
    move v1, v2

    .line 674
    :cond_1
    invoke-interface {v0, v4, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRingbackRequested(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 675
    .line 676
    .line 677
    goto/16 :goto_0

    .line 678
    .line 679
    :pswitch_1b
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 680
    .line 681
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 686
    .line 687
    check-cast p1, Ljava/lang/String;

    .line 688
    .line 689
    invoke-interface {v0, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setOnHold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 690
    .line 691
    .line 692
    goto :goto_0

    .line 693
    :pswitch_1c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 694
    .line 695
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 696
    .line 697
    :try_start_f
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 698
    .line 699
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 704
    .line 705
    check-cast v1, Ljava/lang/String;

    .line 706
    .line 707
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 708
    .line 709
    check-cast v2, Landroid/telecom/DisconnectCause;

    .line 710
    .line 711
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/telecom/Logging/Session$Info;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 712
    .line 713
    .line 714
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 715
    .line 716
    .line 717
    goto :goto_0

    .line 718
    :catchall_f
    move-exception v0

    .line 719
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 720
    .line 721
    .line 722
    throw v0

    .line 723
    :pswitch_1d
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 724
    .line 725
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 730
    .line 731
    check-cast p1, Ljava/lang/String;

    .line 732
    .line 733
    invoke-interface {v0, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDialing(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 734
    .line 735
    .line 736
    goto :goto_0

    .line 737
    :pswitch_1e
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 738
    .line 739
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 744
    .line 745
    check-cast p1, Ljava/lang/String;

    .line 746
    .line 747
    invoke-interface {v0, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRinging(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 748
    .line 749
    .line 750
    goto :goto_0

    .line 751
    :pswitch_1f
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 752
    .line 753
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 758
    .line 759
    check-cast p1, Ljava/lang/String;

    .line 760
    .line 761
    invoke-interface {v0, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setActive(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 762
    .line 763
    .line 764
    goto :goto_0

    .line 765
    :pswitch_20
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 766
    .line 767
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 768
    .line 769
    :try_start_10
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 770
    .line 771
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 776
    .line 777
    check-cast v1, Ljava/lang/String;

    .line 778
    .line 779
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 780
    .line 781
    check-cast v2, Landroid/telecom/ConnectionRequest;

    .line 782
    .line 783
    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 784
    .line 785
    check-cast v4, Landroid/telecom/ParcelableConnection;

    .line 786
    .line 787
    invoke-interface {v0, v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 788
    .line 789
    .line 790
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 791
    .line 792
    .line 793
    goto :goto_0

    .line 794
    :catchall_10
    move-exception v0

    .line 795
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 796
    .line 797
    .line 798
    throw v0

    .line 799
    :goto_0
    return-void

    .line 800
    nop

    .line 801
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionServiceAdapterServant$1;->internalHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
