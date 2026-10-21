.class public abstract Landroid/bluetooth/IBluetoothGattServerCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattServerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGattServerCallback"

.field static final TRANSACTION_onCharacteristicReadRequest:I = 0x4

.field static final TRANSACTION_onCharacteristicWriteRequest:I = 0x6

.field static final TRANSACTION_onConnectionUpdated:I = 0xd

.field static final TRANSACTION_onDescriptorReadRequest:I = 0x5

.field static final TRANSACTION_onDescriptorWriteRequest:I = 0x7

.field static final TRANSACTION_onExecuteWrite:I = 0x8

.field static final TRANSACTION_onMtuChanged:I = 0xa

.field static final TRANSACTION_onNotificationSent:I = 0x9

.field static final TRANSACTION_onPhyRead:I = 0xc

.field static final TRANSACTION_onPhyUpdate:I = 0xb

.field static final TRANSACTION_onServerConnectionState:I = 0x2

.field static final TRANSACTION_onServerRegistered:I = 0x1

.field static final TRANSACTION_onServiceAdded:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.bluetooth.IBluetoothGattServerCallback"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattServerCallback;
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
    const-string v0, "android.bluetooth.IBluetoothGattServerCallback"

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
    instance-of v1, v0, Landroid/bluetooth/IBluetoothGattServerCallback;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/bluetooth/IBluetoothGattServerCallback;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 13

    .line 1
    move-object v9, p0

    .line 2
    move v0, p1

    .line 3
    move-object v1, p2

    .line 4
    const v2, 0x5f4e5446

    .line 5
    .line 6
    .line 7
    const-string v3, "android.bluetooth.IBluetoothGattServerCallback"

    .line 8
    .line 9
    const/4 v10, 0x1

    .line 10
    if-eq v0, v2, :cond_9

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0

    .line 21
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    move-object v0, p0

    .line 45
    move-object v1, v2

    .line 46
    move v2, v3

    .line 47
    move v3, v4

    .line 48
    move v4, v5

    .line 49
    move v5, v6

    .line 50
    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGattServerCallback;->onConnectionUpdated(Ljava/lang/String;IIII)V

    .line 51
    .line 52
    .line 53
    return v10

    .line 54
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-interface {p0, v0, v2, v3, v1}, Landroid/bluetooth/IBluetoothGattServerCallback;->onPhyRead(Ljava/lang/String;III)V

    .line 74
    .line 75
    .line 76
    return v10

    .line 77
    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-interface {p0, v0, v2, v3, v1}, Landroid/bluetooth/IBluetoothGattServerCallback;->onPhyUpdate(Ljava/lang/String;III)V

    .line 97
    .line 98
    .line 99
    return v10

    .line 100
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-interface {p0, v0, v1}, Landroid/bluetooth/IBluetoothGattServerCallback;->onMtuChanged(Ljava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    return v10

    .line 115
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    invoke-interface {p0, v0, v1}, Landroid/bluetooth/IBluetoothGattServerCallback;->onNotificationSent(Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    return v10

    .line 130
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_0

    .line 146
    .line 147
    move v2, v10

    .line 148
    :cond_0
    invoke-interface {p0, v0, v3, v2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onExecuteWrite(Ljava/lang/String;IZ)V

    .line 149
    .line 150
    .line 151
    return v10

    .line 152
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_1

    .line 176
    .line 177
    move v7, v10

    .line 178
    goto :goto_0

    .line 179
    :cond_1
    move v7, v2

    .line 180
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_2

    .line 185
    .line 186
    move v8, v10

    .line 187
    goto :goto_1

    .line 188
    :cond_2
    move v8, v2

    .line 189
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 194
    .line 195
    .line 196
    move-result-object v12

    .line 197
    move-object v0, p0

    .line 198
    move-object v1, v3

    .line 199
    move v2, v4

    .line 200
    move v3, v5

    .line 201
    move v4, v6

    .line 202
    move v5, v7

    .line 203
    move v6, v8

    .line 204
    move v7, v11

    .line 205
    move-object v8, v12

    .line 206
    invoke-interface/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGattServerCallback;->onDescriptorWriteRequest(Ljava/lang/String;IIIZZI[B)V

    .line 207
    .line 208
    .line 209
    return v10

    .line 210
    :pswitch_7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_3

    .line 234
    .line 235
    move v7, v10

    .line 236
    goto :goto_2

    .line 237
    :cond_3
    move v7, v2

    .line 238
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-eqz v0, :cond_4

    .line 243
    .line 244
    move v8, v10

    .line 245
    goto :goto_3

    .line 246
    :cond_4
    move v8, v2

    .line 247
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 248
    .line 249
    .line 250
    move-result v11

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 252
    .line 253
    .line 254
    move-result-object v12

    .line 255
    move-object v0, p0

    .line 256
    move-object v1, v3

    .line 257
    move v2, v4

    .line 258
    move v3, v5

    .line 259
    move v4, v6

    .line 260
    move v5, v7

    .line 261
    move v6, v8

    .line 262
    move v7, v11

    .line 263
    move-object v8, v12

    .line 264
    invoke-interface/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGattServerCallback;->onCharacteristicWriteRequest(Ljava/lang/String;IIIZZI[B)V

    .line 265
    .line 266
    .line 267
    return v10

    .line 268
    :pswitch_8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 276
    .line 277
    .line 278
    move-result v4

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    if-eqz v0, :cond_5

    .line 288
    .line 289
    move v6, v10

    .line 290
    goto :goto_4

    .line 291
    :cond_5
    move v6, v2

    .line 292
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 293
    .line 294
    .line 295
    move-result v7

    .line 296
    move-object v0, p0

    .line 297
    move-object v1, v3

    .line 298
    move v2, v4

    .line 299
    move v3, v5

    .line 300
    move v4, v6

    .line 301
    move v5, v7

    .line 302
    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGattServerCallback;->onDescriptorReadRequest(Ljava/lang/String;IIZI)V

    .line 303
    .line 304
    .line 305
    return v10

    .line 306
    :pswitch_9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-eqz v0, :cond_6

    .line 326
    .line 327
    move v6, v10

    .line 328
    goto :goto_5

    .line 329
    :cond_6
    move v6, v2

    .line 330
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 331
    .line 332
    .line 333
    move-result v7

    .line 334
    move-object v0, p0

    .line 335
    move-object v1, v3

    .line 336
    move v2, v4

    .line 337
    move v3, v5

    .line 338
    move v4, v6

    .line 339
    move v5, v7

    .line 340
    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGattServerCallback;->onCharacteristicReadRequest(Ljava/lang/String;IIZI)V

    .line 341
    .line 342
    .line 343
    return v10

    .line 344
    :pswitch_a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    if-eqz v2, :cond_7

    .line 356
    .line 357
    sget-object v2, Landroid/bluetooth/BluetoothGattService;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 358
    .line 359
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 364
    .line 365
    goto :goto_6

    .line 366
    :cond_7
    const/4 v1, 0x0

    .line 367
    :goto_6
    invoke-interface {p0, v0, v1}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V

    .line 368
    .line 369
    .line 370
    return v10

    .line 371
    :pswitch_b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 379
    .line 380
    .line 381
    move-result v3

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 383
    .line 384
    .line 385
    move-result v4

    .line 386
    if-eqz v4, :cond_8

    .line 387
    .line 388
    move v2, v10

    .line 389
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    invoke-interface {p0, v0, v3, v2, v1}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServerConnectionState(IIZLjava/lang/String;)V

    .line 394
    .line 395
    .line 396
    return v10

    .line 397
    :pswitch_c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 405
    .line 406
    .line 407
    move-result v1

    .line 408
    invoke-interface {p0, v0, v1}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServerRegistered(II)V

    .line 409
    .line 410
    .line 411
    return v10

    .line 412
    :cond_9
    move-object/from16 v0, p3

    .line 413
    .line 414
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    return v10

    .line 418
    nop

    .line 419
    :pswitch_data_0
    .packed-switch 0x1
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
