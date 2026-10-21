.class public abstract Landroid/bluetooth/IBluetoothGatt$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/IBluetoothGatt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGatt"

.field static final TRANSACTION_addService:I = 0x2f

.field static final TRANSACTION_beginReliableWrite:I = 0x24

.field static final TRANSACTION_clearServices:I = 0x31

.field static final TRANSACTION_clientConnect:I = 0x17

.field static final TRANSACTION_clientDisconnect:I = 0x18

.field static final TRANSACTION_clientReadPhy:I = 0x1a

.field static final TRANSACTION_clientSetPreferredPhy:I = 0x19

.field static final TRANSACTION_configureMTU:I = 0x27

.field static final TRANSACTION_connectionParameterUpdate:I = 0x28

.field static final TRANSACTION_disconnectAll:I = 0x34

.field static final TRANSACTION_discoverServiceByUuid:I = 0x1d

.field static final TRANSACTION_discoverServices:I = 0x1c

.field static final TRANSACTION_enableAdvertisingSet:I = 0xc

.field static final TRANSACTION_endReliableWrite:I = 0x25

.field static final TRANSACTION_flushPendingBatchResults:I = 0x8

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x1

.field static final TRANSACTION_getOwnAddress:I = 0xb

.field static final TRANSACTION_numHwTrackFiltersAvailable:I = 0x36

.field static final TRANSACTION_readCharacteristic:I = 0x1e

.field static final TRANSACTION_readDescriptor:I = 0x21

.field static final TRANSACTION_readRemoteRssi:I = 0x26

.field static final TRANSACTION_readUsingCharacteristicUuid:I = 0x1f

.field static final TRANSACTION_refreshDevice:I = 0x1b

.field static final TRANSACTION_registerClient:I = 0x15

.field static final TRANSACTION_registerForNotification:I = 0x23

.field static final TRANSACTION_registerScanner:I = 0x2

.field static final TRANSACTION_registerServer:I = 0x29

.field static final TRANSACTION_registerSync:I = 0x13

.field static final TRANSACTION_removeService:I = 0x30

.field static final TRANSACTION_sendNotification:I = 0x33

.field static final TRANSACTION_sendResponse:I = 0x32

.field static final TRANSACTION_serverConnect:I = 0x2b

.field static final TRANSACTION_serverDisconnect:I = 0x2c

.field static final TRANSACTION_serverReadPhy:I = 0x2e

.field static final TRANSACTION_serverSetPreferredPhy:I = 0x2d

.field static final TRANSACTION_setAdvertisingData:I = 0xd

.field static final TRANSACTION_setAdvertisingParameters:I = 0xf

.field static final TRANSACTION_setPeriodicAdvertisingData:I = 0x11

.field static final TRANSACTION_setPeriodicAdvertisingEnable:I = 0x12

.field static final TRANSACTION_setPeriodicAdvertisingParameters:I = 0x10

.field static final TRANSACTION_setScanResponseData:I = 0xe

.field static final TRANSACTION_startAdvertisingSet:I = 0x9

.field static final TRANSACTION_startScan:I = 0x4

.field static final TRANSACTION_startScanForIntent:I = 0x5

.field static final TRANSACTION_stopAdvertisingSet:I = 0xa

.field static final TRANSACTION_stopScan:I = 0x7

.field static final TRANSACTION_stopScanForIntent:I = 0x6

.field static final TRANSACTION_unregAll:I = 0x35

.field static final TRANSACTION_unregisterClient:I = 0x16

.field static final TRANSACTION_unregisterScanner:I = 0x3

.field static final TRANSACTION_unregisterServer:I = 0x2a

.field static final TRANSACTION_unregisterSync:I = 0x14

.field static final TRANSACTION_writeCharacteristic:I = 0x20

.field static final TRANSACTION_writeDescriptor:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.bluetooth.IBluetoothGatt"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;
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
    const-string v0, "android.bluetooth.IBluetoothGatt"

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
    instance-of v1, v0, Landroid/bluetooth/IBluetoothGatt;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/bluetooth/IBluetoothGatt;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 14

    .line 1
    move-object v9, p0

    .line 2
    move v0, p1

    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v10, p3

    .line 6
    .line 7
    const v2, 0x5f4e5446

    .line 8
    .line 9
    .line 10
    const-string v3, "android.bluetooth.IBluetoothGatt"

    .line 11
    .line 12
    const/4 v11, 0x1

    .line 13
    if-eq v0, v2, :cond_1d

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0

    .line 25
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Landroid/bluetooth/IBluetoothGatt;->numHwTrackFiltersAvailable()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    .line 37
    .line 38
    return v11

    .line 39
    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p0}, Landroid/bluetooth/IBluetoothGatt;->unregAll()V

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 46
    .line 47
    .line 48
    return v11

    .line 49
    :pswitch_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p0}, Landroid/bluetooth/IBluetoothGatt;->disconnectAll()V

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    .line 57
    .line 58
    return v11

    .line 59
    :pswitch_3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    .line 80
    move v6, v11

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    move v6, v2

    .line 83
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    move-object v0, p0

    .line 88
    move v1, v3

    .line 89
    move-object v2, v4

    .line 90
    move v3, v5

    .line 91
    move v4, v6

    .line 92
    move-object v5, v7

    .line 93
    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt;->sendNotification(ILjava/lang/String;IZ[B)V

    .line 94
    .line 95
    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    .line 98
    .line 99
    return v11

    .line 100
    :pswitch_4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    move-object v0, p0

    .line 128
    move v1, v2

    .line 129
    move-object v2, v3

    .line 130
    move v3, v4

    .line 131
    move v4, v5

    .line 132
    move v5, v6

    .line 133
    move-object v6, v7

    .line 134
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->sendResponse(ILjava/lang/String;III[B)V

    .line 135
    .line 136
    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    .line 139
    .line 140
    return v11

    .line 141
    :pswitch_5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-interface {p0, v0}, Landroid/bluetooth/IBluetoothGatt;->clearServices(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    .line 153
    .line 154
    return v11

    .line 155
    :pswitch_6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    invoke-interface {p0, v0, v1}, Landroid/bluetooth/IBluetoothGatt;->removeService(II)V

    .line 167
    .line 168
    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    .line 171
    .line 172
    return v11

    .line 173
    :pswitch_7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_1

    .line 185
    .line 186
    sget-object v2, Landroid/bluetooth/BluetoothGattService;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 187
    .line 188
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    move-object v4, v1

    .line 193
    check-cast v4, Landroid/bluetooth/BluetoothGattService;

    .line 194
    .line 195
    :cond_1
    invoke-interface {p0, v0, v4}, Landroid/bluetooth/IBluetoothGatt;->addService(ILandroid/bluetooth/BluetoothGattService;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    .line 200
    .line 201
    return v11

    .line 202
    :pswitch_8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-interface {p0, v0, v1}, Landroid/bluetooth/IBluetoothGatt;->serverReadPhy(ILjava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    .line 218
    .line 219
    return v11

    .line 220
    :pswitch_9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    move-object v0, p0

    .line 244
    move v1, v2

    .line 245
    move-object v2, v3

    .line 246
    move v3, v4

    .line 247
    move v4, v5

    .line 248
    move v5, v6

    .line 249
    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt;->serverSetPreferredPhy(ILjava/lang/String;III)V

    .line 250
    .line 251
    .line 252
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    .line 254
    .line 255
    return v11

    .line 256
    :pswitch_a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-interface {p0, v0, v1}, Landroid/bluetooth/IBluetoothGatt;->serverDisconnect(ILjava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    .line 272
    .line 273
    return v11

    .line 274
    :pswitch_b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    if-eqz v4, :cond_2

    .line 290
    .line 291
    move v2, v11

    .line 292
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    invoke-interface {p0, v0, v3, v2, v1}, Landroid/bluetooth/IBluetoothGatt;->serverConnect(ILjava/lang/String;ZI)V

    .line 297
    .line 298
    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    .line 301
    .line 302
    return v11

    .line 303
    :pswitch_c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    invoke-interface {p0, v0}, Landroid/bluetooth/IBluetoothGatt;->unregisterServer(I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    .line 315
    .line 316
    return v11

    .line 317
    :pswitch_d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-eqz v0, :cond_3

    .line 325
    .line 326
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 327
    .line 328
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    move-object v4, v0

    .line 333
    check-cast v4, Landroid/os/ParcelUuid;

    .line 334
    .line 335
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-static {v0}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattServerCallback;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-interface {p0, v4, v0}, Landroid/bluetooth/IBluetoothGatt;->registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    .line 348
    .line 349
    return v11

    .line 350
    :pswitch_e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    invoke-interface {p0, v0, v2, v1}, Landroid/bluetooth/IBluetoothGatt;->connectionParameterUpdate(ILjava/lang/String;I)V

    .line 366
    .line 367
    .line 368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    .line 370
    .line 371
    return v11

    .line 372
    :pswitch_f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    invoke-interface {p0, v0, v2, v1}, Landroid/bluetooth/IBluetoothGatt;->configureMTU(ILjava/lang/String;I)V

    .line 388
    .line 389
    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    .line 392
    .line 393
    return v11

    .line 394
    :pswitch_10
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    invoke-interface {p0, v0, v1}, Landroid/bluetooth/IBluetoothGatt;->readRemoteRssi(ILjava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    .line 410
    .line 411
    return v11

    .line 412
    :pswitch_11
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    if-eqz v1, :cond_4

    .line 428
    .line 429
    move v2, v11

    .line 430
    :cond_4
    invoke-interface {p0, v0, v3, v2}, Landroid/bluetooth/IBluetoothGatt;->endReliableWrite(ILjava/lang/String;Z)V

    .line 431
    .line 432
    .line 433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    .line 435
    .line 436
    return v11

    .line 437
    :pswitch_12
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-interface {p0, v0, v1}, Landroid/bluetooth/IBluetoothGatt;->beginReliableWrite(ILjava/lang/String;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    .line 453
    .line 454
    return v11

    .line 455
    :pswitch_13
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 459
    .line 460
    .line 461
    move-result v0

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 467
    .line 468
    .line 469
    move-result v4

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 471
    .line 472
    .line 473
    move-result v1

    .line 474
    if-eqz v1, :cond_5

    .line 475
    .line 476
    move v2, v11

    .line 477
    :cond_5
    invoke-interface {p0, v0, v3, v4, v2}, Landroid/bluetooth/IBluetoothGatt;->registerForNotification(ILjava/lang/String;IZ)V

    .line 478
    .line 479
    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    .line 482
    .line 483
    return v11

    .line 484
    :pswitch_14
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 488
    .line 489
    .line 490
    move-result v2

    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 496
    .line 497
    .line 498
    move-result v4

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 500
    .line 501
    .line 502
    move-result v5

    .line 503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 504
    .line 505
    .line 506
    move-result-object v6

    .line 507
    move-object v0, p0

    .line 508
    move v1, v2

    .line 509
    move-object v2, v3

    .line 510
    move v3, v4

    .line 511
    move v4, v5

    .line 512
    move-object v5, v6

    .line 513
    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt;->writeDescriptor(ILjava/lang/String;II[B)V

    .line 514
    .line 515
    .line 516
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    .line 518
    .line 519
    return v11

    .line 520
    :pswitch_15
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 524
    .line 525
    .line 526
    move-result v0

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 532
    .line 533
    .line 534
    move-result v3

    .line 535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 536
    .line 537
    .line 538
    move-result v1

    .line 539
    invoke-interface {p0, v0, v2, v3, v1}, Landroid/bluetooth/IBluetoothGatt;->readDescriptor(ILjava/lang/String;II)V

    .line 540
    .line 541
    .line 542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    .line 544
    .line 545
    return v11

    .line 546
    :pswitch_16
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 550
    .line 551
    .line 552
    move-result v2

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v3

    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 558
    .line 559
    .line 560
    move-result v4

    .line 561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 562
    .line 563
    .line 564
    move-result v5

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 566
    .line 567
    .line 568
    move-result v6

    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 570
    .line 571
    .line 572
    move-result-object v7

    .line 573
    move-object v0, p0

    .line 574
    move v1, v2

    .line 575
    move-object v2, v3

    .line 576
    move v3, v4

    .line 577
    move v4, v5

    .line 578
    move v5, v6

    .line 579
    move-object v6, v7

    .line 580
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->writeCharacteristic(ILjava/lang/String;III[B)V

    .line 581
    .line 582
    .line 583
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    .line 585
    .line 586
    return v11

    .line 587
    :pswitch_17
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 591
    .line 592
    .line 593
    move-result v2

    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v3

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 599
    .line 600
    .line 601
    move-result v0

    .line 602
    if-eqz v0, :cond_6

    .line 603
    .line 604
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 605
    .line 606
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    check-cast v0, Landroid/os/ParcelUuid;

    .line 611
    .line 612
    move-object v4, v0

    .line 613
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 614
    .line 615
    .line 616
    move-result v5

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 618
    .line 619
    .line 620
    move-result v6

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 622
    .line 623
    .line 624
    move-result v7

    .line 625
    move-object v0, p0

    .line 626
    move v1, v2

    .line 627
    move-object v2, v3

    .line 628
    move-object v3, v4

    .line 629
    move v4, v5

    .line 630
    move v5, v6

    .line 631
    move v6, v7

    .line 632
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->readUsingCharacteristicUuid(ILjava/lang/String;Landroid/os/ParcelUuid;III)V

    .line 633
    .line 634
    .line 635
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    .line 637
    .line 638
    return v11

    .line 639
    :pswitch_18
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 643
    .line 644
    .line 645
    move-result v0

    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v2

    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 651
    .line 652
    .line 653
    move-result v3

    .line 654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 655
    .line 656
    .line 657
    move-result v1

    .line 658
    invoke-interface {p0, v0, v2, v3, v1}, Landroid/bluetooth/IBluetoothGatt;->readCharacteristic(ILjava/lang/String;II)V

    .line 659
    .line 660
    .line 661
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    .line 663
    .line 664
    return v11

    .line 665
    :pswitch_19
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 669
    .line 670
    .line 671
    move-result v0

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v2

    .line 676
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 677
    .line 678
    .line 679
    move-result v3

    .line 680
    if-eqz v3, :cond_7

    .line 681
    .line 682
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 683
    .line 684
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v1

    .line 688
    move-object v4, v1

    .line 689
    check-cast v4, Landroid/os/ParcelUuid;

    .line 690
    .line 691
    :cond_7
    invoke-interface {p0, v0, v2, v4}, Landroid/bluetooth/IBluetoothGatt;->discoverServiceByUuid(ILjava/lang/String;Landroid/os/ParcelUuid;)V

    .line 692
    .line 693
    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    .line 696
    .line 697
    return v11

    .line 698
    :pswitch_1a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 702
    .line 703
    .line 704
    move-result v0

    .line 705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v1

    .line 709
    invoke-interface {p0, v0, v1}, Landroid/bluetooth/IBluetoothGatt;->discoverServices(ILjava/lang/String;)V

    .line 710
    .line 711
    .line 712
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    .line 714
    .line 715
    return v11

    .line 716
    :pswitch_1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 720
    .line 721
    .line 722
    move-result v0

    .line 723
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v1

    .line 727
    invoke-interface {p0, v0, v1}, Landroid/bluetooth/IBluetoothGatt;->refreshDevice(ILjava/lang/String;)V

    .line 728
    .line 729
    .line 730
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    .line 732
    .line 733
    return v11

    .line 734
    :pswitch_1c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 738
    .line 739
    .line 740
    move-result v0

    .line 741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    invoke-interface {p0, v0, v1}, Landroid/bluetooth/IBluetoothGatt;->clientReadPhy(ILjava/lang/String;)V

    .line 746
    .line 747
    .line 748
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    .line 750
    .line 751
    return v11

    .line 752
    :pswitch_1d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 756
    .line 757
    .line 758
    move-result v2

    .line 759
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v3

    .line 763
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 764
    .line 765
    .line 766
    move-result v4

    .line 767
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 768
    .line 769
    .line 770
    move-result v5

    .line 771
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 772
    .line 773
    .line 774
    move-result v6

    .line 775
    move-object v0, p0

    .line 776
    move v1, v2

    .line 777
    move-object v2, v3

    .line 778
    move v3, v4

    .line 779
    move v4, v5

    .line 780
    move v5, v6

    .line 781
    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt;->clientSetPreferredPhy(ILjava/lang/String;III)V

    .line 782
    .line 783
    .line 784
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    .line 786
    .line 787
    return v11

    .line 788
    :pswitch_1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    .line 790
    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 792
    .line 793
    .line 794
    move-result v0

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v1

    .line 799
    invoke-interface {p0, v0, v1}, Landroid/bluetooth/IBluetoothGatt;->clientDisconnect(ILjava/lang/String;)V

    .line 800
    .line 801
    .line 802
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    .line 804
    .line 805
    return v11

    .line 806
    :pswitch_1f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 810
    .line 811
    .line 812
    move-result v3

    .line 813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v4

    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 818
    .line 819
    .line 820
    move-result v0

    .line 821
    if-eqz v0, :cond_8

    .line 822
    .line 823
    move v5, v11

    .line 824
    goto :goto_1

    .line 825
    :cond_8
    move v5, v2

    .line 826
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 827
    .line 828
    .line 829
    move-result v6

    .line 830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 831
    .line 832
    .line 833
    move-result v0

    .line 834
    if-eqz v0, :cond_9

    .line 835
    .line 836
    move v7, v11

    .line 837
    goto :goto_2

    .line 838
    :cond_9
    move v7, v2

    .line 839
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 840
    .line 841
    .line 842
    move-result v8

    .line 843
    move-object v0, p0

    .line 844
    move v1, v3

    .line 845
    move-object v2, v4

    .line 846
    move v3, v5

    .line 847
    move v4, v6

    .line 848
    move v5, v7

    .line 849
    move v6, v8

    .line 850
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->clientConnect(ILjava/lang/String;ZIZI)V

    .line 851
    .line 852
    .line 853
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    .line 855
    .line 856
    return v11

    .line 857
    :pswitch_20
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    .line 859
    .line 860
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 861
    .line 862
    .line 863
    move-result v0

    .line 864
    invoke-interface {p0, v0}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V

    .line 865
    .line 866
    .line 867
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    .line 869
    .line 870
    return v11

    .line 871
    :pswitch_21
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    .line 873
    .line 874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 875
    .line 876
    .line 877
    move-result v0

    .line 878
    if-eqz v0, :cond_a

    .line 879
    .line 880
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 881
    .line 882
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    move-result-object v0

    .line 886
    move-object v4, v0

    .line 887
    check-cast v4, Landroid/os/ParcelUuid;

    .line 888
    .line 889
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 890
    .line 891
    .line 892
    move-result-object v0

    .line 893
    invoke-static {v0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    invoke-interface {p0, v4, v0}, Landroid/bluetooth/IBluetoothGatt;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V

    .line 898
    .line 899
    .line 900
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    .line 902
    .line 903
    return v11

    .line 904
    :pswitch_22
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    invoke-static {v0}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    invoke-interface {p0, v0}, Landroid/bluetooth/IBluetoothGatt;->unregisterSync(Landroid/bluetooth/le/IPeriodicAdvertisingCallback;)V

    .line 916
    .line 917
    .line 918
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    .line 920
    .line 921
    return v11

    .line 922
    :pswitch_23
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    .line 924
    .line 925
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 926
    .line 927
    .line 928
    move-result v0

    .line 929
    if-eqz v0, :cond_b

    .line 930
    .line 931
    sget-object v0, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 932
    .line 933
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 934
    .line 935
    .line 936
    move-result-object v0

    .line 937
    move-object v4, v0

    .line 938
    check-cast v4, Landroid/bluetooth/le/ScanResult;

    .line 939
    .line 940
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 941
    .line 942
    .line 943
    move-result v0

    .line 944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 945
    .line 946
    .line 947
    move-result v2

    .line 948
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 949
    .line 950
    .line 951
    move-result-object v1

    .line 952
    invoke-static {v1}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    .line 953
    .line 954
    .line 955
    move-result-object v1

    .line 956
    invoke-interface {p0, v4, v0, v2, v1}, Landroid/bluetooth/IBluetoothGatt;->registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;)V

    .line 957
    .line 958
    .line 959
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    .line 961
    .line 962
    return v11

    .line 963
    :pswitch_24
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 967
    .line 968
    .line 969
    move-result v0

    .line 970
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 971
    .line 972
    .line 973
    move-result v1

    .line 974
    if-eqz v1, :cond_c

    .line 975
    .line 976
    move v2, v11

    .line 977
    :cond_c
    invoke-interface {p0, v0, v2}, Landroid/bluetooth/IBluetoothGatt;->setPeriodicAdvertisingEnable(IZ)V

    .line 978
    .line 979
    .line 980
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    .line 982
    .line 983
    return v11

    .line 984
    :pswitch_25
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 985
    .line 986
    .line 987
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 988
    .line 989
    .line 990
    move-result v0

    .line 991
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 992
    .line 993
    .line 994
    move-result v2

    .line 995
    if-eqz v2, :cond_d

    .line 996
    .line 997
    sget-object v2, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 998
    .line 999
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v1

    .line 1003
    move-object v4, v1

    .line 1004
    check-cast v4, Landroid/bluetooth/le/AdvertiseData;

    .line 1005
    .line 1006
    :cond_d
    invoke-interface {p0, v0, v4}, Landroid/bluetooth/IBluetoothGatt;->setPeriodicAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    .line 1011
    .line 1012
    return v11

    .line 1013
    :pswitch_26
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1017
    .line 1018
    .line 1019
    move-result v0

    .line 1020
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1021
    .line 1022
    .line 1023
    move-result v2

    .line 1024
    if-eqz v2, :cond_e

    .line 1025
    .line 1026
    sget-object v2, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1027
    .line 1028
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v1

    .line 1032
    move-object v4, v1

    .line 1033
    check-cast v4, Landroid/bluetooth/le/PeriodicAdvertisingParameters;

    .line 1034
    .line 1035
    :cond_e
    invoke-interface {p0, v0, v4}, Landroid/bluetooth/IBluetoothGatt;->setPeriodicAdvertisingParameters(ILandroid/bluetooth/le/PeriodicAdvertisingParameters;)V

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1039
    .line 1040
    .line 1041
    return v11

    .line 1042
    :pswitch_27
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1046
    .line 1047
    .line 1048
    move-result v0

    .line 1049
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1050
    .line 1051
    .line 1052
    move-result v2

    .line 1053
    if-eqz v2, :cond_f

    .line 1054
    .line 1055
    sget-object v2, Landroid/bluetooth/le/AdvertisingSetParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1056
    .line 1057
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v1

    .line 1061
    move-object v4, v1

    .line 1062
    check-cast v4, Landroid/bluetooth/le/AdvertisingSetParameters;

    .line 1063
    .line 1064
    :cond_f
    invoke-interface {p0, v0, v4}, Landroid/bluetooth/IBluetoothGatt;->setAdvertisingParameters(ILandroid/bluetooth/le/AdvertisingSetParameters;)V

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    .line 1069
    .line 1070
    return v11

    .line 1071
    :pswitch_28
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1075
    .line 1076
    .line 1077
    move-result v0

    .line 1078
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1079
    .line 1080
    .line 1081
    move-result v2

    .line 1082
    if-eqz v2, :cond_10

    .line 1083
    .line 1084
    sget-object v2, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1085
    .line 1086
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v1

    .line 1090
    move-object v4, v1

    .line 1091
    check-cast v4, Landroid/bluetooth/le/AdvertiseData;

    .line 1092
    .line 1093
    :cond_10
    invoke-interface {p0, v0, v4}, Landroid/bluetooth/IBluetoothGatt;->setScanResponseData(ILandroid/bluetooth/le/AdvertiseData;)V

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    .line 1098
    .line 1099
    return v11

    .line 1100
    :pswitch_29
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    .line 1102
    .line 1103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1104
    .line 1105
    .line 1106
    move-result v0

    .line 1107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1108
    .line 1109
    .line 1110
    move-result v2

    .line 1111
    if-eqz v2, :cond_11

    .line 1112
    .line 1113
    sget-object v2, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1114
    .line 1115
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v1

    .line 1119
    move-object v4, v1

    .line 1120
    check-cast v4, Landroid/bluetooth/le/AdvertiseData;

    .line 1121
    .line 1122
    :cond_11
    invoke-interface {p0, v0, v4}, Landroid/bluetooth/IBluetoothGatt;->setAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    .line 1127
    .line 1128
    return v11

    .line 1129
    :pswitch_2a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1133
    .line 1134
    .line 1135
    move-result v0

    .line 1136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1137
    .line 1138
    .line 1139
    move-result v3

    .line 1140
    if-eqz v3, :cond_12

    .line 1141
    .line 1142
    move v2, v11

    .line 1143
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1144
    .line 1145
    .line 1146
    move-result v3

    .line 1147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1148
    .line 1149
    .line 1150
    move-result v1

    .line 1151
    invoke-interface {p0, v0, v2, v3, v1}, Landroid/bluetooth/IBluetoothGatt;->enableAdvertisingSet(IZII)V

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1155
    .line 1156
    .line 1157
    return v11

    .line 1158
    :pswitch_2b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1159
    .line 1160
    .line 1161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1162
    .line 1163
    .line 1164
    move-result v0

    .line 1165
    invoke-interface {p0, v0}, Landroid/bluetooth/IBluetoothGatt;->getOwnAddress(I)V

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1169
    .line 1170
    .line 1171
    return v11

    .line 1172
    :pswitch_2c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v0

    .line 1179
    invoke-static {v0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IAdvertisingSetCallback;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v0

    .line 1183
    invoke-interface {p0, v0}, Landroid/bluetooth/IBluetoothGatt;->stopAdvertisingSet(Landroid/bluetooth/le/IAdvertisingSetCallback;)V

    .line 1184
    .line 1185
    .line 1186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    .line 1188
    .line 1189
    return v11

    .line 1190
    :pswitch_2d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1194
    .line 1195
    .line 1196
    move-result v0

    .line 1197
    if-eqz v0, :cond_13

    .line 1198
    .line 1199
    sget-object v0, Landroid/bluetooth/le/AdvertisingSetParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1200
    .line 1201
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v0

    .line 1205
    check-cast v0, Landroid/bluetooth/le/AdvertisingSetParameters;

    .line 1206
    .line 1207
    move-object v2, v0

    .line 1208
    goto :goto_3

    .line 1209
    :cond_13
    move-object v2, v4

    .line 1210
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1211
    .line 1212
    .line 1213
    move-result v0

    .line 1214
    if-eqz v0, :cond_14

    .line 1215
    .line 1216
    sget-object v0, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1217
    .line 1218
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v0

    .line 1222
    check-cast v0, Landroid/bluetooth/le/AdvertiseData;

    .line 1223
    .line 1224
    move-object v3, v0

    .line 1225
    goto :goto_4

    .line 1226
    :cond_14
    move-object v3, v4

    .line 1227
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1228
    .line 1229
    .line 1230
    move-result v0

    .line 1231
    if-eqz v0, :cond_15

    .line 1232
    .line 1233
    sget-object v0, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1234
    .line 1235
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v0

    .line 1239
    check-cast v0, Landroid/bluetooth/le/AdvertiseData;

    .line 1240
    .line 1241
    move-object v5, v0

    .line 1242
    goto :goto_5

    .line 1243
    :cond_15
    move-object v5, v4

    .line 1244
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1245
    .line 1246
    .line 1247
    move-result v0

    .line 1248
    if-eqz v0, :cond_16

    .line 1249
    .line 1250
    sget-object v0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1251
    .line 1252
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v0

    .line 1256
    check-cast v0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;

    .line 1257
    .line 1258
    move-object v6, v0

    .line 1259
    goto :goto_6

    .line 1260
    :cond_16
    move-object v6, v4

    .line 1261
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1262
    .line 1263
    .line 1264
    move-result v0

    .line 1265
    if-eqz v0, :cond_17

    .line 1266
    .line 1267
    sget-object v0, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1268
    .line 1269
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v0

    .line 1273
    check-cast v0, Landroid/bluetooth/le/AdvertiseData;

    .line 1274
    .line 1275
    move-object v7, v0

    .line 1276
    goto :goto_7

    .line 1277
    :cond_17
    move-object v7, v4

    .line 1278
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1279
    .line 1280
    .line 1281
    move-result v8

    .line 1282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1283
    .line 1284
    .line 1285
    move-result v12

    .line 1286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v0

    .line 1290
    invoke-static {v0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IAdvertisingSetCallback;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v13

    .line 1294
    move-object v0, p0

    .line 1295
    move-object v1, v2

    .line 1296
    move-object v2, v3

    .line 1297
    move-object v3, v5

    .line 1298
    move-object v4, v6

    .line 1299
    move-object v5, v7

    .line 1300
    move v6, v8

    .line 1301
    move v7, v12

    .line 1302
    move-object v8, v13

    .line 1303
    invoke-interface/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGatt;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/IAdvertisingSetCallback;)V

    .line 1304
    .line 1305
    .line 1306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1307
    .line 1308
    .line 1309
    return v11

    .line 1310
    :pswitch_2e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1314
    .line 1315
    .line 1316
    move-result v0

    .line 1317
    invoke-interface {p0, v0}, Landroid/bluetooth/IBluetoothGatt;->flushPendingBatchResults(I)V

    .line 1318
    .line 1319
    .line 1320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1321
    .line 1322
    .line 1323
    return v11

    .line 1324
    :pswitch_2f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1328
    .line 1329
    .line 1330
    move-result v0

    .line 1331
    invoke-interface {p0, v0}, Landroid/bluetooth/IBluetoothGatt;->stopScan(I)V

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1335
    .line 1336
    .line 1337
    return v11

    .line 1338
    :pswitch_30
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1342
    .line 1343
    .line 1344
    move-result v0

    .line 1345
    if-eqz v0, :cond_18

    .line 1346
    .line 1347
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1348
    .line 1349
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v0

    .line 1353
    move-object v4, v0

    .line 1354
    check-cast v4, Landroid/app/PendingIntent;

    .line 1355
    .line 1356
    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v0

    .line 1360
    invoke-interface {p0, v4, v0}, Landroid/bluetooth/IBluetoothGatt;->stopScanForIntent(Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 1361
    .line 1362
    .line 1363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1364
    .line 1365
    .line 1366
    return v11

    .line 1367
    :pswitch_31
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1368
    .line 1369
    .line 1370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1371
    .line 1372
    .line 1373
    move-result v0

    .line 1374
    if-eqz v0, :cond_19

    .line 1375
    .line 1376
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1377
    .line 1378
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v0

    .line 1382
    check-cast v0, Landroid/app/PendingIntent;

    .line 1383
    .line 1384
    goto :goto_8

    .line 1385
    :cond_19
    move-object v0, v4

    .line 1386
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1387
    .line 1388
    .line 1389
    move-result v2

    .line 1390
    if-eqz v2, :cond_1a

    .line 1391
    .line 1392
    sget-object v2, Landroid/bluetooth/le/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1393
    .line 1394
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v2

    .line 1398
    move-object v4, v2

    .line 1399
    check-cast v4, Landroid/bluetooth/le/ScanSettings;

    .line 1400
    .line 1401
    :cond_1a
    sget-object v2, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1402
    .line 1403
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v2

    .line 1407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v1

    .line 1411
    invoke-interface {p0, v0, v4, v2, v1}, Landroid/bluetooth/IBluetoothGatt;->startScanForIntent(Landroid/app/PendingIntent;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/lang/String;)V

    .line 1412
    .line 1413
    .line 1414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1415
    .line 1416
    .line 1417
    return v11

    .line 1418
    :pswitch_32
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1419
    .line 1420
    .line 1421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1422
    .line 1423
    .line 1424
    move-result v2

    .line 1425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1426
    .line 1427
    .line 1428
    move-result v0

    .line 1429
    if-eqz v0, :cond_1b

    .line 1430
    .line 1431
    sget-object v0, Landroid/bluetooth/le/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1432
    .line 1433
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v0

    .line 1437
    check-cast v0, Landroid/bluetooth/le/ScanSettings;

    .line 1438
    .line 1439
    move-object v4, v0

    .line 1440
    :cond_1b
    sget-object v0, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1441
    .line 1442
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v3

    .line 1446
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v0

    .line 1450
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v0

    .line 1454
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v5

    .line 1458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v6

    .line 1462
    move-object v0, p0

    .line 1463
    move v1, v2

    .line 1464
    move-object v2, v4

    .line 1465
    move-object v4, v5

    .line 1466
    move-object v5, v6

    .line 1467
    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt;->startScan(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 1468
    .line 1469
    .line 1470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    .line 1472
    .line 1473
    return v11

    .line 1474
    :pswitch_33
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1475
    .line 1476
    .line 1477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1478
    .line 1479
    .line 1480
    move-result v0

    .line 1481
    invoke-interface {p0, v0}, Landroid/bluetooth/IBluetoothGatt;->unregisterScanner(I)V

    .line 1482
    .line 1483
    .line 1484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1485
    .line 1486
    .line 1487
    return v11

    .line 1488
    :pswitch_34
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1489
    .line 1490
    .line 1491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v0

    .line 1495
    invoke-static {v0}, Landroid/bluetooth/le/IScannerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IScannerCallback;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v0

    .line 1499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1500
    .line 1501
    .line 1502
    move-result v2

    .line 1503
    if-eqz v2, :cond_1c

    .line 1504
    .line 1505
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1506
    .line 1507
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v1

    .line 1511
    move-object v4, v1

    .line 1512
    check-cast v4, Landroid/os/WorkSource;

    .line 1513
    .line 1514
    :cond_1c
    invoke-interface {p0, v0, v4}, Landroid/bluetooth/IBluetoothGatt;->registerScanner(Landroid/bluetooth/le/IScannerCallback;Landroid/os/WorkSource;)V

    .line 1515
    .line 1516
    .line 1517
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1518
    .line 1519
    .line 1520
    return v11

    .line 1521
    :pswitch_35
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1522
    .line 1523
    .line 1524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 1525
    .line 1526
    .line 1527
    move-result-object v0

    .line 1528
    invoke-interface {p0, v0}, Landroid/bluetooth/IBluetoothGatt;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    .line 1529
    .line 1530
    .line 1531
    move-result-object v0

    .line 1532
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1533
    .line 1534
    .line 1535
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1536
    .line 1537
    .line 1538
    return v11

    .line 1539
    :cond_1d
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1540
    .line 1541
    .line 1542
    return v11

    .line 1543
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
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
