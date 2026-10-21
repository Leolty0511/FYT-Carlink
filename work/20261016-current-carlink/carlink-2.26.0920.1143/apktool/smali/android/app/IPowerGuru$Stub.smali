.class public abstract Landroid/app/IPowerGuru$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/app/IPowerGuru;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IPowerGuru;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IPowerGuru$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IPowerGuru"

.field static final TRANSACTION_addConstrainedListAppBySystem:I = 0x9

.field static final TRANSACTION_addWhiteAppfromList:I = 0x8

.field static final TRANSACTION_delWhiteAppfromList:I = 0x6

.field static final TRANSACTION_getBeatList:I = 0x4

.field static final TRANSACTION_getOrignalAlignInterval:I = 0xb

.field static final TRANSACTION_getWakeupAlarmCount:I = 0xf

.field static final TRANSACTION_getWhiteCandicateList:I = 0x7

.field static final TRANSACTION_getWhiteList:I = 0x5

.field static final TRANSACTION_noteWakeupAlarm:I = 0xe

.field static final TRANSACTION_notifyAlarm:I = 0x3

.field static final TRANSACTION_notifyDozeStateChanged:I = 0xd

.field static final TRANSACTION_notifyPowerguruAlarm:I = 0x2

.field static final TRANSACTION_removeConstrainedListAppBySystem:I = 0xa

.field static final TRANSACTION_setAlignInterval:I = 0xc

.field static final TRANSACTION_testHello:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.app.IPowerGuru"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IPowerGuru;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "android.app.IPowerGuru"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Landroid/app/IPowerGuru;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/app/IPowerGuru;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/app/IPowerGuru$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/app/IPowerGuru$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    move-object/from16 v14, p3

    .line 8
    .line 9
    const v2, 0x5f4e5446

    .line 10
    .line 11
    .line 12
    const/16 v18, 0x1

    .line 13
    .line 14
    const-string v3, "android.app.IPowerGuru"

    .line 15
    .line 16
    if-eq v0, v2, :cond_4

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v15, v0}, Landroid/app/IPowerGuru;->getWakeupAlarmCount(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    return v18

    .line 45
    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-interface {v15, v0, v1}, Landroid/app/IPowerGuru;->noteWakeupAlarm(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    .line 61
    .line 62
    return v18

    .line 63
    :pswitch_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-interface/range {p0 .. p0}, Landroid/app/IPowerGuru;->notifyDozeStateChanged()V

    .line 67
    .line 68
    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    .line 71
    .line 72
    return v18

    .line 73
    :pswitch_3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-interface {v15, v0}, Landroid/app/IPowerGuru;->setAlignInterval(I)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    .line 89
    .line 90
    return v18

    .line 91
    :pswitch_4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-interface/range {p0 .. p0}, Landroid/app/IPowerGuru;->getOrignalAlignInterval()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    .line 103
    .line 104
    return v18

    .line 105
    :pswitch_5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-interface {v15, v0}, Landroid/app/IPowerGuru;->removeConstrainedListAppBySystem(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    .line 121
    .line 122
    return v18

    .line 123
    :pswitch_6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-interface {v15, v0}, Landroid/app/IPowerGuru;->addConstrainedListAppBySystem(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    .line 139
    .line 140
    return v18

    .line 141
    :pswitch_7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-interface {v15, v0}, Landroid/app/IPowerGuru;->addWhiteAppfromList(Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    .line 157
    .line 158
    return v18

    .line 159
    :pswitch_8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-interface/range {p0 .. p0}, Landroid/app/IPowerGuru;->getWhiteCandicateList()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 170
    .line 171
    .line 172
    return v18

    .line 173
    :pswitch_9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-interface {v15, v0}, Landroid/app/IPowerGuru;->delWhiteAppfromList(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    .line 189
    .line 190
    return v18

    .line 191
    :pswitch_a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-interface/range {p0 .. p0}, Landroid/app/IPowerGuru;->getWhiteList()Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 202
    .line 203
    .line 204
    return v18

    .line 205
    :pswitch_b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-interface/range {p0 .. p0}, Landroid/app/IPowerGuru;->getBeatList()Ljava/util/List;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 216
    .line 217
    .line 218
    return v18

    .line 219
    :pswitch_c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 227
    .line 228
    .line 229
    move-result-wide v4

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 231
    .line 232
    .line 233
    move-result-wide v6

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 235
    .line 236
    .line 237
    move-result-wide v8

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 239
    .line 240
    .line 241
    move-result-wide v10

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 243
    .line 244
    .line 245
    move-result-wide v12

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_0

    .line 251
    .line 252
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 253
    .line 254
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    check-cast v0, Landroid/app/PendingIntent;

    .line 259
    .line 260
    move-object/from16 v19, v0

    .line 261
    .line 262
    goto :goto_0

    .line 263
    :cond_0
    move-object/from16 v19, v2

    .line 264
    .line 265
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 266
    .line 267
    .line 268
    move-result v20

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-eqz v0, :cond_1

    .line 274
    .line 275
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 276
    .line 277
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    check-cast v0, Landroid/os/WorkSource;

    .line 282
    .line 283
    move-object/from16 v21, v0

    .line 284
    .line 285
    goto :goto_1

    .line 286
    :cond_1
    move-object/from16 v21, v2

    .line 287
    .line 288
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-eqz v0, :cond_2

    .line 293
    .line 294
    sget-object v0, Landroid/app/AlarmManager$AlarmClockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 295
    .line 296
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    check-cast v0, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 301
    .line 302
    move-object/from16 v22, v0

    .line 303
    .line 304
    goto :goto_2

    .line 305
    :cond_2
    move-object/from16 v22, v2

    .line 306
    .line 307
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 308
    .line 309
    .line 310
    move-result v16

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v17

    .line 315
    move-object/from16 v0, p0

    .line 316
    .line 317
    move v1, v3

    .line 318
    move-wide v2, v4

    .line 319
    move-wide v4, v6

    .line 320
    move-wide v6, v8

    .line 321
    move-wide v8, v10

    .line 322
    move-wide v10, v12

    .line 323
    move-object/from16 v12, v19

    .line 324
    .line 325
    move/from16 v13, v20

    .line 326
    .line 327
    move-object/from16 v14, v21

    .line 328
    .line 329
    move-object/from16 v15, v22

    .line 330
    .line 331
    invoke-interface/range {v0 .. v17}, Landroid/app/IPowerGuru;->notifyAlarm(IJJJJJLandroid/app/PendingIntent;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)Z

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    .line 337
    .line 338
    move-object/from16 v13, p3

    .line 339
    .line 340
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    .line 342
    .line 343
    return v18

    .line 344
    :pswitch_d
    move-object v13, v14

    .line 345
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 353
    .line 354
    .line 355
    move-result-wide v4

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 357
    .line 358
    .line 359
    move-result-wide v6

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 361
    .line 362
    .line 363
    move-result-wide v8

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 365
    .line 366
    .line 367
    move-result-wide v10

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 369
    .line 370
    .line 371
    move-result-wide v14

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    if-eqz v0, :cond_3

    .line 377
    .line 378
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 379
    .line 380
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    check-cast v0, Landroid/app/PendingIntent;

    .line 385
    .line 386
    move-object v12, v0

    .line 387
    goto :goto_3

    .line 388
    :cond_3
    move-object v12, v2

    .line 389
    :goto_3
    move-object/from16 v0, p0

    .line 390
    .line 391
    move v1, v3

    .line 392
    move-wide v2, v4

    .line 393
    move-wide v4, v6

    .line 394
    move-wide v6, v8

    .line 395
    move-wide v8, v10

    .line 396
    move-wide v10, v14

    .line 397
    invoke-interface/range {v0 .. v12}, Landroid/app/IPowerGuru;->notifyPowerguruAlarm(IJJJJJLandroid/app/PendingIntent;)Z

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    .line 406
    .line 407
    return v18

    .line 408
    :pswitch_e
    move-object v13, v14

    .line 409
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    invoke-interface/range {p0 .. p0}, Landroid/app/IPowerGuru;->testHello()V

    .line 413
    .line 414
    .line 415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    .line 417
    .line 418
    return v18

    .line 419
    :cond_4
    move-object v13, v14

    .line 420
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    return v18

    .line 424
    nop

    .line 425
    :pswitch_data_0
    .packed-switch 0x1
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
